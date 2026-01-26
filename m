Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092E221D3F2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769418834; cv=none; b=aCh9zW1OQpGOwAgd2mXlNNCs1aJuMSuKl95Szm+22Iz4ZNunJqD/wKc8EKttwYRUEHiemrQ4wrMmUNb/LZWXhnqgwJWmCci4SRtgytwnbGFF4NKSRMdj7lgWi+ZoFGinKent4ivtv9+Tf+fXhzGdohLWzgejf7lOA37ma6uXX3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769418834; c=relaxed/simple;
	bh=wdM/fdnX9u4HXbrkhHwnlGK3Qk57o2uRmg0a7VouInU=;
	h=To:Subject:From:Message-Id:Date; b=j74VZ/RiGkE8yAIw4qva8lVOIt10FB1U57LUxO800j8awc4lKu+1+JN2tfIDfVeZP+jvIBr/bbJZB3s6aguU5JEtp0phU8Rck+IL68SDEM/w1bDeR7nlhG7ZjG9DNUOYXZiXvSlmrQLjaW4XZoQBu01H0JK7BXeaG7uosntw8eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7ngn+00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7ngn+00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3FCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769418833;
	bh=wdM/fdnX9u4HXbrkhHwnlGK3Qk57o2uRmg0a7VouInU=;
	h=To:Subject:From:Date:From;
	b=C7ngn+00yNouYPNuDg0gmBySM9+2pUFNGrV00BkooMR1m4dAfPrxV+mJUCG9MdB5l
	 sihpDRXj/rSWRMc/1Ky4tDWFMdzNIXpkdgm8MknYEszvMqCDkCgj0iJaxjZGEf6jmQ
	 vZQfKzhHccM7WU4QWEkWG8ytOXK5dIyiWQ4VId42yR2EGMvAdM5A+muCTVmDlCYPdr
	 wcjkC/QB/xfNd+0nnrenvUjpTYt/GrLJdtrTMjIs1WKz9qq2or+RklFNAXGtXz/y4m
	 jzNvLFw2gIsAKPhPmvYiyU+RbNggV3zMMflzf784uuvEjQiJyNnVx/qLai73bmOTGV
	 CNBGSku6Sm6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF4C88E79
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941883357.23211.4502185756324169859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3120e2259f2d027839cb8733e796923bca1ae80795f02a869c1c61eb656c2465
Date: Mon, 26 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769418833
