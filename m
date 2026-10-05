Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59948414421
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791236434; cv=none; b=ZRp3l6hJNF82NB2/7lX2C2W+J5pQLtyD0Wp88R1sB3dSfDef5nnGrK7fNd6XsYzmsmDYon+cjXmD2oCVBekKVvSAAMeBLnR6E233mkJfdj/CmRRTJVs8H1d/JuJsmN1wIh4GKpxaZhOJCwHy3joJkMzmn2jkL7HxguYKrD6w528=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791236434; c=relaxed/simple;
	bh=UsjX3c1MYmgL2qBJH4pnts/w4ND3LSURkurUIxzE1aw=;
	h=To:Subject:From:Message-Id:Date; b=uHOGoJak9zbVxl0YhJ4KgNfiPuOgh+r0Z4Z1Yr7fSO748gzvvEWCZ/m9GqefrTpo9Y6GKaIp4u9BZ9SovySK+hVHxltonHaGcyHRxDsRP3XBK4aKkzlkw10S7WhxnQH8ZXxNGY17JfVlU/z/lReDQyvqhJyf7WS8mBJJjMJmMRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cva1MltR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cva1MltR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF554C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791236433;
	bh=UsjX3c1MYmgL2qBJH4pnts/w4ND3LSURkurUIxzE1aw=;
	h=To:Subject:From:Date:From;
	b=Cva1MltRRc4DYkGzoegojB+cOS9mzhzg/bRPYsbNoR5JmwEwyTvF72lUYjHEDdsKQ
	 w1RMSF0s8fS3OGy9VhDUKNAXqyDZsd0S+LhF4thVSPZyjGfXD1vTBa9y1hLwuo8YGl
	 HioznmDe+5cTEjOk294cKV1P2sHwCZRepgcEYwiWiLU3TUYJX06ok2Kl4SunepqYwI
	 LT0dT8WCACk/r4Tng/dZbKyK+TJyISb5og72VBlyof1R9/VpI4OwhhJbRLVzsiwUNt
	 ImKJqIWUoALGliI+33PqbpViBEQm3LcMixnNp5piOU+9oEAOJnW3mNJHs77C8vCSfG
	 qSYzn3yCaT5IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2ACA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123643369.3912.1463420454257583327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798d397f435de5afa952023fed1489a0dbc730581050f505754e3a7dbe430e2d
Date: Mon, 05 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791236433
