Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C17B339A8
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753631994; cv=none; b=hrF7SvA1cymBjUvt/rt/yZWkRcQO8P7/7zhKIENJ8lVS+E7inKGmbYUBS01kxlhU90YyS0LSz7qKyAWCeh2NYJmEIeo380foPoGs3B1RoECmeYV98zY6aJ4Kwd/hA9rRafNxPXOcgg87GkYZ5f1tLr2fyF3fOTC6m81Q+wOxxeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753631994; c=relaxed/simple;
	bh=eJF0yTLsU6eWjONWnn95CJ7+UdFi/dwWuT9V7HUFphM=;
	h=To:Subject:From:Message-Id:Date; b=M+UVsd/qL2sjUh51Lg3TRGSF84m0Vflm4OxfI/WCoOjexPX8TX+RlhgOFmTqYZRaPGkfnHHSmRYDm1J+5f8PK/SRKmLfspB2uyBBf58psm+zA1q/ulLoInjILA6igdokup8Pi/TqDAx31TRToNzFf8ug/wEq/Q0vYTTvtNAepRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvpRLTIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvpRLTIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753631993;
	bh=eJF0yTLsU6eWjONWnn95CJ7+UdFi/dwWuT9V7HUFphM=;
	h=To:Subject:From:Date:From;
	b=cvpRLTIcRHY6G1be86b6XKi98CjmKTY345bfo1wWIlRZEYZSebUprGwUMPKJD1LgI
	 ojtVeOEPs8Rgh7NIb0wx7Bbud3Yq82xzsjkeQ8pVMPpo0ONLYdvI/4akWxKEP2OejN
	 xHDfMEIVaq0M3eBlbYFQiifDnBBZKntjPyejCjAMyKaI4l80AdjQQek+NX9TOO5iW6
	 E2tIr3Iniq4Qcr97GzBQgBq4tP864jcSwmyymvv5594e0xcGosXHnx54636pKjkNEX
	 JRFKDi68raWqSZY1Gj/Bg+0pOD6/2JFdMkjqpMaR9YVFDwQ6w/boFTZnZCo4W8dQ1U
	 bGkkDTv9PMOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A32C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363199357.924.1160640201885780710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af83b7eea82e482f882ac7e649209617b0dbf6938eff9632749ae3fdd70921b6
Date: Sun, 27 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753631993
