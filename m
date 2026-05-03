Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DFD221F20
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777796254; cv=none; b=MdipbXz7RHos1j4lj/wr4FY/MyoeS9bMN/V+1LAIo4a+TC2SiIrMC+nTTgZ29T2zkfY1okjl5YDfPsz+KrN/P+8/LshD6oy8FmTrc8K8NGLMvMeCo58pMytSK7N3+Bmd5CzhzGQz29DFF6xpehVqqRLfRFTC51xd/mWykBo9K9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777796254; c=relaxed/simple;
	bh=IrLiRJ9zOPzb86qvje7y9ZBoCSab9Ru6pjOyrR48otU=;
	h=To:Subject:From:Message-Id:Date; b=KIOqHVPR8NIhibHbxDdFnLNOq3pjqMl+fuFZCYgoVHm9YJ/mMBz4EskwMTBje5PKghhTiAcEyZ3aMp5pWIS3NmsXNIxN8OYF5B9xx0ZSPImPOMvpNsAHG4FNPQ1Kh1rXOR+F8Wo7iYhQ5ZDOUul26iXzKQya0h3EYHf1ToS0Fh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhRKX50i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhRKX50i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF652C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777796253;
	bh=IrLiRJ9zOPzb86qvje7y9ZBoCSab9Ru6pjOyrR48otU=;
	h=To:Subject:From:Date:From;
	b=UhRKX50i8t3uENWWOpHF2Sk/uf1ZyhHmSjaYUd3meM7bK3/JhnePpRr7fT1VlQVUl
	 kJAQmbb17EexoMMX+s0tlehzT5TItSLkPz/swSkJ3P0LXOHrUKPjoiVLn45O4QKM+5
	 IM7MhfR+TUl/xbfP1rTlbsFqHvFAA2f7dOvgz+si1PpeZourwRcvLb3tN8ghsAa/d2
	 K3/M9LeATWcdMu/bc2aK6UmbBMWPaa3rB4aiOeFHg2fbXskT/3OztLwqK1kwwDVUA5
	 l+Ny+8lmoiw2qmbf2QMOr6LsAaMw9NjmgOIFrCGBLMmFKnU45dNv68eU+kFYwB9JrF
	 1MYgGV/lFhgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CCFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779625368.28483.10113613203592725758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e710f0c922631f18091bbc79f36bc1fd52c34a8269acea5ee28b585e8ef4d0
Date: Sun, 03 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777796253
