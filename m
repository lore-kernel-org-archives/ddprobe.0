Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267EC2C86D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765215774; cv=none; b=gFzJbppOvpgPMcqNYdtBKC8E8hsK2kW1KVLbvDickDJlilO9KGka8+LrkKwBfWzupqtl+V7JSbSVU1qd2SXWjLk8GpohqyzFgrnsHNj8rB3JuFuvUsyjXvwd1lmRbxsYzJOMJw9MsFonQuia7K02ns0eM8hw+iXV9KjU+uxMk30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765215774; c=relaxed/simple;
	bh=P3oKb30z8y3jt64ODxu+bT9bABvk6KrolUkDek2mXOI=;
	h=To:Subject:From:Message-Id:Date; b=gHiLYZC+a/JUNtQ8W32VQ0jbNggEneSWLZ92MCETOy2KQNukJmHj/LHhyKgg97wfIfC4LWNaVEJdQXyZ9EwbI1JAC8Oyp4g/uiJWo/xtycYYn41sT91FHYZTVpUOdJ29OgyzQJJLQZcLPN9jIcLMpv4+Zqs0B2SMdI0tBzH6vYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvH2GqR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvH2GqR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8A9C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765215773;
	bh=P3oKb30z8y3jt64ODxu+bT9bABvk6KrolUkDek2mXOI=;
	h=To:Subject:From:Date:From;
	b=fvH2GqR9AsF+6LHUVmombwtTxS0kDNwPCOJBGKxr8WzfPB7UFflh3Ed+Y4mN5E8ys
	 Wf6QhC80FRagqawODCjwUCNxm1NpVo9D/WAf7Uth4f+f3o5ZwaM1TYidAp5wxN1gnH
	 +CdhyAeSWgOl+xLtw1qWkhITM1Eges3olKh4Yqt1SuBMt6FbLk6nv/WnO8IWC8w876
	 nYo1u29AzbwXsKksNx6App/ygAS9J5kh+sxV24ZmUlBsJlYfZXkcBF+MsOBQfOya7n
	 vspov6JA3/KGBTgD4WyCbXyHBtyJUXOWmMokltEZ35VmG1RTam5bXCHCMhs1lqEav5
	 0NeDEvEOr1hKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3CD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521577360.5993.11713641358407420916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0bd2217fc98cf93a5907dbe3a40a0254e0863ee69e32a5d8f53332745bb9c7
Date: Mon, 08 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765215773
