Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A56336C0D3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336494; cv=none; b=YZ+vUPBNO1e+P1+NTqir7FPVDUZX/G4IzkOBocnsbuAg2t0Je3mUT4ykKlaCtVozc40B8P7HBkbGsXzX097zRUrNiBoJm7j9G3K4KD4QUk2/zgGMqq2f5os8/pJCp64N7NAT8eOs621fUFurXpuj9EqCh64fNZGGie2dx1ETeSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336494; c=relaxed/simple;
	bh=c3LZ3ccTdvKis8OJ/tUoQzv+VshKYCPhQkSOYjEA+74=;
	h=To:Subject:From:Message-Id:Date; b=XmIRUU3Ml4KWMCuitOjAARGlXyC8J3gnKH0XOVC0Dbi5ZGdl3HcXa8B/D73qquwbE6VVB0UMzLCsrFnijYWgwnJdfSDf3IvqxHMM43vt0WOra8vHwjeYFwxp9fM5NFmc71zkfe7IB8sa/FEA5755PJdjwkE7+cKnxjhjNB2lij8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCsN5gQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCsN5gQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C0CC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771336493;
	bh=c3LZ3ccTdvKis8OJ/tUoQzv+VshKYCPhQkSOYjEA+74=;
	h=To:Subject:From:Date:From;
	b=UCsN5gQ7Gvci4gqmRvwZ1x+KNKRDVpnM0cG54Jwf9+KSNS5LPHULefrz/xwm/Bbtq
	 zJHjdaSPrNG5sRvyJKzLyrACMB6KH1A6PUAC4Jk6YqrMhY/7V4B8rYKB26q0cMOJZA
	 WatWWPBs0plLM5Y7MW2IhoKcuRv2sHISKk77B2tJmEDitxorC3Ii2y39gJJIqdAdkK
	 Ln5govUGJVL6NuwhJkp0m1iP1WiI3viJJ+OgJ3tLoquiqbU10ST2Q30mAQPPwldq99
	 7r2H4rF6PJ08+ByK8vtixMNr55xC4CkO3esVxG2jydn7WQi1BbVsmqdhvzmHUKQ8SP
	 Jq15O+aisJAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9FCE909A5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133649362.16207.1699277803704697482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639b1576562ee68f2348ff3cdf380ab18b66447f702cd01ebdaabf11a820d76d
Date: Tue, 17 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771336493
