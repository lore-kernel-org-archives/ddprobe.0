Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE33157487
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782018994; cv=none; b=oRpX/2U26E61oZdW6gfcHmOJIYyKOkJwmW1KmfWwVsHn9yZ1ZsvMjzGhtIk4UXlqVPVb6RM3rKcAXljJPYPP9Kk7OH7mSSH539fyUsZYw5s2RGFOPopYzANMF2O/SkpEdan4BbKLB+VuBdXn5qOFvDv+rltKRQmnIpAY7ngQFsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782018994; c=relaxed/simple;
	bh=DQXICVVWSYvcDAiLtvO7i2ZlKHZZesHWSxri0Ww95zM=;
	h=To:Subject:From:Message-Id:Date; b=nGfmGDwIyWoSBwp5S2dL0crS6IFyyVHUbjjt/vv2+uc4XzQf1zy2v4yJAPr4phhfAqWt99YgZJC+rG6mHY/2nLtL9EMt5DRwFJcx2JU4tuQE+UfLYOY18LANgL768LhwO1UNLCsu4haCcSvYxNnLGh9dskeSAvDYBS5BrtTpwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBAWM0Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBAWM0Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E4EC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782018993;
	bh=DQXICVVWSYvcDAiLtvO7i2ZlKHZZesHWSxri0Ww95zM=;
	h=To:Subject:From:Date:From;
	b=LBAWM0NuLX2hdwMstM+lE90FKiPfltYKK7BYuwPlKufJQem6tlqoOHSFgUYivRGVW
	 S0RRvc28e+42seHe3F3z3t1ZBPVbEHUDMKLEmrYsnoTlwsxqQt73rYxl84p/lGj2VC
	 vX/68nkQ+j2f9RTFDBYe2iiSu6KQ0Cdht7vhJYMbcx9uv0+52/VduILg6Akd09H/C3
	 XXfmYEE6YtC+GoaZNttKsfuIvQr2n7iewpuqXw4bndL5NZTFn6DVFBNeaF0VJq++hw
	 FM1e/rNDJE6cswlDn3mppKIytLvfG0M0mDS+GSLdO3efv9Gs1Hhzf4ow8WozhMt7ND
	 BVgAtOlupHDpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA87BCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201899368.20330.15273069227556406886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d7357941225c9f7d6e0e51e4b5cd570bba3a6c3d46a62d776f1ee6a4f936f5
Date: Sun, 21 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782018993
