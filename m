Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729A415ECDB
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718662103; cv=none; b=nBitSfDbP9b1EtBfDOw8wxRSlStGdDqNpoJNP9DHgyqg/zA2rDyZ19tOFEAHqAelHkdgp4dM/Udn2RX06yhbotrnIwFOmqdA5uFSSGCkek00O00pP9s0ynR/ADgAAzL1SYj03hLVawkw1fTEpD1RL6cCGPdD8Awsk8xi2EqK218=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718662103; c=relaxed/simple;
	bh=XwDjvW83js9crxTZswxtQtiS7DrbvPzxKVb6opixb7E=;
	h=To:Subject:From:Message-Id:Date; b=epNLVvTn+AMpsgi59VJI3/uxK/E2Pj/PQE6l4qFj7v+Ld058EdF03EtDqtSpVOsTmUYdRzo6M1UO+nptyraJ0bnj18ttGCML34+Cz82RRJ07M7b4t1qceNhqnJt2jtC/uwTkFnL+klueZn81gOgmKg+cw0yPU71YGM5oa2zvnro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ8Yi+of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ8Yi+of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF206C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718662103;
	bh=XwDjvW83js9crxTZswxtQtiS7DrbvPzxKVb6opixb7E=;
	h=To:Subject:From:Date:From;
	b=HZ8Yi+ofotf4hxpHBzRlwrS35Em+xObHAFBeukITvaHnF6+SQ7q2jh3fnLl9fXjxy
	 8Vj3szvMxY9zGo9/Xa9bbQ8ajqiPamiVshFzN1R2mUEbI54ov2atZ/agVKEPR/wxWY
	 1kDmTbkgXnzkg5rjA1I2LiIDbnxG6bsk64g6tsPp17wecf8OFXWNkW0VwLVjDb4Gug
	 545Vqaq5h/ptcLCgsI1/NZBI09AjjkUEJLJOEiardRaljvaQPFR+OUJhD0oOfvFDd0
	 L3qEQOAlk+TtxmfBN9GFhVvZKxt43YLtuBYwEC79K/O4PQehx8Umi6cuCuttjk1//E
	 hLb/lR2UOc7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE948C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866210281.25547.13398804016126519085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97b013274e6a9a5e9f5516d585e39ee3f27c02ddd94fb0d0158e55a1cc1f1f6
Date: Mon, 17 Jun 2024 22:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718662102
