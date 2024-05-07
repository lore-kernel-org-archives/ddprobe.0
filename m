Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478CB7FBD2
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715125343; cv=none; b=VJ4GVmC5u6jsgVXriehrFjDXZptiUqMzYRHS+JdZxPMfO5rN3rICL1cdpDBnu1HBnRGHcgBjcD2RKFegPeEUzQufB7wXztrgFfkZ8QkknxDeANFZS12u+J2bcHGkN2Ly5zc3NAisAu7MUnlyKwChX+1y7v7A6DNjLTi/2gJhRug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715125343; c=relaxed/simple;
	bh=1n20taMRriB1b+YhzN9LiC8potqyNe77G/HL/jFsrq4=;
	h=To:Subject:From:Message-Id:Date; b=tnMCcRF1FO8iktiWqnHQpbxNDGosAzJ/TzfIye6f8dwpUJarS8a8UhdRQDf4UZgLU3JnZ84OaevvXweyzNNa0D3B179N85GGw+o1vnDxS/C3sBtYHBEUa2sqPVpKwJV9k8GIZFgIjlmSb1SpZA92P7FO3BruJDhI33KzRQIWxtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF9s/dfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF9s/dfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9074C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715125342;
	bh=1n20taMRriB1b+YhzN9LiC8potqyNe77G/HL/jFsrq4=;
	h=To:Subject:From:Date:From;
	b=BF9s/dfQBcyRtsPKZxFhVUQTGeXwQw8GA7MfkoOP7ZEyrH0DuY1P7t9SwrPF1RF4j
	 btajWmvxqOCc3/v20WLORbvJpVHaIB8AjzzVlp99qUPFkIHybEMe04LSLOCXen88co
	 egytCvbPizODiQWaPx4lpTLLooBvZjtp9fuC3IIAO2Jt7orXDu6FWzdeYv2LE9TefM
	 SaUvcSwIjMbynVMUvcR7nsui1ujoOGj2g394slaKrCw2An5ok1tUCkjQrefcoJD462
	 sR5nf0NfsSMY9+Lcnls3JXDNgQPWVo+X796TIYD9cXwBKm+eO/GQc6Y1+Bes/BZ646
	 2GVHiGnSfdlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FB5C19F4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171512534279.23945.13479814492722869435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eaf2c7c310c829984abca39b783919df3b6d1781a053ca75f0b27b1b1d6dc87
Date: Tue, 07 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715125342
