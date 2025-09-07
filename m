Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244401FDA
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757218194; cv=none; b=LJPvLKH4Iu5pbGIyp+bTHRe8Tca/aLkZHjjoqYpcENCmDe7/QLFNSjdTaj2oeNBU3jDpT/C4iGtj4kpq2f//hm2y/39MOs8HLo6VjMWaqoicTZPbDTLs5Sa4u72ScPb7aFnR/3WkdYy6nrAby95srP1PmQstCTP/lCCs6DR8fEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757218194; c=relaxed/simple;
	bh=iWO7aw50E/ub6YtNvcXMWnlroscIE+qQwsbj/bOueu0=;
	h=To:Subject:From:Message-Id:Date; b=q85Gt8n73KJ9hfOnanhs+U41jYZ1KYmCPLHS9/Z5AAumbNoldc/EaEFdrmf80u9MeuF/GtO2neTozrqPeQusew22/LB4rbzzp9hUWZobkLtwtts1wO+9FRMrU6Lsilc3CEh6/vWp6n1Md8VzIvLLMbP7EVnVs7TX4ZyNBTEe1gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWVMVCPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWVMVCPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7265C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757218193;
	bh=iWO7aw50E/ub6YtNvcXMWnlroscIE+qQwsbj/bOueu0=;
	h=To:Subject:From:Date:From;
	b=QWVMVCPHbQ0MfQxLklXW5c9vi0AKYuSqLWGJOy8qBg+cz+lYng6MkWVKrC0r7qUkO
	 txGR27texxMHsgq1Md5yCJ2txGubtfD9Rh15678tQpRsqMtTqMmZ0WNV+s62HOjjsl
	 h2plNwDMBlW0+hr+whaoKnxvjtcHbFb6mVfBX1rP17F90RcvIj3qtKVrVE3ItTVTIw
	 uwIdKcgJPWBsv30xsEtV+O4KSae3U56JY7lmRv2gKDwrHrDqpkgtg6omBiyyQ4Gxjq
	 y+waRdjTVmK6KZt9Nxrg5M2pj9DgewE2B7q4/Ze2m2GBVeanWCMNkBgZHXqLvlC+qw
	 Kx8Tq28F9tQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224BCA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721819357.4661.12832062201914585281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3afdea2cab5f6aba8cb9f5e5556a71821e81fc57c88a91dad51d07d18526c4
Date: Sun, 07 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757218193
