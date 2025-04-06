Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46612224F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743931794; cv=none; b=BLX3wI11npcYRZlJmC4zbkyeOrDmMIdkrf3MjayjU1nR3U8WdG/SdNIZilFdfSNgwf/SKhqu4IAd8HqNRN3U1c8sb5ZnCOvcZngV1LrYHp3PK10R1emzUg/sJ9oxUPGfzItxPwLKvai3SdpDxyhynixyuf6Ch6aDgjUUZ4gXFbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743931794; c=relaxed/simple;
	bh=xL5vknu9kkU+Y15B5p+bktXs0Pq3IOeRAh/LpIyu3kI=;
	h=To:Subject:From:Message-Id:Date; b=bT/mDWQ0Vkjt/6x24r6B4801gRFAkOrrPq9MhOaFB0WXDJzPvjljAGJ8atDgOmSzrPovssB8foMRlvBnaFRWhJk7hwY3B/3oDiFHVX6jjszXjbYitJD8LsQJB3vS+IRejfEoetnG7PFia98J3p376avGI8YhMbNQ0f2YsauVpQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcNAsVIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcNAsVIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC63C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743931793;
	bh=xL5vknu9kkU+Y15B5p+bktXs0Pq3IOeRAh/LpIyu3kI=;
	h=To:Subject:From:Date:From;
	b=rcNAsVIjAJSJ/rGYDh61BSNZonBy5ikN430geMP7jbUPngI1O5Ck6BWULROLSQSHB
	 F4gfCi7LW0Zhw0q1LGrOzSDb6WHhBd1bxp/WYgSnVI8U38HYPSS3/qzW6gtgDpfL+U
	 5/US/TTYiu/8vEVe1LLMkGUdO3m5pVFpRFv9a7Y15ExvSFi3eTmpakhM49tRCgRV28
	 63cHFbsljdVTReSGm5GqiBM4AUh7M7M83ymKkEduEFg/+xl4Z/+S324fr4CiHdq2Ga
	 UXta1fpaNQSAZ0Jw33ma53IVyvadXhbwqWGpaxMrVNcUIByMFeA3yS+Phyi8EqS4OC
	 cMvq0IsWwxxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FC4C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393179359.17014.5249064807893297563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5efd02fe013478cd90c590ab06a73e9386737fab14283cd21f4bf65020c9ff8
Date: Sun, 06 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743931793
