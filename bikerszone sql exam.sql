-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 12:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerszone`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` bigint(20) NOT NULL,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `version_code`, `version_name`, `active`, `created_at`, `last_update`) VALUES
(1, 1, '1', 1, 1484386275760, 1485795959275),
(2, 2, '2', 1, 1485795799112, 1485795799112);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `brief` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`, `draft`, `brief`, `color`, `priority`, `created_at`, `last_update`) VALUES
(17, 'Grip', '1671184753099.png', 0, 'Handlebar grips for safety and confidence', '#4db151', 1, 1671184753099, 1672902521492),
(18, 'Helmets', '1671184915033.png', 0, 'Helmets For safety and Branded original helmets', '#4db151', 3, 1671184915033, 1672902491870),
(19, 'Mirrors', '1671185123999.png', 0, 'Motorcycle mirrors for functionality and looks', '#4db151', 3, 1671185123999, 1672902461647),
(20, 'paniers', '1671185175784.png', 0, 'lorem', '#4db151', 4, 1671185175784, 1671185175784),
(21, 'Exhaust', '1671185225448.png', 0, 'Motorcycle performance exhausts', '#4db151', 4, 1671185225448, 1672902428392),
(22, 'Air Filters', '1672903282391.png', 0, 'OEM air filters', '#4db151', 4, 1672903282391, 1672903282391);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `puser_id` int(11) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `comment_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `community_id`, `puser_id`, `comment`, `comment_date`) VALUES
(1, 0, NULL, '$comment', '2023-02-09'),
(2, 1, NULL, 'hsi', '2023-02-09'),
(3, 1, NULL, 'hi', '2023-02-09'),
(4, 1, NULL, 'hhh', '2023-02-10'),
(5, 2, NULL, 'hey', '2023-02-10'),
(6, 2, NULL, 'ourgege', '2023-02-10'),
(7, 2, NULL, 'hey', '2023-02-10'),
(8, 2, NULL, 'hello10', '2023-02-10'),
(9, 2, NULL, 'hello10', '2023-02-10'),
(10, 2, NULL, 'hello10', '2023-02-10'),
(11, 2, NULL, 'hello10', '2023-02-10'),
(12, 2, NULL, 'hello10', '2023-02-10'),
(13, 2, NULL, 'hello10', '2023-02-10'),
(14, 1, NULL, 'hello', '2023-02-10'),
(15, 1, NULL, 'hello pH pH', '2023-02-10'),
(16, 2, 8, 'qwerty', '2023-02-10'),
(17, 2, 8, 'hello', '2023-02-10'),
(18, 2, 6, 'hai', '2023-02-10'),
(19, 2, 6, 'this is working ', '2023-02-10'),
(20, 3, 11, 'its good ', '2023-02-25'),
(21, 3, 13, 'good bike', '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `community_id` int(11) NOT NULL,
  `puser_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`community_id`, `puser_id`, `name`, `image`, `desc`, `date`) VALUES
(3, 11, 'cb200x', 'uploads/Image_2023_02_25_07_21_19_pm.jpg', 'hows the bike', '2023-02-25'),
(4, 11, 'hello', 'uploads/Image_2023_03_02_07_38_01_am.jpg', 'hshhs', '2023-03-02'),
(5, 11, 'bike', 'uploads/Image_2023_03_02_07_40_01_am.jpg', 'nsush', '2023-03-02'),
(6, 11, 'phy', 'uploads/Image_2023_03_02_07_43_47_am.jpg', 'vdhsu', '2023-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `code` varchar(50) NOT NULL,
  `grouping` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`code`, `grouping`, `value`) VALUES
('EMAIL_ORDER', 'EMAIL', '{\"bcc_receiver\":[\"your-admin1@mail.com\",\"your-admin2@mail.com\"],\"notif_order\":true,\"notif_order_process\":true,\"reply_to\":\"markeet@mail.com\"}'),
('EMAIL_SMTP', 'EMAIL', '{\"email\":\"ubermiller@gmail.com\",\"password\":\"YourPassword\",\"host\":\"mail.your-domain.com\",\"port\":\"111\"}'),
('EMAIL_TEXT', 'EMAIL', '{\"subject_email_new_order\":\"Market New Order\",\"title_report_new_order\":\"Market New Order\",\"subject_email_order_processed\":\"Order PROCESSED\",\"title_report_order_processed\":\"Order Status Change to PROCESSED\",\"subject_email_order_updated\":\"Order Data Updated\",\"title_report_order_updated\":\"Order Data Updated\"}'),
('GENERAL', 'GENERAL', '{\"currency\":\"INR\",\"tax\":11,\"featured_news\":5}'),
('NOTIF_KEY', 'NOTIF', '{\"fcm_key\":\"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\",\"one_signal_appid\":\"XXXXXXXXXXXXXXXXXXXXXXX\",\"one_signal_rest_key\":\"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\"}'),
('NOTIF_TITLE', 'NOTIF', '{\"new_product\":\"New Product\",\"update_product\":\"Update Product\"}'),
('PAYMENT_BANK', 'PAYMENT', '{\"active\":true,\"instruction\":\"<div><b>INSTRUCTION :&nbsp;</b></div><ol><li>Pay an amount of <b>[@amount]</b> to one of our bank numbers, the difference in the amount will cause the order become fail or delay payment confirmation..</li><li>Write the order code <b>[@code]</b> on the pay reference.</li><li>Confirmation by send your&nbsp;<span style=\\\"\\\\&quot;color:\\\" rgb(77,=\\\"\\\" 81,=\\\"\\\" 86);=\\\"\\\" font-family:=\\\"\\\" arial,=\\\"\\\" sans-serif;\\\\\\\"=\\\"\\\">Payment Slip</span>&nbsp;to WhatsApp number&nbsp;<b>123456789</b>&nbsp;or email <b>sample@gmail.com</b></li><li>Your order will be processed and ship immediately.</li></ol><b>BANK ACCOUNT :</b><br><ul><li>BANK XXX : <b>1234567-23671-2367</b> name aExpress Admin</li><li>BANK YYY :&nbsp;<b><b>1234567</b>-23671-2367</b> name aExpress&nbsp;Admin</li></ul>\"}'),
('PAYMENT_PAYPAL', 'PAYMENT', '{\"active\":true,\"client_id\":\"YourPaypalClientId\",\"secret\":\"YourPaypalSecretId\",\"mode\":\"SANDBOX\"}'),
('PAYMENT_RAZORPAY', 'PAYMENT', '{\"active\":true,\"key_id\":\"rzp_test_wc24Nhpfn6vVML\",\"key_secret\":\"hBWwa5UrVIu2UeQgemaOg3Dv\"}');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `paypal` tinyint(1) NOT NULL,
  `razorpay` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `code`, `name`, `paypal`, `razorpay`) VALUES
(1, 'AFA', 'Afghanistan afghani', 0, 0),
(2, 'ALL', 'Albanian lek', 0, 1),
(3, 'DZD', 'Algerian dinar', 0, 1),
(4, 'AOR', 'Angolan kwanza reajustado', 0, 0),
(5, 'ARS', 'Argentine peso', 0, 1),
(6, 'AMD', 'Armenian dram', 0, 1),
(7, 'AWG', 'Aruban guilder', 0, 1),
(8, 'AUD', 'Australian dollar', 1, 1),
(9, 'AZN', 'Azerbaijanian new manat', 0, 0),
(10, 'BSD', 'Bahamian dollar', 0, 1),
(11, 'BHD', 'Bahraini dinar', 0, 0),
(12, 'BDT', 'Bangladeshi taka', 0, 1),
(13, 'BBD', 'Barbados dollar', 0, 1),
(14, 'BYN', 'Belarusian ruble', 0, 0),
(15, 'BZD', 'Belize dollar', 0, 1),
(16, 'BMD', 'Bermudian dollar', 0, 1),
(17, 'BTN', 'Bhutan ngultrum', 0, 0),
(18, 'BOB', 'Bolivian boliviano', 0, 1),
(19, 'BWP', 'Botswana pula', 0, 1),
(20, 'BRL', 'Brazilian real', 1, 0),
(21, 'GBP', 'British pound', 1, 1),
(22, 'BND', 'Brunei dollar', 0, 1),
(23, 'BGN', 'Bulgarian lev', 0, 0),
(24, 'BIF', 'Burundi franc', 0, 0),
(25, 'KHR', 'Cambodian riel', 0, 1),
(26, 'CAD', 'Canadian dollar', 1, 1),
(27, 'CVE', 'Cape Verde escudo', 0, 0),
(28, 'KYD', 'Cayman Islands dollar', 0, 1),
(29, 'XOF', 'CFA franc BCEAO', 0, 0),
(30, 'XAF', 'CFA franc BEAC', 0, 0),
(31, 'XPF', 'CFP franc', 0, 0),
(32, 'CLP', 'Chilean peso', 0, 0),
(33, 'CNY', 'Chinese yuan renminbi', 1, 1),
(34, 'COP', 'Colombian peso', 0, 1),
(35, 'KMF', 'Comoros franc', 0, 0),
(36, 'CDF', 'Congolese franc', 0, 0),
(37, 'CRC', 'Costa Rican colon', 0, 1),
(38, 'HRK', 'Croatian kuna', 0, 1),
(39, 'CUP', 'Cuban peso', 0, 1),
(40, 'CZK', 'Czech koruna', 1, 1),
(41, 'DKK', 'Danish krone', 1, 1),
(42, 'DJF', 'Djibouti franc', 0, 0),
(43, 'DOP', 'Dominican peso', 0, 1),
(44, 'XCD', 'East Caribbean dollar', 0, 0),
(45, 'EGP', 'Egyptian pound', 0, 1),
(46, 'SVC', 'El Salvador colon', 0, 1),
(47, 'ERN', 'Eritrean nakfa', 0, 0),
(48, 'EEK', 'Estonian kroon', 0, 0),
(49, 'ETB', 'Ethiopian birr', 0, 1),
(50, 'EUR', 'EU euro', 1, 1),
(51, 'FKP', 'Falkland Islands pound', 0, 0),
(52, 'FJD', 'Fiji dollar', 0, 1),
(53, 'GMD', 'Gambian dalasi', 0, 1),
(54, 'GEL', 'Georgian lari', 0, 0),
(55, 'GHS', 'Ghanaian new cedi', 0, 0),
(56, 'GIP', 'Gibraltar pound', 0, 1),
(57, 'XAU', 'Gold (ounce)', 0, 0),
(58, 'XFO', 'Gold franc', 0, 0),
(59, 'GTQ', 'Guatemalan quetzal', 0, 1),
(60, 'GNF', 'Guinean franc', 0, 0),
(61, 'GYD', 'Guyana dollar', 0, 1),
(62, 'HTG', 'Haitian gourde', 0, 1),
(63, 'HNL', 'Honduran lempira', 0, 1),
(64, 'HKD', 'Hong Kong SAR dollar', 1, 1),
(65, 'HUF', 'Hungarian forint', 1, 1),
(66, 'ISK', 'Icelandic krona', 0, 0),
(67, 'XDR', 'IMF special drawing right', 0, 0),
(68, 'INR', 'Indian rupee', 1, 1),
(69, 'IDR', 'Indonesian rupiah', 0, 1),
(70, 'IRR', 'Iranian rial', 0, 0),
(71, 'IQD', 'Iraqi dinar', 0, 0),
(72, 'ILS', 'Israeli new shekel', 1, 1),
(73, 'JMD', 'Jamaican dollar', 0, 1),
(74, 'JPY', 'Japanese yen', 1, 0),
(75, 'JOD', 'Jordanian dinar', 0, 0),
(76, 'KZT', 'Kazakh tenge', 0, 1),
(77, 'KES', 'Kenyan shilling', 0, 1),
(78, 'KWD', 'Kuwaiti dinar', 0, 0),
(79, 'KGS', 'Kyrgyz som', 0, 1),
(80, 'LAK', 'Lao kip', 0, 1),
(81, 'LVL', 'Latvian lats', 0, 0),
(82, 'LBP', 'Lebanese pound', 0, 1),
(83, 'LSL', 'Lesotho loti', 0, 1),
(84, 'LRD', 'Liberian dollar', 0, 1),
(85, 'LYD', 'Libyan dinar', 0, 0),
(86, 'LTL', 'Lithuanian litas', 0, 0),
(87, 'MOP', 'Macao SAR pataca', 0, 1),
(88, 'MKD', 'Macedonian denar', 0, 1),
(89, 'MGA', 'Malagasy ariary', 0, 0),
(90, 'MWK', 'Malawi kwacha', 0, 1),
(91, 'MYR', 'Malaysian ringgit', 1, 1),
(92, 'MVR', 'Maldivian rufiyaa', 0, 1),
(93, 'MRO', 'Mauritanian ouguiya', 0, 0),
(94, 'MUR', 'Mauritius rupee', 0, 1),
(95, 'MXN', 'Mexican peso', 1, 1),
(96, 'MDL', 'Moldovan leu', 0, 1),
(97, 'MNT', 'Mongolian tugrik', 0, 1),
(98, 'MAD', 'Moroccan dirham', 0, 1),
(99, 'MZN', 'Mozambique new metical', 0, 0),
(100, 'MMK', 'Myanmar kyat', 0, 1),
(101, 'NAD', 'Namibian dollar', 0, 0),
(102, 'NPR', 'Nepalese rupee', 0, 1),
(103, 'ANG', 'Netherlands Antillian guilder', 0, 0),
(104, 'NZD', 'New Zealand dollar', 1, 1),
(105, 'NIO', 'Nicaraguan cordoba oro', 0, 1),
(106, 'NGN', 'Nigerian naira', 0, 0),
(107, 'KPW', 'North Korean won', 0, 0),
(108, 'NOK', 'Norwegian krone', 1, 1),
(109, 'OMR', 'Omani rial', 0, 0),
(110, 'PKR', 'Pakistani rupee', 0, 1),
(111, 'XPD', 'Palladium (ounce)', 0, 0),
(112, 'PAB', 'Panamanian balboa', 0, 0),
(113, 'PGK', 'Papua New Guinea kina', 0, 1),
(114, 'PYG', 'Paraguayan guarani', 0, 0),
(115, 'PEN', 'Peruvian nuevo sol', 0, 1),
(116, 'PHP', 'Philippine peso', 1, 1),
(117, 'XPT', 'Platinum (ounce)', 0, 0),
(118, 'PLN', 'Polish zloty', 1, 0),
(119, 'QAR', 'Qatari rial', 0, 1),
(120, 'RON', 'Romanian new leu', 0, 0),
(121, 'RUB', 'Russian ruble', 1, 1),
(122, 'RWF', 'Rwandan franc', 0, 0),
(123, 'SHP', 'Saint Helena pound', 0, 0),
(124, 'WST', 'Samoan tala', 0, 0),
(125, 'STD', 'Sao Tome and Principe dobra', 0, 0),
(126, 'SAR', 'Saudi riyal', 0, 1),
(127, 'RSD', 'Serbian dinar', 0, 0),
(128, 'SCR', 'Seychelles rupee', 0, 1),
(129, 'SLL', 'Sierra Leone leone', 0, 1),
(130, 'XAG', 'Silver (ounce)', 0, 0),
(131, 'SGD', 'Singapore dollar', 1, 1),
(132, 'SBD', 'Solomon Islands dollar', 0, 0),
(133, 'SOS', 'Somali shilling', 0, 1),
(134, 'ZAR', 'South African rand', 0, 1),
(135, 'KRW', 'South Korean won', 0, 0),
(136, 'LKR', 'Sri Lanka rupee', 0, 1),
(137, 'SDG', 'Sudanese pound', 0, 0),
(138, 'SRD', 'Suriname dollar', 0, 0),
(139, 'SZL', 'Swaziland lilangeni', 0, 1),
(140, 'SEK', 'Swedish krona', 1, 1),
(141, 'CHF', 'Swiss franc', 1, 1),
(142, 'SYP', 'Syrian pound', 0, 0),
(143, 'TWD', 'Taiwan New dollar', 1, 0),
(144, 'TJS', 'Tajik somoni', 0, 0),
(145, 'TZS', 'Tanzanian shilling', 0, 1),
(146, 'THB', 'Thai baht', 1, 1),
(147, 'TOP', 'Tongan paanga', 0, 0),
(148, 'TTD', 'Trinidad and Tobago dollar', 0, 1),
(149, 'TND', 'Tunisian dinar', 0, 0),
(150, 'TRY', 'Turkish lira', 0, 0),
(151, 'TMT', 'Turkmen new manat', 0, 0),
(152, 'AED', 'UAE dirham', 0, 0),
(153, 'UGX', 'Uganda new shilling', 0, 0),
(154, 'XFU', 'UIC franc', 0, 0),
(155, 'UAH', 'Ukrainian hryvnia', 0, 0),
(156, 'UYU', 'Uruguayan peso uruguayo', 0, 1),
(157, 'USD', 'US dollar', 1, 1),
(158, 'UZS', 'Uzbekistani sum', 0, 1),
(159, 'VUV', 'Vanuatu vatu', 0, 0),
(160, 'VEF', 'Venezuelan bolivar fuerte', 0, 0),
(161, 'VND', 'Vietnamese dong', 0, 0),
(162, 'YER', 'Yemeni rial', 0, 1),
(163, 'ZMK', 'Zambian kwacha', 0, 0),
(164, 'ZWL', 'Zimbabwe dollar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fcm`
--

CREATE TABLE `fcm` (
  `id` bigint(20) NOT NULL,
  `device` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `serial` varchar(100) NOT NULL,
  `regid` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fcm`
--

INSERT INTO `fcm` (`id`, `device`, `os_version`, `app_version`, `serial`, `regid`, `created_at`, `last_update`) VALUES
(4, 'Device Name', '6.0.1', '1.0', 'GGC00C0888E426A', 'APA91bEj7qmlVePXUpG4UjKOtyqG5x9hpeZ4tMhPDsJgDRWL76psPGtckLK3uMtmpLFj3RSFfgaVoBMCKhg5iR8RnPZPjeuml8Llgkc', 0, 0),
(7, 'sadasd', '1', '1', 'sad', 'sadasd', 1645142830603, 1645142830603);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginId`, `username`, `password`) VALUES
(1, 'user', 'user'),
(2, 'uber', '12345678'),
(3, 'admin', '1234567890'),
(4, 'san', 'san'),
(5, 'ss', 'ss'),
(6, 'arun', 'admin'),
(7, 'vinay', 'qwerty'),
(8, 'rosh', 'qwerty'),
(9, 'admin', 'admin'),
(10, 'uber', '1234'),
(11, 'arun kumar', 'arun123'),
(12, 'uber1', 'zxcvbnm'),
(13, 'arun1', '0plm'),
(14, 'aman', 'aman1234'),
(15, 'santosh', 'qwertyuiop'),
(16, 'deena', 'deena');

-- --------------------------------------------------------

--
-- Table structure for table `news_info`
--

CREATE TABLE `news_info` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `brief_content` varchar(200) NOT NULL,
  `full_content` text NOT NULL,
  `image` varchar(110) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_info`
--

INSERT INTO `news_info` (`id`, `title`, `brief_content`, `full_content`, `image`, `draft`, `status`, `created_at`, `last_update`) VALUES
(1, 'Available Best Interior Stuff, Browse and Discover Now for Your Room.', 'Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in.', '<div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div><div><br></div><div>Sed viverra arcu in neque pulvinar dignissim. Nunc euismod aliquam magna, non efficitur lectus vehicula quis. Suspendisse vitae consequat arcu, eget malesuada dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis imperdiet libero. Donec imperdiet quis lectus vitae dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar pretium ipsum, et faucibus libero aliquet et. Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in. Cras bibendum eros vitae lacus efficitur, vel pretium est rutrum.</div><div><br></div><div>Praesent id efficitur risus. Nullam dui ligula, eleifend in convallis at, porta vitae massa. Curabitur sapien lorem, congue non enim non, rutrum gravida ipsum. Duis dignissim sapien in sem finibus ultrices id nec justo. Nulla hendrerit sed eros ac rhoncus. Nullam varius tellus id venenatis cursus. Cras commodo metus mauris, eget posuere sapien blandit non. Aenean fermentum ligula a libero suscipit dictum. Nulla dictum odio ut vulputate aliquam. Suspendisse potenti. Cras pellentesque vel felis sed dignissim. Proin aliquet orci tincidunt dui convallis, facilisis accumsan urna semper.</div>', 'Available Best Interior Stuff Browse and Discover Now for Your Room.jpg', 0, 'FEATURED', 1482250793274, 1651891784293),
(2, 'We Join Smartphone Fair  in Washington, D.C. April 7-8, 2017. Visit and Purchase our Product.', 'Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis. Proin sit amet mollis nisl.', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque urna ut metus sagittis, vel congue lorem iaculis. Sed hendrerit mauris id tempor faucibus. In facilisis nibh vulputate ante porttitor, et venenatis arcu placerat. Vestibulum tempor nisi enim, eget consectetur ex accumsan fermentum. Mauris ipsum lacus, imperdiet eget purus vel, convallis euismod augue. In sed fringilla sem. Aenean ultricies ullamcorper euismod.</div><div><br></div><div>Cras non nunc est. Nunc quis dapibus lorem. Proin dignissim interdum interdum. In vitae aliquet odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non venenatis nunc, id molestie velit. Vestibulum sagittis dui at nibh lacinia faucibus. Curabitur auctor sem diam. Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis.</div><div><br></div><div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div>', 'We Join Smartphone Fair  in Washington DC April 78 2017 Visit and Purchase our Product.jpg', 0, 'FEATURED', 1485793148268, 1651891897694);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(110) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_discount` double NOT NULL DEFAULT 0,
  `stock` int(10) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `price_discount`, `stock`, `draft`, `description`, `status`, `created_at`, `last_update`) VALUES
(141, 'helmet', '1671185312856.png', '1200.00', 10, 50, 0, 'mt helmet', 'READY STOCK', 1671185312856, 1671185312856),
(142, 'K&N RC 1060', '1672903331320.png', '9590.00', 0, 8, 0, 'K&amp;N RC 1060', 'READY STOCK', 1672903331320, 1672903331320),
(143, 'Akra Full Carbon Shield', '1672903406906.png', '10499.00', 2000, 15, 0, 'Clone for every bike', 'READY STOCK', 1672903406906, 1672903406906),
(144, 'LCB airfield small mart for RE 350, RE 500, Thunderbird, Hunter 350', '1672903500555.png', '4900.00', 700, 5, 0, 'loud exhaust', 'READY STOCK', 1672903500555, 1672903500555),
(145, 'GT mirror Oval', '1672903617721.png', '899.00', 300, 50, 0, 'oval bar end mirror', 'READY STOCK', 1672903617721, 1672903617721),
(146, 'Domino Grip', '1672905131252.png', '399.00', 0, 31, 0, 'domino grip', 'READY STOCK', 1672905131252, 1672905131252),
(147, 'santhosh helmet', '1677649877799.png', '4000.00', 500, 50, 0, 'santhosh high quality helmets', 'READY STOCK', 1677649877799, 1677649877799);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(141, 18),
(142, 22),
(143, 21),
(144, 21),
(145, 19),
(146, 17),
(147, 18);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_id`, `name`) VALUES
(142, '0_1672903391685.png'),
(143, '0_1672903492699.png'),
(144, '0_1672903594494.png'),
(146, '0_1672905413216.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping` varchar(20) NOT NULL,
  `shipping_location` varchar(50) NOT NULL,
  `shipping_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `date_ship` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_data` text NOT NULL,
  `total_fees` decimal(12,2) NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `code`, `buyer`, `address`, `email`, `shipping`, `shipping_location`, `shipping_rate`, `date_ship`, `phone`, `comment`, `status`, `payment`, `payment_status`, `payment_data`, `total_fees`, `tax`, `serial`, `created_at`, `last_update`) VALUES
(3, 'DN83125YJ', 'asad', 'sadsdasd', 'asad@asad.c', 'Economy', 'New York, US', '0.00', 1652809196840, '3234234', '', 'WAITING', '', '', '', '48.84', '11.00', 'cab8c1a4e4421a3b', 1652117984028, 1652117984028),
(4, 'DT01761EK', 'asad', 'sadsdasd', 'asad@asad.c', '', '', '0.00', 1652809196840, '3234234', '', 'WAITING', '', '', '', '48.84', '11.00', 'cab8c1a4e4421a3b', 1652117984028, 1652117984028),
(6, 'GI80721WN', 'asad', 'sadsdasd', 'asad@asad.c', '', '', '0.00', 1652809196840, '3234234', '', 'WAITING', '', '', '', '48.84', '11.00', 'cab8c1a4e4421a3b', 1652117984028, 1652117984028),
(7, 'JH52666FC', 'asad', 'sadsdasd', 'asad@asad.c', '', '', '0.00', 1652809196840, '3234234', '', 'WAITING', '', '', '', '48.84', '11.00', 'cab8c1a4e4421a3b', 1652117984028, 1652117984028),
(8, 'NF76053YC', 'asad', 'sadsdasd', 'asad@asad.c', '', '', '0.00', 1652809196840, '3234234', '', 'WAITING', '', '', '', '48.84', '11.00', 'cab8c1a4e4421a3b', 1652117984028, 1652117984028),
(16, 'DR20169DB', 'uber miller', 'nilavareth House azad road ', 'ubermiller2002@gmail.com', '', '', '0.00', 1672903978962, '9446368645', 'nil', 'WAITING', 'RAZORPAY', '', 'order_L0PmBmHjpBXFHR', '11653.89', '11.00', 'cab8c1a4e4421a3b', 1672903978962, 1672903978962),
(17, 'BK22726TO', 'uber', 'home', 'ubermiller2002@gmail.com', '', '', '0.00', 1676013235628, '9074540164', 'nil', 'WAITING', 'RAZORPAY', '', 'order_LEegEqXykyA2Az', '997.89', '11.00', 'cab8c1a4e4421a3b', 1676013235628, 1676013235628),
(18, 'NN31669DD', 'uber miller', 'asdf', 'ubermiller2002@gmail.com', '', '', '0.00', 1677649979913, '9446368645', '6/10/02', 'WAITING', 'BANK', '', 'BANK', '442.89', '11.00', 'cab8c1a4e4421a3b', 1677649979913, 1677649979913);

-- --------------------------------------------------------

--
-- Table structure for table `product_order_detail`
--

CREATE TABLE `product_order_detail` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_item` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order_detail`
--

INSERT INTO `product_order_detail` (`id`, `order_id`, `product_id`, `product_name`, `amount`, `price_item`, `created_at`, `last_update`) VALUES
(3, 3, 125, 'sdasd', 1, '22.00', 1652118120425, 1652118120425),
(4, 4, 125, 'sdasd', 1, '22.00', 1652118183106, 1652118183106),
(6, 6, 125, 'sdasd', 1, '22.00', 1652182988154, 1652182988154),
(7, 7, 125, 'sdasd', 1, '22.00', 1652188220908, 1652188220908),
(8, 8, 125, 'sdasd', 1, '22.00', 1652188248247, 1652188248247),
(16, 16, 143, 'Akra Full Carbon Shield', 1, '10499.00', 1672903977364, 1672903977365),
(17, 17, 145, 'GT mirror Oval', 1, '899.00', 1676013235008, 1676013235008),
(18, 18, 146, 'Domino Grip', 1, '399.00', 1677649981377, 1677649981377);

-- --------------------------------------------------------

--
-- Table structure for table `publicuser`
--

CREATE TABLE `publicuser` (
  `puser_id` int(11) NOT NULL,
  `loginId` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicuser`
--

INSERT INTO `publicuser` (`puser_id`, `loginId`, `email`) VALUES
(1, 1, 'ubermiller2002@gmail.com'),
(2, 1, 'admin@gmail.com'),
(3, 1, 'kidyt001@gmail.com'),
(4, 5, 'sankusanku003@gmail.com'),
(5, 6, 'admin@gmail.com'),
(6, 7, 'admin@gmail.com'),
(7, 8, 'admvvin@gmail.com'),
(8, 9, 'hai@gmail.com'),
(9, 10, 'uber@gmail.com'),
(10, 11, 'arunkumar@gmail.com'),
(11, 12, 'uber1@gmail.com'),
(12, 13, 'arun1@gmail.com'),
(13, 14, 'aman@gmail.com'),
(14, 15, 'santosh@gmail.com'),
(15, 16, 'deena@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `location_id` varchar(50) NOT NULL,
  `rate_economy` decimal(12,2) NOT NULL,
  `rate_regular` decimal(12,2) NOT NULL,
  `rate_express` decimal(12,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `active_eco` tinyint(1) NOT NULL,
  `active_reg` tinyint(1) NOT NULL,
  `active_exp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `location`, `location_id`, `rate_economy`, `rate_regular`, `rate_express`, `active`, `active_eco`, `active_reg`, `active_exp`) VALUES
(101, 'California, US', '', '5.00', '10.00', '20.00', 1, 1, 1, 1),
(102, 'Kansas, US', '', '5.00', '10.00', '20.00', 1, 1, 1, 1),
(103, 'Louisiana, US', '', '5.00', '10.00', '20.00', 1, 1, 1, 1),
(104, 'Michigan, US', '', '5.00', '10.00', '20.00', 1, 1, 1, 1),
(105, 'New York, US', '', '5.00', '10.00', '20.00', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Uber Miller', 'admin', 'ubermiller2002@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`community_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm`
--
ALTER TABLE `fcm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginId`);

--
-- Indexes for table `news_info`
--
ALTER TABLE `news_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_unique_name` (`name`);
ALTER TABLE `product` ADD FULLTEXT KEY `product_fulltext` (`name`,`description`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `fk_product_category_1` (`product_id`),
  ADD KEY `fk_product_category_2` (`category_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD KEY `fk_table_images` (`product_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_table_orders_item` (`order_id`);

--
-- Indexes for table `publicuser`
--
ALTER TABLE `publicuser`
  ADD PRIMARY KEY (`puser_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `fcm`
--
ALTER TABLE `fcm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news_info`
--
ALTER TABLE `news_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `publicuser`
--
ALTER TABLE `publicuser`
  MODIFY `puser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_product_category_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_category_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_table_images` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  ADD CONSTRAINT `fk_table_orders_item` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
