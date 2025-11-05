Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB9A28CF4A
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762331394; cv=none; b=ElYI43GIUaZVrqJdVtBxycG2xuxpmjOI0R6QHdOS2EcmNsKg+N+eKPnew8vjrcjPpp1w/EE6oI+uCIhoKjH24drN/qlcFvJLqHRu/fbD3d9dvqUUbw5b3lBn0y82mqMoYOxdhawnn75RCp6DORCTtMusyloz+MVbydTa+DAdTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762331394; c=relaxed/simple;
	bh=9pz3+7w0VrBa2de1P30SQTOcte1Q5sdCmn3fpFk1cKw=;
	h=To:Subject:From:Message-Id:Date; b=nEkXQgjkLc4thUiUhT7AVNE/XkZcJcaxUNquyT5u/D2RsJTtlPa6tDl9vbukq7FJHqa8t30CPo+YX+vSzpndH0wMyvgY0dxu9haostkfyuyg2wQzSID8UayEZelWn6idR2bR9xZ5O46Ej+RI2ZGUJmCUHk4/wIY5zmAGeWIBQJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS0qU2RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS0qU2RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D5C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762331393;
	bh=9pz3+7w0VrBa2de1P30SQTOcte1Q5sdCmn3fpFk1cKw=;
	h=To:Subject:From:Date:From;
	b=hS0qU2RKip9yF7hMrYr/ctta8MWUy6ay6/mo557JA1Mqk8W0QqJWPx2372bx6Llic
	 YQdOVKnzrR+4e9MAohuF0S95/zylER7GKOMhUIDjHyOa/XcgaSwhf0oXX5P7XxNedW
	 DF86xY2+DILWWLlrqrwdIJ+fjGCcQKhRhtjqDcp1rWg32FTMNxjGkZaa2V21AVKdM/
	 JgWAA8ZEtJMzSjw/a72TxvFNDJQEhv/5vKRgm0NTLpIBEoBLisisoapU77hZAFNj49
	 e/mx1f++r4V+Df8CG6XYWklzztBYP/LKpd7iENYrMpR3jLRJvBx4nR8rYS1YS+a1QU
	 pYsQvsn+GLbJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4FCCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233139357.4879.7019063180952497070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d625941fda22f734048a0c4a07fae4ed183e47f0d37e9fe5f00b2546a109f3
Date: Wed, 05 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762331393
