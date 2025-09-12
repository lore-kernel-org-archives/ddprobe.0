Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC272FDC22
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757675994; cv=none; b=rsY7GNglAf3DGfTVfmY9KB7V9l3duteDlE+rgW/x5lRXIB9cw4JdyychiARasCjvPHC/AoVvaBsG6b22VlSgg/acUENjZ3CbZCX185v741GMe2Ahb9r7Op4Iz2iznCFtfojwpm02ZxETuUm0pDywD7onJGKwsfiMgtrP71HJEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757675994; c=relaxed/simple;
	bh=bqT1D3V2KjRtB0mgBTzw1cF4wwyMeOnWz2475zca45A=;
	h=To:Subject:From:Message-Id:Date; b=QI5mIXXl+jY9jqiQ/Ljv1ZQbR4P0v03YbapKc4u7yzY1kE174QHKw7Y/e4bJLM7csh00lzkXYXmR2IXsl8ACXEYwX2dojXG6E62ZRbuvO3PaStoFSYFYymPu+n5kLRPHw8QgCmDinnmXbk/K3f6Wy5LGr8DV/s2cCAKYQDy/NJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNwe2hH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNwe2hH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5476C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757675993;
	bh=bqT1D3V2KjRtB0mgBTzw1cF4wwyMeOnWz2475zca45A=;
	h=To:Subject:From:Date:From;
	b=LNwe2hH6BrPN6jDNMTCaHqyS+Li1JMEre5+XZ1+VE3EA/Lm6i0LWOLgZTy0AAeFEf
	 RH+u7Wm3WKzs8W82cToCm6ft7bqA99zlI/P5vPlQrAoXtJeI2YFg1PkI+7isc6qp9h
	 TV4peWq8wYPO0ZIDNzx/XBNcoQkc9dgNv+qvWVxRHX9ddqbw6FpiwFtbTFOIpkssoV
	 twlbZ4K48lsDQgYZSR04/Ut3eknJTfbv7gFG4NoOvY9IKKRtGijOWWJXNVWxd/qk/y
	 x8hRrRnvEylWFoC+O41H2Ep10mM1/fPQVYivW50Smz0c3Tao66Gc7w8YLu84925UDe
	 s7oq4L9ykLZHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91912CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767599358.2067.460603867064492460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf6a18e4f350067e96f69c99c7d79196447799563be40b24f124227f51d2679
Date: Fri, 12 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757675993
