Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62960249FE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713050363; cv=none; b=CnuXDpkORlnPLc+yA/mCxnFDPF0sIdOfkgIMxC7eJySZiYu9BWPTFKims+ihTkibmvLxxY3PQ2cWDTSD7vprH8fzNL/raKR+dCG63YYF0CZtdBcR4SMOVtjglz4x272QC/8yOLFQuBYUfV6KNL32ey1NLVZzUUDnlCB5mRtoxIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713050363; c=relaxed/simple;
	bh=3k3l/7xr4YNUJLHMDeqyALfMMfkoFTuINOkSjfaikKQ=;
	h=To:Subject:From:Message-Id:Date; b=diKFY03Bft7rMKmjTLERN65zmr/p3u5ap6VsPb9vfARiFYCFUhxA/Wgyt8nZRpsehboDDaqVE4j6H8mFVTK/bleIkzNW7vd8HGeSuFcO8k2HkgPIyZXs1x672hQlI03y6KRayCMaE1ajsRy95SK7F2cH+tCGRVQ5Y16BNNDP7tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLrmfy6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLrmfy6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AD8C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713050362;
	bh=3k3l/7xr4YNUJLHMDeqyALfMMfkoFTuINOkSjfaikKQ=;
	h=To:Subject:From:Date:From;
	b=DLrmfy6zUg5VOAPQnIqs66It0Ez1XhNJMtuI1/e9FsJItrfOTszHss7b3LRN8NHek
	 2baPMIBFB3E3bRYswTKmickkWP/HY9dQbKklXpffrP0KxQsbxSWOLqM03hvctUBcPt
	 2IvqxD1NmjT0KUxgJQvCEpaQl/1l/J/XG3NThyCB/r8Lugo0XjtxZpUIAlYc/H7aGw
	 gesjQbdfed6nN/u2Mq/awFmRXdPPo4IiJ2J4fX0fU1SvKt8RR0bPo2/V/3oYmu8LLs
	 REmLGLnB4knnFy/1dFgwkLj6Qe1aHkZubpF7Kl5P1sgpwsmDQcpdkV7LGvKPDyD+pl
	 Vay2X4R/IIwdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD8AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305036275.508.2796382555620632204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ee9d77fdf377f2e54735bcdcda109f15f103dac2a1205029ab79682199cb80
Date: Sat, 13 Apr 2024 23:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713050362
