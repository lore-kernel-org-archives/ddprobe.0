Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2141519D898
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717657043; cv=none; b=GsG1DIepW4UrjeBxwfjmVeS87iTZzBtx9hT5bc9DpR1OKGW3Ae9X4Hs/eu5/7sSjS5dbDDnjJLocNfv1M40gTXPwZxyaKUL5Abb7f0ZXKztr2LcVwulJjQf5r6Fg40VSLHnb3VufhJIwHsQ4CTAVirA/miTL30a3Bgrg/yassek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717657043; c=relaxed/simple;
	bh=7L6uVnqhaMzFmU3/q3j9AQKyih32IOohUJO01ECl6OE=;
	h=To:Subject:From:Message-Id:Date; b=gfDuMfmrCVSv5Cm3m1vJ46ktrk5J5YyOTw9dccQqMYnJ7Lpdb96lnoQ/KnP+Nxv+5P51WuK8xf066Pnp8W+ilapLxiR7xiK6dott09wsvqBAg5HWDF+k1dThIwVf2DJOuzMyZxjO/c3XCyAe+OEeYPrPw3y6UGMInbOI9Ft+tB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvZuCDMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvZuCDMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD79C4AF0F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717657043;
	bh=7L6uVnqhaMzFmU3/q3j9AQKyih32IOohUJO01ECl6OE=;
	h=To:Subject:From:Date:From;
	b=RvZuCDMTfNLYR91u1B2JPMRl49YpRONivDwC/bUMLeuSVVOmsHKt79+9WFD0/D8rE
	 COmxVVpeLIGQT/djdEf0vEq5HV617C8WCpyuVvtbEc6TO071ydos2ywJM4u42AgcDD
	 ed8IG6ccyQAEAt9Uz2liKlnq1mR/13m/QanSm+Shh1vfv2wll3nc/UeBekGAjJ+gd+
	 bdhbw5k+RpRq6W4FbPoC5CEHXQ1dpI1NvKtrPXlAIaw3qwfVsUUEpvsQhlHF0t2Muv
	 h3rKqYEy5yCR1HGrV6hvm4g8pKzS7HcwHQbx24vTV9NAXpepBfWs0RFo97LltpOI72
	 qPUx9eOa9XMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF85EC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765704284.21060.17720460012489474250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627492017870db643c0d208e13543791b2763530a4c81ba964088446f73e7492
Date: Thu, 06 Jun 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717657042
