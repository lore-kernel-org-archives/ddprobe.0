Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F781CD26
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721250923; cv=none; b=vFXMhkMbLvHsO7DfAyfsW8NO1OBwdmm2txywjddXIwqaSvS9BxA8zs3XblvsGcjNFl307WLCDyj4XDQk/4W1PoXKo+dJtzKMZ+ubfPX1nJeeSBVoniD+RpBV+UdOeGGPYWlx+1IxmZL55FtpGq7K1f3FNz6J6sm+uYrunGfBlO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721250923; c=relaxed/simple;
	bh=uxDtKG5N4prx0OrffyrVBXUOiY/pRUtc3nALoXmFUwA=;
	h=To:Subject:From:Message-Id:Date; b=YPNehGq0xXURxs19YkUs7UY1wAuSAMiuU4+kp9s0wVT8CNCO3bDjt5SX1b+4Z/MTMFcvhD65lWiALO8U6/e+CO7ms7BP/cCaxqby9g2/MGxor2d+5k6CDzUbB9iRqLLWc9OIQ6ChCQYKNl50jmhi4oi2JgiUmONdBYJbQPdYyOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7y18bwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7y18bwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA93CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721250922;
	bh=uxDtKG5N4prx0OrffyrVBXUOiY/pRUtc3nALoXmFUwA=;
	h=To:Subject:From:Date:From;
	b=N7y18bwQO5V8uv9Eq/jBVvFXNWSgXJvw7EnXy54Gfm+6qSSkXLyzqdEhKDXD2aO/n
	 qcL3D+eh0sB2ReZfEDMHUCKx1d7/5zfMQNorK5KPSAIKKWCRwylYzD/b5F7fqUdxuZ
	 9ok0ZMOomGcIRcLfvfS6DAgGGfqA3yllv+P0GsQXtA1CMIDkv+nwX9ZT/9vOy8gOd1
	 hROxeIx+PPGOSpooonxtANbasO0vL2er9AC4KvEHrIq6yxW3+gRZFS42800Srx3LCa
	 1HkCgiBti3l9mfnXR56Vu7LF7K2s+MhwhxnTXycqF77+58f8y+DZJ9trMtlNLpMeDR
	 9mNY6NL5faBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22F6C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125092278.12724.5171058383461323596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25eff1dc13745a6b2f5a4db408c2820c849e538d4a89027de5c0a988f1ac6726
Date: Wed, 17 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721250922
