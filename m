Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CE4C9D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764135774; cv=none; b=aGtXbHUIpYDXGzpEjbA5YHdM8n93w/BUzvj9o0hn0k0Od2tGFn1D2jFyE737rR1YhwOUzAP6o+AD6RUs1v+CTS52D+ZKO+h22T4ii3ddY9mudVySOXcvIaBRXZ2MoTswlCPt4BQBZ3oD3BJwMunU8u3SQSPaWWMjpPfiTca4bzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764135774; c=relaxed/simple;
	bh=g6egbMwNx9LyF9C1N5GxHQ6JijI3+hW98b2kNvo/UIA=;
	h=To:Subject:From:Message-Id:Date; b=P9gVNdPfn5au6k7e76vCDM+OD8/SCkHx8m7nUFbYdbb0qrrVbgKdogKRsOGfONvWREg4Ah1ZeOjTIhV9ownKZkN6JuBjtjtOOwE/f6SginUZ68ifxgY1rrW/5twwHLOcWSZjufmjp/cuyhJCzXsGlf7FUI65G7Wmd1W7ZYLRl4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz1sN61j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz1sN61j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764135773;
	bh=g6egbMwNx9LyF9C1N5GxHQ6JijI3+hW98b2kNvo/UIA=;
	h=To:Subject:From:Date:From;
	b=Lz1sN61jws6TVYaF2H9Fd8WTreHHxT3vcWnTiGWCT9+SdFsSftGHfRFgT9kOvOoRN
	 6yxe9riwzFi6NCnGCNQhvmdA4uKZ2/9d26NDmx3ZFbdBmDevUveA1KUAoj3FrZzpmT
	 GhX1Z27e0DoaIiAj4kHBbQS/nLSlOs7Ag3JY1tDu12P1IZSxAUk4v2eX6++81OKMQV
	 FeYvAKE3DMPLx4AQnAzf07iOaIrqu05/XPyHANNkSgyp0p/Ok6hLa0G9kp3bmC6nEu
	 nk+WU+Zc2XxBxBbymazxYGfxOIAC/9s05QdS3P2pEKyvlx1Zujsm/vvUxncJpfSwW8
	 M2wAONlSGDVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B0D1037E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413577359.724.15329240982314795373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fece8965fb162e84f8230b03d10aaf3e225b0b38880a21c9284a0b00dbb3e4b
Date: Wed, 26 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764135773
