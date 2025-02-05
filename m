Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4FFDF71
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738769154; cv=none; b=nFBrmd0iOgtgwq36HruMn6IKASO2p98FEIvOOVX3LWb4JkUXf2Ozg6VjUuVf6j7xeQIJ7rN6geLNeHcAS2T9TBuePsUqzrTZZj4JAJr4srraiUL0AEm1x6tOGd6xn6GZVubMyFXj6uBcEwBHIDptYKZIzcJfBXsgAME+NlHnm/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738769154; c=relaxed/simple;
	bh=ExVzbyryVMaX0d1upRvgBbW1pJHO4HYbTdyl3ohSFQo=;
	h=To:Subject:From:Message-Id:Date; b=EiGcmknrkV8/LjBsiFvMYknZBtwJhmkCzvX80Jjnxfw+kokszKFG40D1M52FUaOAzj10tGSVzFCtnzSOZ7QLAwfAIO+4cOzaSF3Z5f/MvmU/NaoQHHY2XX/8hY+8vhVebG83/2UUHD7ZXxN6cOSwJaK5yFOUx6JSU6mwBnhqy7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdgdKM1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdgdKM1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B346AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738769153;
	bh=ExVzbyryVMaX0d1upRvgBbW1pJHO4HYbTdyl3ohSFQo=;
	h=To:Subject:From:Date:From;
	b=qdgdKM1HBV2qxpnKwc9yPhhXpcn2PaKJMk4lYNPll78s0FjddG7ipgBpQ6IeYCczE
	 PCl8F6fy1yyP5pwFSoqqBtWq0xeOJCEO1VYIAQCIqnTrf/7h6XFJieeTXQt2n0qIU4
	 Z6ZEH6djAdJtemPDK8sZe1fByFvtCP/rd8mxzFMAd4zhwczXiAD/r7+GIAPME1EpPl
	 vagObQ552r19DaAxjujuRwG6BALX7n7hcY5N878kdmMyTc+gey91P2i2ljeNsGCKmK
	 6UHJUX0bGaOf6DWpgu7ppGbYZJ3ADc3waeOedo1bXsrTshJvgA7rM25LrlXWUd/GR1
	 Tn36n5sqA6aiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688EC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876915360.4671.5059395432957918057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f7a2ca8e63fab03b75086c96e2e707f9089c0f8fced9089263f541ff8a956b
Date: Wed, 05 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738769153
