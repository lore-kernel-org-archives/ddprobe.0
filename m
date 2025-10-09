Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3188128031C
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760048394; cv=none; b=dvixofv2T6fCM0hBgeLggZ8IbbtOtUo6q+AeYC6uslb/tFqReWBtMN/K2cmsIFJUhHMuLKgXWhGudmgMJG0Jf6pAMgPRFlrMQp57obX89P02weuu8nX3GNrffsh8KE40qNXFH0AAvpqPUVlVho40u5mW3VBX22NIyciqIr9NJLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760048394; c=relaxed/simple;
	bh=+1bCoOYMp1bbEKvPx6tCvd8LujNnYaWTf2K7B4iMAR0=;
	h=To:Subject:From:Message-Id:Date; b=tGulF+trmPfjxjJSm7cjMMSBgBMc/vsszmEGk02gPd35JG5CLKFtuY5En4lXU7WewJMHmvILRTsFr11/o7kXhbKGj2QhodmM/xcP+XIFN/6Xbzd957PLZgNGGDY4nBCYM164GlMGUOzOIAqG2TVAhNKuF9y8hnyf9kVSziDF8a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXvFMeRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXvFMeRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5047C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760048393;
	bh=+1bCoOYMp1bbEKvPx6tCvd8LujNnYaWTf2K7B4iMAR0=;
	h=To:Subject:From:Date:From;
	b=IXvFMeRBNMr+Yv3sB3w4gqqr/QLZqMSySIxM+vLjfKQOPfNCt4s4Bmv1CCAozffV9
	 QPka2YDrC323R29/MFdlCjGyRCYKYttR2ywAvfwlXc4Dar79BdyvalJGCuk50KHhQ5
	 GYv7epskwPLW3eF3gmoZdFtcTGR5WZxQAD+T8MIKUVa+Dnb5dCqKPBuzkZAejRRk9T
	 atT77Jo3X/3dzJAjzxJY+dO6VIvnmCrIcuIeHoJE2DdWcei1uCjOzFlHQ5qbMfCm1B
	 QbRyWZmzfhugiMFBPyMrrLZEbqMuZSIwFXRL1mQccC/txmkaCeuh5PyhmJEBD5mTvV
	 y+baCpQtUBPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F24FCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004839364.2695.16514924808547997901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c00e92b34927925d6058f13aa4c2446d25778e817ad99a7a2957bc68f303cf3
Date: Thu, 09 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760048393
