Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06C1EB2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750125594; cv=none; b=sPg0Kj61HPtYuUtkIwtq/WPMgYmycbG7+oOLaQNayAkqh1MUGRBjHpqQuS5nfdOtKrjIwxovjXSO7EbLWr8GpmG//sb4CVnkTDiCMcpn9iA+b3CO7MAb1gggepJeaOlj/CXIF3fZX/DQRppbxLwJQ8W7xrOUKGTkrrelsL4d+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750125594; c=relaxed/simple;
	bh=P1HXDRAqoN5/7NlN18EbkE47qAtaE9uUtn/DW4XCwGI=;
	h=To:Subject:From:Message-Id:Date; b=ohmOYYZJ50jdY64yD7X8xdtE9F/VXDb6tpTdg/ndCVtZMQV2ObJSngo2BUpl07z5zrskJme4IEAKTVUWDe749pQ8oBHURJ2u7TioyrsVYyDRZ5R7B79zQSH0CMxGILAJ6UJs9ujxeJ5JSMMrokeWS3QEBxFxSblLZU27SBaPT+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXXhUS7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXXhUS7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD445C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750125593;
	bh=P1HXDRAqoN5/7NlN18EbkE47qAtaE9uUtn/DW4XCwGI=;
	h=To:Subject:From:Date:From;
	b=AXXhUS7ri8QM5eRapCoCS0AvtlLF7ohHFfD18WYT2SczkomiOMpOD5Buo5XkQJx/E
	 GAGTdgldDwvciFAlflcj//jDp9apGg7DisJpjXLHmlD89n4lwAnGVQxfuxxXTN04IN
	 14CuEM1ynComB5eZZu61iBaW2AcVaatct9t2g97omuxLGAazqLxCTra3Dr/MCDZSii
	 enjFp/BfU8/5XKdSLUsRGcf4VW7hJs3xPPfEDefirFgLc6wsGVZE6OCFG/K/t1Vp2R
	 d90Rbxby9CmEvhrVDS+7b6GspXWqemX7TlKfVtELZcs8cK+DZfCxyIccIGX5DmJjED
	 OJFS+y59p9r4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DAC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012559358.20198.4047344516193374238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b6b92b7e42d5b8084ad3d8a1abfee5b9d18618ae95aa90aa10f211a02ba87a
Date: Tue, 17 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750125593
