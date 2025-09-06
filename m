Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574215D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757198394; cv=none; b=Qxc4wtVQUZBC9dSogBEYY+WrtiC1n7qdCm/ne529RoaLWcjKRLkNwIWGPWPqeYhpSO8kbQedFt/5WvcwYUS9h4Pwaddzr2FCH3/VegVLkUqRLBrknccqInRMyvmrNj7ZaNwS1u3p927QHUvk7m8QTrAjhu5zBxPg2jtwldwQoq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757198394; c=relaxed/simple;
	bh=bLcdG2/P+qT/a0QfEqLW6goSJ3pvvFP4bVm7NlxEQmI=;
	h=To:Subject:From:Message-Id:Date; b=D6pqL4UAxbcae9CSpT//n63SedCnpALYTJh0dovx/FrRxtiEGFBpJ1ycapPFwCipItcKwORCZLgZr5J+Oa9HTDRpweZt0Qt3H1uOYcl4MYgynkV1/n07xC5oPHTrPJL9uL6BXJ+mLRHPkP35NI1nFMS5Oa1m3mk+LRFPZatPo4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw87bN94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw87bN94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757198393;
	bh=bLcdG2/P+qT/a0QfEqLW6goSJ3pvvFP4bVm7NlxEQmI=;
	h=To:Subject:From:Date:From;
	b=Cw87bN94GlGemP71QGlV3oBTR/1H7zdmdHZTkTVt5gFbvlMSymMjk27ww3wII/1Cj
	 HT8TUkhIhCoekKq5uxa0sjmRbQ9RKyycMCuD/ZWzojp/Qc9QY1sR+Tj6Spg7Nz5EDa
	 nOiELjXjhtWdoyQ1hXf3lTatFsru2tvmgHVgBQigiHnv+HVYTkPzphcBcIN23QSmjo
	 xapvH/HN1CXcd2qFKM8GMTNlNYuzcofqr37H/y2iEk/h+q9CSFxWnRjxCxTlF4/SnY
	 wfyW4aqlZsC4HxaiQ2FALQ8ODQBVNyHRx1pGzpOzypCRpLfO+oMtYCkYWUQHSHJO7Z
	 LZQsIiOA4j/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94660CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719839357.478.8024074540255835245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c30df55dfb2811d1297dd6a578c9e86cfb9e6846c8965b2bd7f0dc26c1ed0fd
Date: Sat, 06 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757198393
