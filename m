Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95222579E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748986194; cv=none; b=fGptTivXEUCO0QZtkekcVxuK1zN0vdYNzX8IN1mFuTNkjso/mXWepJ8FdNe5yLK3M9BnVYLLKNBTaAaxHapNUxBubpzhH5e5nYttv81SlXZ7aOos0X4Gigo/Hj15zxkI6FmL0MPrTyv9/tXUk915GSFC7KpZIvPZH3vr+lsv3qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748986194; c=relaxed/simple;
	bh=NoON6zU3HI2KC7ao8GD/fDu+C6BIOCGY7kxB9qf+l6k=;
	h=To:Subject:From:Message-Id:Date; b=PAHtF9S0+8i6iyjXjG5uXo0PSx6CsJCsSbbCvPvpnNtQlhW6UneYJw53yqBRcbgEgIEUWNl1S8jd29dmTLrkzBTTuHB1IoRWIqkUipCEI1hhn/te2hmSVbYSKyREbRifjMfRKzbgjDacykJnkmYKzgdHECPK2m4zyM0HDV4cFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4qLCTD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4qLCTD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748986193;
	bh=NoON6zU3HI2KC7ao8GD/fDu+C6BIOCGY7kxB9qf+l6k=;
	h=To:Subject:From:Date:From;
	b=g4qLCTD77Y94R+pVAoIl6xGsBOC2c+dKZJTcgZLRus/0APKwhjlnr7KPJ072UDNSr
	 FeIV3fcueiKBUnCrnN8kcgYDLLKX0wwrFF/vCGJVZcvwCFZsf3Lml02Y7IfT6C3JZf
	 pK8P44mwT4kuUkD+5H3Dru9voGIsy8rmVHDB4DXo18mOd8vgEzgRsJSJrubiRhxzOr
	 wrgzKoRoQL58iqxbXn1k8PwT5NJbMRr2aPWHW7t1Wb0fkjsAIPWcq1l06Sz7NAm/j3
	 9fTC5tcOEpm1SFf1jzDGrZrOtTYada82+yH+7SBTJ1vL95YWAsXTFKnv3p1TA7vDaJ
	 xXYozuzh/u0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F084C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898619357.15126.3501998297297816858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517ce6d55f413f5f14291b137cb1300a0a4a4b9d3b496e4b643d5bd5ed550444
Date: Tue, 03 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748986193
