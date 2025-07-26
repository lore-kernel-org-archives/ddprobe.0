Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC238D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753498794; cv=none; b=oEWi5gGJAZEIT0nq5EQXcsjDV3hX2J3LSTQ7lIh1jmXyuWRxzr8ZUlRAW11Iug1WjGoigtmG2+gWeLUVz1qYd1Opztci8SmvuUAEdS+hMdaYuCxIA8jqqknEq7/hYSP75dRbDTlaNH3E2tDzeZoO+QfDXBO+8XALMOLqX9EOtno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753498794; c=relaxed/simple;
	bh=RuY2FyZPSFY48xOgFTUTVLISAN1TV770uq1eG/vnSSQ=;
	h=To:Subject:From:Message-Id:Date; b=NS1DHBtYQUmVKJcBG05j/kzVhOGmrLDitbl4pWvj0PY5spZNsWvlP0uVqgm189qjRvyQflZYspjq7QG94iBYk2WhkHB1Cp0M3tkrq15G8tKbKI4aStklUHXv6OaMBO/zCXmae19Hd6wZOcp7AwZoMRfZ37+r5HORZr/m/wbTaVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joUkjg8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joUkjg8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753498793;
	bh=RuY2FyZPSFY48xOgFTUTVLISAN1TV770uq1eG/vnSSQ=;
	h=To:Subject:From:Date:From;
	b=joUkjg8lU0Dcv7daJv+dMmu6+QEogOKJreVaUcbVF02V58anC2Eyet6mAxhSdc5m5
	 U+rTNFBfv3DLgbGdSVDikFvymuN8EMA8h7yHPMnKTf1FkWOsKehWxs8nXXNzhfQxNj
	 MHpVPQcvjp4KmqRMLRUMHq7TuR5MkCBAAkWPqm+LHuon2hUssXnqVoRuVDPjcqU9Aa
	 kIHjP4HooZjFPKarniRn87aeSRgofEFGbpmTkRZXvG4ydWUg/mQ1xqw//Xm+WxiD5s
	 5Wv7lr/gH7P4GmmV4+wmaqXwu2x6jCKtTjl/4UKx+cGXHZJqSjMzTNmBYCgUFEWsNC
	 4qyBLYbOoJisA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4DC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349879358.2427.2135696899085133933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20628efbcc4b45809487d23346ab1c95a2a5420f6701cf05e38f4a5ab35e58db
Date: Sat, 26 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753498793
