Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F76164A8F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758421195; cv=none; b=ue33P3qWPWIX5k2ZBRGuw2m90PUOjfz9N680icd4GKJVRuOI5CFaMJ5OweAeZb27IykRefXBr8iKOra1Y0XuzmZlhbdu+89auObm+nd1OZfNF6fSF1/DBr0VjGpvjtDJcp03rL2BQl5s6qsemZQt9DUaAH8P6CBCeAWVHbUPyXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758421195; c=relaxed/simple;
	bh=0TPzQXqghFP4PZw+e6YzOceB9zpObO/PzAJIsg1S4VI=;
	h=To:Subject:From:Message-Id:Date; b=J4gffvTL+ZIZWZUJcDoaPLLINfscGkEg0Yh1aIW2an2jvCuHgcH4Vmwwo+NA9FZAJxJzvdTMiqmUaopP667mtj/EVgtNC3dZ9ZLrwFDe0TEQATVZMqnxYUCJoBVorBqm8Tx35QQF2SKzEgSqrZkPGTr3D5M3+vacHW6Zaw2te7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETh9qre0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETh9qre0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC272C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758421193;
	bh=0TPzQXqghFP4PZw+e6YzOceB9zpObO/PzAJIsg1S4VI=;
	h=To:Subject:From:Date:From;
	b=ETh9qre0d98qBJhVA2yuBy+EewPOAIbEWAlWObp4yt5kZeFMVUiUQBfN6uy8ZikY4
	 p8BIH3EEEf+R9rUBefA+rzWG0jfjE8GoRRLiK4RB4MrJBrmw+vGygnzBpQ7VoEUuQ+
	 3dslI8PLKF3MUCUGIo+RgDeBGqvt9q1kPh1vGl8ORfOs3f/hkM5BKNYuKjQHpprWJA
	 dd4LSROdpkA6LQ4aPLSn5clzBjFkikgGL1Vh9QYjeLDLl0EZm+sz2p3v5fWNTzXXXS
	 s775IWo/O1K/Je0tqeC7SOLbmOIrQVGVQZYKXsE/HnVAblXcSLkjx9FBhi1ZzgDBTV
	 K0R46ebZSt1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7BCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842119358.16297.16483828324267683915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19092839899a4df2ff44d8c65c9bc5de75225389467b9671de3080aa2faaa06
Date: Sun, 21 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758421193
