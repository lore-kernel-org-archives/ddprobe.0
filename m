Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F01E1A3D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788206434; cv=none; b=clk9nd5ShEqwTdJkAq6MZI1GFnt9KhTtHG/RfWDdhjn0odbiPRPvSnkl9nuIMDa98k7AmTlH5eJWwBXQ2qbOoPM+jVitlxNxqj8+DCIeIBOWusM4jSFkljnS7W1k2sJOos99rnPUyb8m8WhIsMWdyXy2hECc1LL1/zqWY3Wpkjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788206434; c=relaxed/simple;
	bh=sPo7NNEty8rqYJ8FjU1tjD8G0i4s+OCol9BVWDOFiOE=;
	h=To:Subject:From:Message-Id:Date; b=YbP5TdVjoUC0Fl8U5vtNFcYLAy7m9od3LORJB36Ofj6ae1iOHXbrcJ947P/6f6Ao0fR3MVc/KGI7Gp5+PakVUFxpdORSjr9oCX7XBsU/kYmFWJ7lXvNiT/DeLzX1nZskwaF3qBczgSzZaAf1QZQtTUkyfhmzhzSJJOM9FumT2+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2Xt00Qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2Xt00Qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD191C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788206433;
	bh=sPo7NNEty8rqYJ8FjU1tjD8G0i4s+OCol9BVWDOFiOE=;
	h=To:Subject:From:Date:From;
	b=H2Xt00QeyuwR8+oJsyIUdW1NKQCNdm79fCLbhAhvRwpAf99fE6wOd6m1HNpJ1Hfuv
	 R0Tso7gGE15mZxa/bNWFHnRkGefrY6Cm8/Afz/7zwqXMcsWhZJiXoGwtoRoxBOewfg
	 9NPzUZmq2vozWyOn1VmyY3/zQGu2PB2iChBN2clINZk9tZ+1hyPcxnfJ6+2rgYTi0B
	 ITHAeCSwk0XA1Kz8j2bCnLEPqlzhrr53uJ/tl90WBU2ixkW29vF7eP7speiRvdChWt
	 3rC1o5WBy1Q9kRP/RmqTb/LF+GUmBpWOYM9EkJ7ZyFEWaDvRlTii5g2HgIBV/FL9Ft
	 RAHeHXWsHFROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB884C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820643369.25948.9888329710878785602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bc1148fc21cf7c1891ce645c3a6ef51c4aa2a29b6e31ff790cb5285425306d
Date: Mon, 31 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788206433
