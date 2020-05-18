import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/ruq6QYnL5c52oYSXASCe/messages')
              .snapshots() //allows us to listen to a stream i.e. realtime added data
              .listen((data) {
            print(data);
          });
        },
      ),
    );
  }
}
