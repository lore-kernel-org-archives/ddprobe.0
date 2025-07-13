Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12979179A7
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752383994; cv=none; b=rK62y/u/hHymO6C8YvwHW6E5ie/2WsVUdjgR7zN3RmtGWdQFYZduNSSRtCgRAlMCYHVcm6iwSFbLJd00rhhamqN3qYHgpShjx8xuMLH83UCqlxs4nfMSZ+BwTNjtyiYLTMJXF/A3wR/ZizPtks9BSJE9DbHFVevneN40eMfuVuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752383994; c=relaxed/simple;
	bh=KqUOD7DaXx3aJdReAkE5yIO1noFVpg7ZymebT7+tMrI=;
	h=To:Subject:From:Message-Id:Date; b=PN9UW3fncqBAdqm2BeLMZj67FUfxT/Zd67xRKfnjYTz4SZl4zMSthuOTkzL1fTyUSFu8flY76NW/irSB+Pqtuh8Gu3u4xZaP+gYJCTGY7CNxfRyKFMdj43hBHvzbgZ8dYz+MV10mX/bQfAjmuueUjjkZgp0MM/K8JdWgV54X8uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMQs3i5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMQs3i5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2070C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752383993;
	bh=KqUOD7DaXx3aJdReAkE5yIO1noFVpg7ZymebT7+tMrI=;
	h=To:Subject:From:Date:From;
	b=nMQs3i5ogPcDFlPKIvvVqkKzpyJc2Wmt6plFAZIK3wR5Mu550iR2tQrtz4PLB/fWK
	 ONSorOrXrHRmjphghqq7SUHip0JlUsiz+lCxRgQFVXHM5d7S+19L2A9/aQLSggU8eU
	 kzZBsJ3bmG0s0dh8vJU3JhaSYGjVlqYrvthMk3Ikt8IPXUD5Bhglv79uAnaeiV2AwX
	 zNZ6HzbCS7JgEkkpKJn2sCSFwx52gxXmqvgAsMKLqKI16iz5rgo6mwjvoP921LenU5
	 tzkezo3yO41mk9QzTLDz83ud97iesvV76KMQ8jVJ1xH0zJ/NMs1JaZw7cuq47qiKnm
	 Ndw30lB5cffOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133FC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238399357.6922.6542628357979272946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12707fe90461f42311238310b4b784e00b421cdc4210d8c7e9a5f7e395034ca2
Date: Sun, 13 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752383993
