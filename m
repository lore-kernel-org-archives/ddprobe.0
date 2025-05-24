Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5050F2DCBFE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748066994; cv=none; b=rMIcPXxfgzxq6bFSrga7ZeKOC4ppAHu1eHQaWcaYRIuVho2MnzoHlhHwCs3wmaiYl355SFra4HSqOlSQrNUbMIiXoPUWcK4kFUl43H9B+t0X9Zcd1r4KnsJrkS1LYdx5+EfaaNHj9bjzWPRYDt2tm3gB/7Pnha3hjgDIB+dWvgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748066994; c=relaxed/simple;
	bh=tojMZkgMHJ3+q5MNprm/480/zsPezlL8leZhsMbiVcg=;
	h=To:Subject:From:Message-Id:Date; b=oOC/aEzTs0w0hUUIUfeEPAqZjXkJnBDtLUoctjyWBaUtZZQa3IIF9FN5C9LQ/ellEBhuodsTSMqFYrumN/a5xWkQOzGhjfdwOZ0l01yiNjdShnH+QfKxsF7PFMLuSS3PoUPiKKxDCHzB5PTCAGAmEWqYeD9F5pKT0fwwpo/TnT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck8/l10o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck8/l10o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B91C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748066993;
	bh=tojMZkgMHJ3+q5MNprm/480/zsPezlL8leZhsMbiVcg=;
	h=To:Subject:From:Date:From;
	b=ck8/l10oyDEmjos6Bmrsq4GEtLNZ2VEkF5/VPNOGqR8Ds88snbyjzF832Vi6GECRy
	 z0vlCL5HPLXZMJi8jPGi7CM/wyNeazw4mSDMgkJsDEsKMrvoGvJW3P0p1PMDiPJQfp
	 ByT5yGQqjswSQw82yZLz6KGs8R2F4Hoe2uui8rb9z4NdIyKI6NVgQypHQexvqIpWPb
	 YcpBpmH6+PrY20oYrbk71jZ15YCiSzTPAAudWfbhL9O6pQNZDyqMeUOjiFXGvA1dSz
	 yPIEN5m0np+P0DJCEOelFBGTl/SHH4HQJbgrHj8oZpUHQZHTkQDuZRCV/wo5DSgtkm
	 rROonQgVjX2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599CC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806699358.15802.14168054643882445199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93b7de35a66fd071e7d8322cd030e7ba55fd11afb5fd1100f1ac2f03b91d998
Date: Sat, 24 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748066993
