Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4606A15E5BB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763883115; cv=none; b=Uhbvk9dm3pMfs+RpxyYI+igJBe7bxGUrMiGgBoDVq2bwproA04uJNGfLqrhV1WDQKLa0laXpfvDRyKaHieGCmJ4yFlxnsH52iWqil+ALuWCI9eb8luZXcLKkSXRO18OiqNzecJqvwXbBV7GnhQylZCMY/kdHDsVk9b2a/LRMevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763883115; c=relaxed/simple;
	bh=3hCiVWsO2nkEQ7E4LxBDrTupL2HGN2n81DSjQbsWlDs=;
	h=To:Subject:From:Message-Id:Date; b=rZ84UZWEzgAJaEx7SSWDKO+F4FcC4NpI5faKyiy3UZJIjHNwYxcolUmtRu/f2dcnWe4aCdiz4eOjrhqQawo5ixiySGhoP4/t+X2cZH/XIq1WEH/qLNm1xhIw/PJGe8usGuX+jFb2QYF8+9l0tcuICS6q1iV2gR60lOk6lF5gUYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPNCSZ6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPNCSZ6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9EC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763883113;
	bh=3hCiVWsO2nkEQ7E4LxBDrTupL2HGN2n81DSjQbsWlDs=;
	h=To:Subject:From:Date:From;
	b=QPNCSZ6lFyQjbkNZVqXAfLvQfAGeareXJJkHJ/Sot1U/vthJn3NilT70RiKwPqb3p
	 Ztz4BxNRsz51jRcP/B0IAJxB9EFsQULmSArDFmwi6joM64nTl2+tbeZougb25yOB7U
	 qTuYRWDjSLYnTMuQnguSIx9MJKGVr81NzfnUKyZbM9mrL02d1iOPruqVtP5wpEwHPM
	 E/hYQtODfpCTck0E19vuENJGLsFu003/x+kt40IXJJAFhkQiNuMsUq5YxXNPlexlTt
	 tZPuaKJtSKmgKDOB3Ux9JF4+M4/Up8RTFOdcDKC+C/7ByJXEzF/lD7TtI3U28qDW+o
	 kt0tx1lZQjAAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F1CFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388311358.4090.6275289675373390430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13159a0c266dfbc8d3713a83b33ea2745201866b164468385f993aada8b8eade
Date: Sun, 23 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763883113
