import 'package:flutter/material.dart';
import '../models/model.dart';

class Demo extends StatefulWidget {
  final User user;
  Demo(this.user);
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  _alertDialog() {
    return showDialog(
        //barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              title: Text('LOGIN'),
              content: Text('${widget.user.message}'),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok'))
              ]);
        },
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: _alertDialog(),
      ),
    );
  }
}
