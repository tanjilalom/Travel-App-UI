import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/view/screen/popular_package_screen.dart';
import 'package:travelapp/view/screen/popular_places_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 44,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 0,
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/1.jpg',
                          fit: BoxFit.cover,
                          height: 35,
                          width: 35,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' Tanjil',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.bell),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Explore the       ',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontFamily: 'SF_UI_Display',
                      ),
                    ),
                    TextSpan(
                      text: 'Beautiful ',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF_UI_Display',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'world!',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                        fontFamily: 'SF_UI_Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Destination',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    //onTap: ()=> Get.to(PopularPackageScreen()),
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => PopularPlacesScreen(),
                        )),
                    child: Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 384,
              child: ListView.builder(
                //separatorBuilder: (BuildContext context, int index) => Divider(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 384,
                      width: 268,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                child: Image.asset('assets/1.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: Color(0xff7D848D),
                              ),
                              Text(
                                'Tekergat, Sunamgnj',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff7D848D),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
