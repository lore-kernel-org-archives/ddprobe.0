Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DDC5C96
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762687794; cv=none; b=Ea4MbCW1jbwSnH0yXGLdYpkMywKJw68PR0Zi7pMPtdCvsKOwfOC7YtoMrrkrNwdv+XcZlj/xx6OnYoRIDz3sa+gI7wRISTFUS1flC9RUMQZ5P0bn8c7/9yjIKCZz2mpDcfGNiBdpDcjxTihsl2hx8C/q0LhZmH2nXn46itvlfLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762687794; c=relaxed/simple;
	bh=bwLJZW2jwAWS4S/8zfoGhSLsUCYCectVGrH2qmGKt/A=;
	h=To:Subject:From:Message-Id:Date; b=Tq+DJAK0miVzRqL4cWj38OEQaFKV/vX6ksHIDaSIUqs1oc3iM2VpAw00BzzAlh7PaoTmpRIJsKpNxYJOwTHMneiyq6uOBUR3HmH2NGHn6wfrrry335x+ng6C4RMkz4wKylCDvEUJXR5b6psFUYejywZ1vl1/O5UwiW8CKCY94X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeBEaAh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeBEaAh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762687793;
	bh=bwLJZW2jwAWS4S/8zfoGhSLsUCYCectVGrH2qmGKt/A=;
	h=To:Subject:From:Date:From;
	b=QeBEaAh3eWpkUk652sO6Qi57o5QZupJ5PqLFD4gFciupoxVDtDtNYkGkIX5v7NoLy
	 q83+09dPoQO3kfzgEM5kmaAPlIYMLTntFWdHeKQYwim3e1aHxnl9fWCkvtEtO7NjYO
	 nh+/6iWd7gGlAmJ2Spe1HhQLzmY5eAdziwxOFKobiY+enK0NK2KcmoTeTmL+2QIwq8
	 UikMgs+BBXM4DoROBrxlfb/VPkXbGeUlaioy9OUqheIL03NLuzZnMJSc0ez7kehG0q
	 hpMCVH4Oz7EjB9KlrCkhUSph50XjyEWEWR9hsj6kirYinZgHpzuIlUIMkS3csjshjU
	 /ICy+7U0RDcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFCCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268779358.18870.820069839261819488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfc2ddb3ca68a0b4034ac206df740c71cc2d694da3b895a5aa3a291015c968e
Date: Sun, 09 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762687793
