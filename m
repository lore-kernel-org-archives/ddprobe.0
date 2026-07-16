Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482F310F0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784166514; cv=none; b=L22rr/gKjT18Nt0Y2mNtSfbN0rWzyRB33yj1cVMpJUYFCDU1GnccOjjUVgNqt+R3CDwhopZbJFnsCee8Pa10vZeVqd3iGMNmBwaaMbw2aBiMM01LzpjRKddZpDMRZEzTehqVxDB7lnEHeX4m2hmdsUgjR1a9k6IdmTl6Ld8uW+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784166514; c=relaxed/simple;
	bh=CLd1b1YM2TAYfJE2DXiNOGwSqCNe/O01lVki2G/dIjs=;
	h=To:Subject:From:Message-Id:Date; b=E+2ufbxkM+TzqJwUn6tZQKqYdrBSsP8izXETi+UGDagsg0qvwZVXKZXlPYLt96Tu06fYk91A65mMuOXeQA0HD98s9L3i8uONfFP1L5IXJ9mQB2WUk+26UGv1oYQQfbkRJ6NBjhG9XQ0PbwWTwO7auOdeOMpr4WoztivVhJ7TlCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3krB+JD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3krB+JD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4ACC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784166513;
	bh=CLd1b1YM2TAYfJE2DXiNOGwSqCNe/O01lVki2G/dIjs=;
	h=To:Subject:From:Date:From;
	b=L3krB+JDria5uQNP3ZezqAT1b6c+hp+4bmK2TrcO3x96TTVOft+OdYs6l+MlM2bP1
	 3V8N+uDk9GiG4gS5i9/QRMnnvPStnTafe4NRv8xzFlf1GqCgrIEYtmZ8galRRTR7NZ
	 W/ABH4NN/GPzFmFnp94CW8EfKDk+hALTpnHpvy5S6LUowT31s0ss8NiDcKARjUWSDf
	 eb6FxvFn/wLAXADPA6f8LXj4LwbbXhngEVhAL/KY34A4ntlrcXrmKX+XpJj4IdDcEJ
	 e+SzZR2lqvEvQJxHpll+iMf2bFEPwfZ7I3ii2UYT6AupiKd4LhUjDg3hbeSbWfBuw9
	 J9WFP+P8Cjvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA90AC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416651373.10552.5501985076684794703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae07d6ac9d4b3298ee1b35e7cf258df88ef59353d03d90396c6849ea566ae2b2
Date: Thu, 16 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784166513
