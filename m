Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383B9234964
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779682354; cv=none; b=WlNUlRj6IgnDOuf5O9a9HzPpzEFyAIFC8HIqHAkNkeKr2tY80Ev4bk4kYusAgCbSlBckKAZ2Ca0ktdtiZ7pyl87Jucgn+dkSjifhoM9JcDGSUtR/nYEf41V9OJegcZvjm6bLPFeDvC9RCSKTSkqhIN42vGkGkHAApM5ADRPigu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779682354; c=relaxed/simple;
	bh=3/vj+5vxlhanxGH8gHsajbhFkb7PQkP6nD821UB6wfU=;
	h=To:Subject:From:Message-Id:Date; b=NwzmxMrtaWDzFOB3zd8+8FRyxytemgvUYhPdFHMtaXtOWdJ89rcU0+QoNHeeNERd3vMPuVFD1jkXa7hBViQ4QUv46K9CB2kbdRr+TZRar83dlK5joeFFfhfde+1JkTmSHXIlTcnD2UtOIBsHZVXWXjeq2S/B/4WosMptCNzO+RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmiNFdmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmiNFdmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09AFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779682353;
	bh=3/vj+5vxlhanxGH8gHsajbhFkb7PQkP6nD821UB6wfU=;
	h=To:Subject:From:Date:From;
	b=TmiNFdmdvkH6DOxTYTWYH/J2htSD44rnEKeukBpM9f+GpDkfwN5tk/4gVJw03gwfR
	 OXdqvFdW7S11+nLO5QUv8VkIZIHVQ46As/aIY4HSMzGfCV6MGHgrbxfwUfFtDMOLga
	 tlEX8tMIZYv75eqkB7JoYiv/RAlQcMmwJpm7tw3C1ckmnUkJuD5fPy8f15CYrphxES
	 HA1x2/xCoGN1o/4PzrOUAvBRKSAy2SKgXSv8oXwLi+kW3aUfg2qv480ZHfxVocHbm0
	 169+kqXONYLG+uLuVpYFmwAyYjAgL/tsnWLyahZrNhRzsHqNE0dYTXdxav1bArynrK
	 4Pc2+HonRijgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8739CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968235368.28893.7084227215579354294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a14a8ed9d9f0d9b66554319d6c967a7eaf8fa6ba881d2e560de1a68f8db6d65
Date: Mon, 25 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779682353
