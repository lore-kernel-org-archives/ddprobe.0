Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EDE1A9F96
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780848274; cv=none; b=d917pCRknFdhUStflzS7C4bfyLu5bYhT9U3hbHyvE9ZJOs/W7rIaqrr55xFtfJ5SabH01l5MsF+kkC1eKmhXGm3OkNXZN2b5ItWYMGgMgFDBHwKxg/M6/ZWzIPX097RfkyKpjAm/DoBpFO/+zuri4m5J/FhTltXrt1lTzOzRZAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780848274; c=relaxed/simple;
	bh=FsjgnozzKgJUMRPBIlVgzm7f7Yh5W4oLXUTvfJLKa7w=;
	h=To:Subject:From:Message-Id:Date; b=YX1SsDgiDJvdst7EJGBKbw6ZwuLO429bpJ2y33A2+/0mOvRANuOZ0z9CCICn7KdFossT8nUDjo0yAnm3lZGEVS5BIxEWtroHcA1PAgklkgFPgAItNJJbDmEPceWNA21vt6S6ev3WkujZicLnUiIOSKUSJo80gTrIMwIIb4QvJZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2E/aKul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2E/aKul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780848273;
	bh=FsjgnozzKgJUMRPBIlVgzm7f7Yh5W4oLXUTvfJLKa7w=;
	h=To:Subject:From:Date:From;
	b=O2E/aKuleDPqByY41tM66lahqtSuxY8AOYZ9O2rO7X0lvQYPEpqrMxDYuZcLTCOip
	 3OpCXwHjMBk+1LPwFLt8BBA2zv+2Ly+szfm7sqOqe5//qwnzfdS+lGB4o9RDZhFNcu
	 d995fDzvoNRk0P9JSxEl4C7HZDLnnM2OgtzxLO7ikwwfuSXh/5k7zjPLhH/E2L1tQR
	 e3uJD0uyTh4Swrz++mBt6l5vCw0W8XHIkXn7oo1hRPju8C2Wo7MMgi65a8Ij8K8P8y
	 CkWsuUR11imiUeSLtxoWoxvsVyP36uVcL+SFWWumtCWHat0Lem2AAe44a/zhMQ10Rt
	 +3uWaHgzlgjaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B453ECD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084827371.20091.15415361938959134136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144e27f7f50033d1aece6277b506c98d0a16eb8193f53826d33c3a4f8f11a841
Date: Sun, 07 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780848273
