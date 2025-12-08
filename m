Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C3236454
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765220574; cv=none; b=EhUHh/ohl1tEtuD8PrBZTVSmhB1+Ng7ier52q7MKpJJU44mZGp5WaFUiijnYTrqlZJPF4YBDmznEXpIhr9OqQuM0RkasR6zU4seq8fqnSlJtI56VjPUIByuWYg8FPcOU7FXSJh+zcj3yCLARLU4K0aQWpUKjv5vr+odfgP5rTVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765220574; c=relaxed/simple;
	bh=6i3ohaQbuWTCYzaWTEoNIpMCx2McllRnTRHCf1farr8=;
	h=To:Subject:From:Message-Id:Date; b=Sjl6JyjeNjdRsQtD7m6r50z7jW1ZOBHTKhZyf+NGjttA9Z/jQnj3Fxni6WLFAfJ1eyXi1QFBXMxr2zvUIxB2WQY3BnLD3y/+po2ecmpXvINL1BRxcnVY+ZGV2rMRH2QUqIECPrStpNLDC7J5GlKeFuYLlfdDuRVpDWg2U8MUUWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orVmACve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orVmACve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DD5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765220573;
	bh=6i3ohaQbuWTCYzaWTEoNIpMCx2McllRnTRHCf1farr8=;
	h=To:Subject:From:Date:From;
	b=orVmACveKYly3NPp+u9lhfzyJktKyrRXwnJCMAq4OC5XzZWNtATcnN6vflWVAh7Ze
	 5m/3n7pfohcDx2CgnXXuaWfyVIMPHdKOWHYi1GUZbDM4E+ZaiTFo8fQ3XlfP2nsLhV
	 V7RYl+zeNd5vlYBYtzkdUqUpncRSAdtHsfszkU8UWCEOj85CjXM5LURkuH2XRs0nhN
	 hkQVQdF1qCi/bONhmso7k4D0j9CdtPozipRQIHKrYCTZNitWcwh6hjyFlza0euT+ak
	 juUcTO4xCqhTdSUKqJPHJ8gL5ttmL3bJ4+w79Q34E7xndD8h8vc85GBudd313urzdN
	 xt+Qh1Phhrn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4D7D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522057362.11413.14490595153750354714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7840545884e0a61438a49dfefcc002a7a12dbc6142c6cd084423c4eedba1bc74
Date: Mon, 08 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765220573
