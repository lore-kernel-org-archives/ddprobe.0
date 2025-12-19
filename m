Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F212737F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766161434; cv=none; b=YUGCwHlH4oseeBMw4+m+CPxyu61yzFmaPAx9s+TCE91JriWwFuRwOIJ4thbVpZMyZ6cGliqWetveIi6pkRzwEW7DH0jAw2XWsp6mTjRNvmeTKMXXY2zTcQK8T4nVmPgZZ/0uhzURcAEOWb7+IJBE5LzWIoaWTFtLbco8SuZt3H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766161434; c=relaxed/simple;
	bh=YdG6PAfYHnAQRRvmpm+dFSLipJZ7JLOq5V+gc1arf1g=;
	h=To:Subject:From:Message-Id:Date; b=aOB02Gj+ijB9R5TiIabjCLRyas31vlSP7cqUr2zAxTUM7ONqg7yLs9zR37wNsN6KhkOT4oJAMPCFw6nFl8e0/yJhI7RFrDZvIDdQqYz756Qcovz04Rgl0GUCBOtziJ+h5ZKgdw5P0KSzvyIYf1v/hYT4+uK9s2pbrr6SfmuwPlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSpMG7Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSpMG7Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A767CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766161433;
	bh=YdG6PAfYHnAQRRvmpm+dFSLipJZ7JLOq5V+gc1arf1g=;
	h=To:Subject:From:Date:From;
	b=GSpMG7VvUsxU+jTY4s0Vl6W3pTtFztqsLMbC7+3CGSHAKeh7wTZuOb7/xNeU/Xbm4
	 gHVHPJM2gxcPvuD6B6E0rBJBsxjYVLiAnKplZCXubmVDZQqrNNZlDAHvqLn/1PnS0p
	 ItM/74YIlCXtqB4Cfyic80DE4tq1aoAYuKl8xCKXqm35KHoj2lxtgsxOp3AbX6Xnpe
	 bDZkErd0HLY+jPDKtoGjvLD1qh0qF1M9xS5dqRbE69imhb7ayqlUZ0p7IMi13dCvdn
	 6gg8J+kDfK4A5Ba9AKZFsWS4IYOFBumPnYHhesv84EBSzNkA2mUtIWOae7GdGE6RWM
	 WG4lMzF1RK/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358AD7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616143359.21992.9821220675950842493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f850a4057526d97cecd0a420ba0658b31f30f56d4ed732539af2c04daf728a9a
Date: Fri, 19 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766161433
