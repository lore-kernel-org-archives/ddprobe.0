Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA32773DE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780166614; cv=none; b=r0/3wmqK3kXur70RQygAlG9MWIM1DVHC9cY5ZyvKZCZtkiYTVvt12bMZ8zONGht0k//m6R+be9iUsuxbzfSCn7uavt732EDfPblb38qJGbs4aA5DldMvR1S/Fm3Qf+M48zbWmU+ev7w6IkUDhCNZZkZaPUGTXS+KTjw7bpDp6+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780166614; c=relaxed/simple;
	bh=uqqo9RL8O/dSA7joBOszv1BhF7QtZ1oGsGdnt01f/4Q=;
	h=To:Subject:From:Message-Id:Date; b=MwK87FVWP89FkLMz7q/OQVlFJ3RLTWXm8EbSatMLPZRaa/TBBFgrE0mhbg0xwyZDDa6BidJaz8gdhExEdwEOlQXU0rQJzObiYiHllxaKu3L+2YlzVBF2wx3Zes8YoRW2jYpmm4hVIxMg4vqxo665upKCv2YTbrkB9UUPR9nwAF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aymjSGdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aymjSGdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C66C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780166613;
	bh=uqqo9RL8O/dSA7joBOszv1BhF7QtZ1oGsGdnt01f/4Q=;
	h=To:Subject:From:Date:From;
	b=aymjSGdfNZIkzO4LQpm/x5tXKEmXf9O8L/cc6c3EguJ+MprFUj7PwCPkEis5aCDOw
	 eBx92sC13CgCqq3uKiT7Ac8GzmP9P64a6dk8PeG3lSi2YuDAST3P4PkxXzbepVGKcy
	 aPHI6qAf8oZAl4XAhaJ1yv1EsWRkmhJ5nRymvTbOF1WV/5qRKvoEskdQmfkbdGTBXP
	 MgdBhRS8SobY9biQuZeB5Cvi7B+zlcfFgYHUmVBfH8ZEgxd3TkaHLU1BcnJ45tCN4X
	 B1HD/Ngo6kEvob0PSCvJBxmpXqWTqmrGG/CWynxjMsQJGpqcv1CPKAK0rXhrZ1Pku+
	 p8wx66J93udWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B67CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016661370.22727.3620000711365148350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e628036046dd889c602eb894255e49690755cbf4dc5a803112097cedf41ae62
Date: Sat, 30 May 2026 18:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780166613
