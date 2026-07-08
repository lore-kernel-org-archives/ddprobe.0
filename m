Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CCE43932F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783538914; cv=none; b=NWIq8rRIBvQakuF8t3qtZ97pL43D2MFnf/4UpRQNMEBfa8t986muUJaUcd6NK3DNj/2BPwlLaq+oihE9sJCHURzlmDkaCI8boTWaGTZyzgcblDI27D0Q6LLuDMT5efnaOzMNws//coHjRHWf7qpzfp/rBAxv6Qarohy+jV46vu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783538914; c=relaxed/simple;
	bh=H8wlamxT6rmUjGMDyZjLLl428Lyy7/Y5ooN8OpBUcQs=;
	h=To:Subject:From:Message-Id:Date; b=eoXueXSTvF/2mTw+ViUq8yUVpNjJpOcfWimefILwlF8TXeFx/HcNilwVwpQ1/ACSilWu8NXnE+ytgNEvdvyCKU/9Ii7c/hjWsUG89tAD1iwrRrARBd5eMk4Rsr4eZiQOOcHVUAzAAJ55FKvPFHY+MwlQDbU6iJvK13K2XvHVqfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMox6EQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMox6EQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA252C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783538913;
	bh=H8wlamxT6rmUjGMDyZjLLl428Lyy7/Y5ooN8OpBUcQs=;
	h=To:Subject:From:Date:From;
	b=aMox6EQPs7gXDvaxsKsISYUdHY0S5pn61eRHj9F3XRF/WvUR44wYJV/LbsDGITnIP
	 Y38MACtbWxes/7GZWlB9m7xYJq+yB0YdnYRVC6zbZRiuIPL5t9tg3hLu5FeCgyP6GP
	 7lPrUkxlKUS962sRIWpkA7rt4PgYFlHibhWJnSIINVJps3J3+Guy+p6CN6ljoqI38X
	 POuU+JTaWxIZY3WZkTImR5FLPh9/mTi3FFujnudEG4oqfFg1NzCvjIG9G88mPkQJwh
	 Cu6cR+TXzJ8tsK7Szun+EoZ7gvUxyULvjcR2FTPgA5Fkrn43FYRj4nQImFwwYZVxQ5
	 aZ4DovwvOvizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A834DC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353891368.15443.3033858832103721824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee28b0727f9a4ef5aa68c66bc23a3dda8124142f061f9ef0344995eac17bd6f
Date: Wed, 08 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783538913
