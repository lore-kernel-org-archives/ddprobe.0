Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6035A3AE18C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789870834; cv=none; b=Om3aJkIWcBjJZ5rScPrQF+Ccm8vzuAeGE7Hvp9eSQSAo/lLjs15TyGNqSh6SHJuNHVpqFdP2MuYLp+cfWnXbxXotbjzz/kjmQZH1wQvG2+XnSXR1/b0/2UtkjRewpEGpMU8NOaDWj44+TjVpJE6G6xiO0fPpf0xu1is1lWoPUtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789870834; c=relaxed/simple;
	bh=62KZlTk7zqiV+QJh8VUeIff3ChKwP7VAedqV1Ct/pGM=;
	h=To:Subject:From:Message-Id:Date; b=nCUHDQjO0vvJQ86RQtZgNwMZcIqLxhC6usxSGy9mQnyngOrP0PIrzAewg1FNMObuMVlZRta10J3U99c72jh6aqaC3MXr0u+0Mba8hLOr8YBoKhd0NOQaZWp1jYyKa25KCZnigzxfkysTVXUlSBHiLm1mOxJEVG2hJH1VJ+52Y/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgGPivlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgGPivlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A23C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789870833;
	bh=62KZlTk7zqiV+QJh8VUeIff3ChKwP7VAedqV1Ct/pGM=;
	h=To:Subject:From:Date:From;
	b=WgGPivlJPpgPSYOIhaekC4RcXxikU/aLD58ef62NOmxEpd8kHG0qdYoOEUtieTwCf
	 73i1qnO0h+HkefBjB1cS3cwybicBpC+OeoFA6HnfWA3vEOukIus7df00IhuqC9vqVU
	 ykfEdoKtZxKeEgYROnHIxk04lzIrLuVJPU8CbrwXT5kuhPozetL0CWxP4u00tZQ0KH
	 ZZwFC/6FrLI6I3tlW+FssXKVal6MIrjMzQk+X6IFEObr90n+yV0dF7kiB4WXavAsL4
	 OMBgPBuv8qam6NzZ26rvC1ycHtaDoSDPHMKubc7ZR1rfQ2ZfgPmSw658FV4X2v7L29
	 TkwQNDKam7JXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4BC982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987083368.29605.13867406476469286965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7674dfe01f2f974ea126e71a8232be64373571094de8c9c703a35cd291e186
Date: Sun, 20 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789870833
