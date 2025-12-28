Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC1EAC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766945634; cv=none; b=n+Tp05r6HEVGe3nbtKILyPHkAjRsPFYUopEe2bD8kncXLhfopBJIbVeunBbdfM5RPvt+2vGpDlpBYRpZ6hxfMoq2m7Mjc+yQdLMPeznz84GbWhqm/XkzfwKWpMn87cfpRgqIc96bnV10M5J1oVo7y7DLTR8MANQjo+V6mwbEjYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766945634; c=relaxed/simple;
	bh=UBQ9n9otYEHSUqHztqg2mZte2w8xjYx0IQ7f6QRqOi0=;
	h=To:Subject:From:Message-Id:Date; b=pfQWJ1tX+IBCbHT+vfsx021HpmJuUfTHAyCc+BZBhW20vVZL4Q5ZiPcTiZGBdRzy2I3DX1hZ1qiUNSviWlef74M1e/1DqQpYtRtPz37IUg6YFVo97z41TBzIuhO4LKSXFyxaecsbwD5kGQWe7H9qeFF8y2c0h4dbr8g4ri/RFsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWNn2L6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWNn2L6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B260AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766945633;
	bh=UBQ9n9otYEHSUqHztqg2mZte2w8xjYx0IQ7f6QRqOi0=;
	h=To:Subject:From:Date:From;
	b=eWNn2L6q3PV5GkCTyClz41r62Dcz3yrOhv+iu67CmWeze6nYSEDaBUCu8TiOhh1Tx
	 eW7g2T9p6kmWCgbQZkSgW1y6HzU92DA86w1SdFsw9Jp/f2ZRNU/YnPc2ZJ+EHycsTi
	 F4YHO9aFyGZSPEXbZA2FAL+wVRLKu8fmY2XPBxEQuZt8CBtOi3K1+JvvN54q0SEKug
	 qk+CQGRR+IyeF86SPwgXls8vrxTWS8aVc5h+HzjwRIjL7+o05X+3f/p+0uKAtfkf0k
	 CVarfNiukYyAF8xYxH2Jq7H2Kxozk2JA4aJx8HPk5LK+xPLdDpUId2Vf0Yubt+SRc4
	 u0CbMTwtukShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6C1D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694563361.27319.5158996714472184303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8b02b4536ccbb69e7ad11937c93925f7acf54cac46326ca1ab4d8603633f13
Date: Sun, 28 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766945633
