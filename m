Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F6B25392A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760500194; cv=none; b=nafodtypnvPfqIdTmFO5veFbIFXcQCwadtJOXZgSqMNB96JKjiUBM7nrO3JW5+DW6SDoYU3nC1R1vzcwdLJdBpxsiy8EODNDqIexQzN7tk5XbJjiZSXLrqg0Bp8bmJMoiNqZ8h2P6ogWK4VAY0xjxH/UjPb+N3IkXnWIjKStHQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760500194; c=relaxed/simple;
	bh=6CBhgZ1CDAnmxsX92LKYCw7DKrZbCGZGwpUcyTW8YE8=;
	h=To:Subject:From:Message-Id:Date; b=L+q3UWNs0DbmCvhpyIY8tD3JwYgNQgz/2/0lX3x1wlmWES/hQkGRwEZ4MEpJ+vgNFbzj5RLRFCaaq/P75ll0cNZBwuTH18nhCYzANyn4Ex3aX57ZyPzgd5XCfclWzewNr1Ert9wzNMoMNXORkhb710kqqmOX95xmzlQE7gFyjgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMh0qW6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMh0qW6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760500193;
	bh=6CBhgZ1CDAnmxsX92LKYCw7DKrZbCGZGwpUcyTW8YE8=;
	h=To:Subject:From:Date:From;
	b=iMh0qW6U+uOrmoA59r0C+Nd4fijZIp3w0drHY26RNzleOM5MifECjt+uI3HK5BY/L
	 uuv+VrA+TJTAMEc2P3mj+v+rQndnB80eoma4wXRCXXrWf7lhnMuTpyHclVoMKe0YpP
	 7+melsJ74o6kY27FG19jJu4vcwGJkh7Mw7XmIRx5T2dcy7X2zyL7Eq2a4aN+i5nn4A
	 0USgIkG2IHeSFTR8xbIBnLb6wKeewtILuvF6nnujxbT8dKWs4PLmamXpIJ7XT1kIQO
	 TMXQBtiR0BQe9CUfnkbngS7tP5XkJX/JJLVIacZ2de2dxMCqSHbDTibprDZ7AjPX3H
	 eYFn69uH2BqYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F151CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050019357.20067.14002218636227645638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a5afbedf36ffe7c110941c7a3ec757770f8c1b025e18d4491f1bd883eae288
Date: Wed, 15 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760500193
