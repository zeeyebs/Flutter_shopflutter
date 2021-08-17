import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import '../../../constants.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: SizedBox(
      height: size.height,
      child: Stack(
        children: <Widget>[
          ProductTitleWithImage(product: product),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.38),
            padding: EdgeInsets.only(
              top: size.height * 0.08,
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            // height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                ColorAndSize(product: product!),
                SizedBox(height: kDefaultPaddin / 2),
                Description(product: product!),
                SizedBox(height: kDefaultPaddin / 2),
                CounterWithFavBtn(),
                SizedBox(height: kDefaultPaddin / 2),
                AddToCart(product: product!)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}