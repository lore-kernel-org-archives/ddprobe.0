Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138712367D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770474234; cv=none; b=m0JribJOB0/Wnth2RqkX+Ahobq16NpiuDyqc6zQDmS6F/NECCpJiaBDJNnaDKgxj5/iKeR6H0LulaurkVeiXVDJqOXIQV7qyGb7bG95EEblAFxHugXcWZ2sQMn7Y8PpDSNbGu+mUbHRqPGmYProMRwYXpY72BZnb6r4MCOrhRCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770474234; c=relaxed/simple;
	bh=JsxMoIi/HBBWFpF24E/pd/ogI1v4oVvsvyx90+tYpVE=;
	h=To:Subject:From:Message-Id:Date; b=pMxZSJq5qkYBYY/F2+/DlflyLiPwOiwdvl4vBlp5Bfr2KRppnBNViE2V7PUcTMlWyYh3+nJOIJ2l+OIR2GMLoOClSVvmi3IlY0PY2+eUK2hbsGghZ8Pfs1hc+bmH0TnNKNQxuG3Zgcbndd3xanybbZZtbjqlbx6IouMZ0QiSZ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+DFYmlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+DFYmlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FCC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770474233;
	bh=JsxMoIi/HBBWFpF24E/pd/ogI1v4oVvsvyx90+tYpVE=;
	h=To:Subject:From:Date:From;
	b=P+DFYmlfgauXDypiId1XYbYKQiuWVbEZezqe1Rij5cmnGHBZh+rVh0UTN82uqBSV8
	 ws1nICgrgmRvSiBnlri/S+EVHVa9RA1DcK9FpQtzrZvzcaUQBwT6Lg0k4nr9nYRd/D
	 TQLh2I9QEp/sAuut7EzjPXvgo2Z84wPyzkJKgNw0vg3TjA7xVly965h0kMrpgHMivb
	 LvbnEhukvII+YCZ/gtyRMrpBAGWK2mLV9FPzzCVa19BWxKKS1ubczwSEFmYWT5+71M
	 pTk7sx+hR1kjJ87RIfFbBto2ygOCA3JGGGvsX0iQF2Q3nqGBp0CF3BzaBjR3tfTBKD
	 0ibLMmtA8/Byw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360EEE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047423359.27591.11073724826209950915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0c8a54d46283b20b1712372c6c8e12e88d05e65c2a87e0c35bcaf63ae5f968
Date: Sat, 07 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770474233
