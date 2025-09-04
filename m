Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6DB2F8BD9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756979394; cv=none; b=K67f+YT745UTbB1JyAldvVp1QjmHTT6TTrHdSs5r0SllTCCQpsIqS07gNfhewNYSZRUbxYfXWjG9GepSa7cJIeup9WChaV6x51mN5E+AhWoV9+I7JAYek4Jn/oOTmuvdOIwadzE298ed7z2/mrXqN5XsFMmjc0PaXV4BFC2x4pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756979394; c=relaxed/simple;
	bh=mTtSGTE/wVEogXHLFW8tjMcx0jUN8o3N1VaPQ3Nw8JE=;
	h=To:Subject:From:Message-Id:Date; b=pkSni1+TmUyqACdyE1KPOCQbRfjFkfxoG1LAJ87DMOUoY4szx5An+Q5gmluqqonIZTO6EUUCRf7+eUKbW7aAQwD0uBu5MyKWYlmnft5gnwoNCXr9Oj0oL6ggSE9tIavGKQpRHeAVezUrPgm99sNpjFotXMRswGg/EOIopIVK2js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFb56asV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFb56asV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFA9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756979393;
	bh=mTtSGTE/wVEogXHLFW8tjMcx0jUN8o3N1VaPQ3Nw8JE=;
	h=To:Subject:From:Date:From;
	b=AFb56asV5c8YyOSlijSpHEcEPsQ07NR1AMG8EaCECWVuxctiOhnOVZgrE2kVW5ct0
	 bha0Yuf0jlL+4qTqENTJKRTUlyXioXI/nrSKZzFcNJzX+BMMmuhAz7I+7zhmPdA87W
	 6zP3wHNvAa3Mh2trK5A8bkTjx+WXf60vSWcxgoeWbTxVe5GchivyO23IY/tEtVV+en
	 IPkFO27DSnB9umyRwg4cB+/Ly8UZCaB8OUEV/gsMMS1YzGV+hlt6ZxMtlGyGj4et0E
	 MOIY1KmUB21Ldc1ORzkzqGRFbhnvHk8h/kqx4KJlYw7f9Bkjex9TOrwlEdqrPPCaVl
	 yhkzo/iO3Msmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D7CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697939358.11028.15072083351523234610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8229c3cd4e91b8a92d5b76c2dc778c4e2e2a59351e60201123124492f0b9d657
Date: Thu, 04 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756979393
