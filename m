Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8FEEAF6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751249394; cv=none; b=s1r7mVss4DqBrBRFp4e4MB/UwpEoTV/QRO2SlGJS9tXNV46yKis74rzuQinrZXV4Sz/FXuDAMBwmC4ITxR8vUyPZRZmbIv7hTKF3OztojqUnZJyIa7uGFnTYRnufzJo2qWsOwsu/T5r15pjqRhzCXeE0Kkl/hChzVd6Rcattqmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751249394; c=relaxed/simple;
	bh=RYDU/8myf1VwGTZXON7dBhnvd0uu5Uh7B/wZMRJP8zA=;
	h=To:Subject:From:Message-Id:Date; b=aLwMTR7CGEE0pCoV8EbmFLbgIKC7o11i+zx16oKmen2MEQ5aOUv0+DBaY9FPLDKRcv9UtfKYje6QrAlhqveZguAMM2kAv1PC6cZgxvD1UYp4KqQKAPkvqE42TFrqlYx1342qK2UCbVm+gvMsPOdWyVUoy9FPfdz1g8O98aY+L/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsgz/hTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsgz/hTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F0FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751249393;
	bh=RYDU/8myf1VwGTZXON7dBhnvd0uu5Uh7B/wZMRJP8zA=;
	h=To:Subject:From:Date:From;
	b=bsgz/hTsZlE2N6stb1yvuso2ifaqRRsUvnXlMnrXqwWflph2Y/0m7go2IkjMSwGgH
	 vi9Zjgi8QT6Jk7W5APSbzIRuyfk7AU5npxRACfNtXnwx9RiH4AcIkqGV5o1FLGBszM
	 JtZx9CogDddJmdh6xXwnLDbQYroAc7hm1T0hT99vQzNdUEX85lWnVnGPDBlv8+FEN0
	 r4YwBwF65ikbds8i5JTgBx11GWr5+GOmY/0M9MmCSUdhK3lx2e5R27jPjowIfWbjiA
	 2mTST1z1VdTWAF5Y9jEd5fKlmh5wvU8NAlqJbDn7DT2AFdpIVutEc1FLi1bQy1YvCC
	 l1e37SsJm4rfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137DC7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124939357.19003.2292211787072869922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afb542932b8d1204f43b8c4f0a59aca6df0020de5a2ce63275da56075509cc0
Date: Mon, 30 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751249393
