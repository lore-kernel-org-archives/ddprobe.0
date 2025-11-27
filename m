Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3959CC13B
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764237774; cv=none; b=mwNVKLSZoC9VkCfEpbYN3H7KVKDtTcDHaKLEdL6HCbPlkP8tRkxXea+jGRfVSmBe1UKDWBxWxz7mBHUpRIZPt2JsHzugTkuiWfDwPrATpE4QMkySwlZlQs9oIXmTe1SI9tkP8nuwuCeoipHMV3jRpowEASaw4esFVoy6MA1bpoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764237774; c=relaxed/simple;
	bh=F5qqMjIvO2dYVemAGSwvRi42koXjjFxi8/M8nTsb5l4=;
	h=To:Subject:From:Message-Id:Date; b=Np9ZvREjZUEu9c07At+fvyWmmB1bPtFGf+07L745Epa73hPXSgsKoyNVR7dQFPvAuTsn0lOx65Aj2hrzLpgp8/BlC45nDK4aG6EEtnUPFn82koub9PBcoGr9UtM4O8Tf9CTvARmjoTx9gzeSHS55NBwQ0pSUcyIRflolhTsmIaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diti6UVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diti6UVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3E2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764237773;
	bh=F5qqMjIvO2dYVemAGSwvRi42koXjjFxi8/M8nTsb5l4=;
	h=To:Subject:From:Date:From;
	b=diti6UVanyPoguNNEjJRyeFUy66hz+22VjM2I7wGiWKNvOiKefnjuGAQG2x8a85B4
	 Ai3uknRbz7MnOcMQ9ZJLaFf2pCHlCJntjZ/PpgB74a2D7atlzGWbxmYqQ3pYPVMgN6
	 8MwlxjEnW+CQFMsn6DQRcpPTi3aeYoKjcVod/W+QTVySR3u5Ab4ZtozUKUxRZKpa2V
	 MsbQOYaiTTJmQ6ttnJnlAcGOaF0gSdRmG6Nt8GoNsXtwpoLOKcCwHSUzJCqMrIVed5
	 GPgm9UBlE09ec/y77dEyTytqnoW8jRvFl/UD6MUjGM+zX+BQ1Tr7Lb2an2LgA0F7ro
	 jcZY9mVLVNjOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC0ECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423777364.26347.17465473079011487358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a1a1e20c36cded2e02a5d967482445385b1fbf6aaed47afdf808ec0b2c49b0
Date: Thu, 27 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764237773
