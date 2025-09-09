Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D95464E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757376594; cv=none; b=S2YRPMOJqDp6YfJkXnBRZsGx9Rbk6u38oNencXR3GUd0wvP2R+hmFAt0KjlspKM1R9pYkO9qcHyhOxq+fYPyui6R/OyWm9493srCdzQQsnK/MoDfQgVFRV3HgVBP9z0bV6R1nQSWC6Nvn7b6qYtam597inmfzbTQch/zP/eSEGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757376594; c=relaxed/simple;
	bh=gkp4ddi4l8rlgbghjYP/ONGWLp6WQYRXxy6AwQJXWsk=;
	h=To:Subject:From:Message-Id:Date; b=dL1dcfjihZqJ59Sn3+2bwB0H/JSSirkYyCd+QTgWL9IepQfcOLkZyZc5F2muRXSYzvVmgvFxlEeboof+aTY7u1sC2Ut5LBk6nixVA86nse6nXELTTH3Wkx2680e9C8nC8uegIOnam8ED/1as0LUhNqzwNvdYnL3qpAbMfgxDlMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsUxqhHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsUxqhHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDD0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757376593;
	bh=gkp4ddi4l8rlgbghjYP/ONGWLp6WQYRXxy6AwQJXWsk=;
	h=To:Subject:From:Date:From;
	b=GsUxqhHnHJ/QbkJhTBRY8odjNw6CnNQL6swU3/JD6xtgw6x8Tprb0C+/gpDa2hVtH
	 1TGNlVvuZnqf1PEzElcwuppGgB28TbHJrfXuU5zfL4tLxhJntzqRSV1t7sVHX6tIZ4
	 yCtzZEOi76ufjj0dHx2JVYv2GGwswo46EOZlNx3nJEE1qC03Pd3TAO8CLshyyj/9wH
	 bkAxXA3HFjRN8c3F2GITDtb6Nczg1u/UfiC0uocxEcJUp1m4t5Vr1oJVYsr9h0Rb8y
	 1108yd1wemx6Aa/5vAFDW3k5On596aTC1aOrUJBrQF5D3pcImdtm1IuMKVWfljQMez
	 JWwvAo1YTCoyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E850CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737659357.11329.8720556110076522372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0be03ba438a84fa05ef56a7fdad0622d08cbeb20c7f63da4af71a49ebc2fa7b
Date: Tue, 09 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757376593
