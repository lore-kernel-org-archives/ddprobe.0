Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2FF4A0C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749092394; cv=none; b=SSBzDBqigF1Fi3Z78b4j6q+tZjHylOvx0yirtQijXVssHp+zwSXh+qAmid0/R3g8kyYBs/fcqEhiehGWkIsSc02RTrC+aqMNz8wE/vt4Q09HWjijUO0tE37Eaj7zjvIAfNjq+7uBWeXL2FD8EttljbeVSnR2oj4VqH1N1iyludo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749092394; c=relaxed/simple;
	bh=lWrHsJi4CvLXAjGPlD/GluJ8628GaDhMfPpK6S68Fg8=;
	h=To:Subject:From:Message-Id:Date; b=erJFf81rbt8FXDY41W3fHOxFF+BKxSyedNRQ/+r0sPMst+Yt0bXbjUAFA7VkkhgKycFtxiBWB+r9EVDb/dfiHV5zamCNSh8voELDzUV9RQQmgYLcck00QdnmZnTuj1F/WRM1ZgAUgtOvAH8H1tKVnRaG16wBl+H98LID4c+X6GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pd/LC0uC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pd/LC0uC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB61CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749092393;
	bh=lWrHsJi4CvLXAjGPlD/GluJ8628GaDhMfPpK6S68Fg8=;
	h=To:Subject:From:Date:From;
	b=pd/LC0uCEaCQdqzHj97DT2juHBlITImgnkhzVBCe3gr2y5y3+5U5cFpCKxTF7BxbV
	 0x3xziocV69rt5J96n5+oya2aXGBHOv+/DFrnzweEA9pAl3jfANiG6k1DIBPltZhNw
	 VqY49iqt9lhRcujQqo0Vn5rL1aB9nXY/O23DVjmGID/VtD817BxfyBSSwYoUHUC0OJ
	 wiWz1utZzSsviKtLKq5yu68J8S8H01Un1EPc4qhY/WFaRt7S4zLCv6L6C6Te0tZDv/
	 i+thHWtzyGUR8qKqPFsfWzNhwWt+wuvncCiiSauXaDLz3fF4GK6OT+rxXwn7NqsXwu
	 1NCZAgVvenEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A03C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909239359.26880.12102118920360834479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c7e0c55eac5bf892834755076bd3307762393beecf56d5f4ceccdf2ce991b7
Date: Thu, 05 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749092393
