import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class MyApp extends StatefulWidget {
  String name;
  MyApp({
    this.name,
});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

          body: Column(
            children: [
              Expanded(
                  child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: widget.name))
            ],
          ));
  }
}

