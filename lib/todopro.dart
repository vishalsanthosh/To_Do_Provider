import 'package:flutter/material.dart';

class ToDoProvider extends StatefulWidget {

  @override
  State<ToDoProvider> createState() => _ToDoProviderState();
}

class _ToDoProviderState extends State<ToDoProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO-DO using Provider"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter Task"),
          ),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: (){}, child: Text("ADD")),
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 15,
              
              itemBuilder:(context,index){
                return Container(
                  height: 60,
                  width: double.infinity,
                );
              }),
          )
        ],
      ),
    );
}}