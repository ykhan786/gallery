// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';


// BEGIN snackbarsDemo

class SnackbarsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Snackbars'),
      ),
      body: Builder(
        // Create an inner BuildContext so that the snackBar onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        builder: (context) {
          return Center(
            child: RaisedButton(
              child: Text(
                  'SHOW A SNACKBAR'),
              onPressed: () {
                Scaffold.of(context).hideCurrentSnackBar();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'This is a snackbar',
                  ),
                  action: SnackBarAction(
                    label: GalleryLocalizations.of(context)
                        .demoSnackbarsActionButtonLabel,
                    onPressed: () {
                      Scaffold.of(context).hideCurrentSnackBar();
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'You pressed the snackbar action',
                        ),
                      ));
                    },
                  ),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

// END
void main() {
	runApp(
		MaterialApp(
			debugShowCheckedModeBanner: false,
			home: SnackbarsDemo(),
		),
	);
}