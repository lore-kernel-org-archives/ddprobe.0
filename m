Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43717A5BE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746293994; cv=none; b=beFc3jB1ytmhQnnEm3YwSCfZzj7oEl8PD9F9DEhid1rJQJs6Xg0nKY7FcALDfF1d/l1I9QH5pu8WMICsycWIWpa6t7gRS/I/DZV/9qsqLd+oCK9W+k4oBkFpH0iXQkNT1/qTPvg2AbLQfVV+ge3Zlm/aqSR/BGqJZIWGnilbax4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746293994; c=relaxed/simple;
	bh=h6B42VUwk6Q+XSKKuMaLZQeHvDaOe/dBZn5ciD+nZvQ=;
	h=To:Subject:From:Message-Id:Date; b=VxemgSJC20wU1pA7qOpIHL34vAf6B0hVrg4u38sdNtX2m3TL6hTc6LUjjv5Bl4HERDAF8kBg/F1ANKD9XOYKwAN/ZMOiXYqnzYJMGTwrTACFqoSsZmCaqcFTerdhwCgHujQcSMIgjDy2CWmQmPyYqc1ZD/dcQtoqWvx0sGKTy0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=si2ksQmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="si2ksQmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4763C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746293993;
	bh=h6B42VUwk6Q+XSKKuMaLZQeHvDaOe/dBZn5ciD+nZvQ=;
	h=To:Subject:From:Date:From;
	b=si2ksQmWsWx+WwIcFEN0esb2u7LxbsjA7yKc4dYYqXY4+4Qdv5KGIpbzq+eHLAmHh
	 rqo68/gWlqjeaKcnFMhWR29+DxHKpm88ykJjJTCaajf+L0HOOOLl8pfEy9z835TkID
	 OCnLLppXslZjuRto3CY6WbnT2ifXzsE6j94EGLw2CTrW2AdSv3dUwTLjyI1MyLm8eF
	 51nUmroSEzPO+1tMlSu+dYZwhZ0jo9BbZB2HFldpvZf9LOtRwazjfzmTgfDzYsw4U5
	 QtyaEY7YdvTbqmbLSx1J5j29m+Dnc/pefF8cB+CpY9dL2bF9sgXWshBKOGWVrIOOQA
	 D9qI8mmEBKCIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D42C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629399357.23260.4572081018155919205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c23f74c8bc17d6ccf100a5ef2d0250ae09ccfd378f38b4a3ac650b126c77ac
Date: Sat, 03 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746293993
