Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA4B17F38F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712775496; cv=none; b=SRHfCweWccc7FHzycN81VzQm0rBxYtK7xcxSjjfRluO9dyWpsDMG2PEKcIzIQ1aA/wMApV+Rw4G83OPnGMtKEgcFmQmAj4BEovprwFReuJFSN2P2eqUD2uD6oF3JfZxynSvQnbwuwudoeX+kXD2wiAAFOvQuGOKmq7T2wJ6IBT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712775496; c=relaxed/simple;
	bh=JgVUe9VX/dIrO99dRJJFdrXvy0yvg9gO9jtlQE5KGak=;
	h=To:Subject:From:Message-Id:Date; b=EZH+T9lEcyKZh7Z02OPpHYJyQBB51bgV2N+3v975bP2D+KBeqkY6Txad4vFK3fLo2Y+3hoc/JozlQfe10XxYvgaGt/zhCeKRwgAX1YiQ2t+cIpdjqnYf+jaAauLWr+6v7Rmq/eVNNBLzu+jUMFhlg0N9Pnhf+gLK14Yt7lINuVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1lft1V0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1lft1V0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DB9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712775496;
	bh=JgVUe9VX/dIrO99dRJJFdrXvy0yvg9gO9jtlQE5KGak=;
	h=To:Subject:From:Date:From;
	b=d1lft1V07ZpT74tf080Q9kyRZOK1nSBqyZ6IEG2rHamUDoeP9WHm8fQw22GOvWqbE
	 CWALVEHmadC9pwEMzThsDK4CidopEC9c0L1ptZRpn5bKMdk4WCbo3tzchXa3Nd2AHl
	 3tg52aKYh9q4b4w/krcUTytJOOXLRvx8AlwaSpyhsRzd+y3/174LNesUJ+zhsT5GYm
	 3RxuwEW5SMxOCBzCGUlV9pnrPOeldvUcr/PhDLn2SLcxNXW7/PyX7pMuhtJ6qhyypm
	 RZnU1Sfraf1CVPLdoVhejqr0csNLodWrw1JIhIaGPyETQD0z3fX487fh7dmY8A/uJW
	 oCxD3uF08Xsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7511BCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277549646.4485.6905844001933897874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0759bc3b7014b928ccad17c872652fa0787b0e58320753cd83193023da5fe7fd
Date: Wed, 10 Apr 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712775496
