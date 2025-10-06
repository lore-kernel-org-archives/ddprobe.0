Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233632765E2
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759760994; cv=none; b=Z6F7D2cI/MF9p/IHBPAc8sHarbC20i+QDiDl8RqtAX3HBaR6TBiS1QarIdzpP5R2/hElBEwDnQwDROj1yiOrRkSPVFQT6kGAyQgc7qrAT83H/RbCNq2Gyif0Z+LQcsVR8aXQ2mnzifzv96sAe+bd85KydO+CYeJpEtm5+E9jn1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759760994; c=relaxed/simple;
	bh=mEhWBv8iqomrKS02X/8/BcikRgDpcn/4W9xA89R/AhI=;
	h=To:Subject:From:Message-Id:Date; b=HbZmDJlowBYwvN9RNJBi7nxsDj1/OJ3b0yF3vZbTxlelvmC6FbocsqsSDBlR/XdG8h7EsVkDRw7+Hq7+0YB6sisQ8GHiVhaJSxoyi8bbcpXh1Kbqw7KsG5oueI3S8dwLjBb25KjvsNMs0fFQDWnT/RSBKa9RchZLGCL/io1MtQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHduWrZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHduWrZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3052C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759760993;
	bh=mEhWBv8iqomrKS02X/8/BcikRgDpcn/4W9xA89R/AhI=;
	h=To:Subject:From:Date:From;
	b=IHduWrZdxCBwuPYlWlSJLeUNXYK6yRq3rqav/Ww7tR19VGBD296r5kzvxHKY2lPCu
	 G583Oes8fv4HfAxplktOZkHhoD9GtJs97VOnrTa+XcQQc31OLEA9lQOPQCercMVFuB
	 oDduziLMxL7xDPlWktyDOATz6pO/mvgtUuYq1ytVO652kpBBPV8lqjEZAASV1pTw+h
	 XVZdU0uCsVndAShxdJ5TnxcH/lvxMiJzEyeSlN5TAKCdkKlFVXLgLoKe9+o7bg8frx
	 HPwCHNMiESnL3toxf0XjFmXX7aPrrRBAuj5ekpisjvYwLqo8HvrlAwQzBQS9s1M3hz
	 M6OjcQx8WRbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B41CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976099358.1590.11428796058063058934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3be1b4138a9eba8477155a94fde83aac0147a586ff4f1c32433a04788f8256
Date: Mon, 06 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759760993
