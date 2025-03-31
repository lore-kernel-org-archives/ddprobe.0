Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168F1BEF6D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743421794; cv=none; b=n6gg8mdTcsemG9OOzdn4VP3PE6/IWvEceMTaiD1tv6oEB5dVGVTWf3rCzGrLDo1QEdzHJl0T7zpvUM9kfG1WgYLvyxgWvR7FiHR0jpMwDjYcAuu4nBHPM2eX1T+TYdxOyWIDG0D78pI9MXd7S5hFGR05OkYExIO+G2l6URmpZMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743421794; c=relaxed/simple;
	bh=WN5DmpkNoLn1LR/aLBsXC/F9wcmGOmp810FK69H296I=;
	h=To:Subject:From:Message-Id:Date; b=lp3nhILXrp2svTCIAgYVAaf9lUxZY/TufDo8iZK3Qg0dfZ5dcUDoelrorwkxreptfFXrrSHjy2pi6JDAJO+YveUotWRRQYQClmL8Wkgs2GUtWHWjyXKWnVsU92BAQ5MR5aBzDoH36pUc2SF4ue9Nddc5VahiptChEe7yEo810rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeT3nDND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeT3nDND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB70FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743421793;
	bh=WN5DmpkNoLn1LR/aLBsXC/F9wcmGOmp810FK69H296I=;
	h=To:Subject:From:Date:From;
	b=IeT3nDNDiyAxTHsd1qBwAaYuDQnDu2g0HzFzdo3puplU8+iBMywE6TeiFrQaIRvpO
	 Q1NfDgVwzxV5oSJEw0Fj5tOKgXCJwW2bWq2uohcOshoPNAuA0KG0FpA7/zQYjT2Ter
	 IfKxoGyyF3C5fM+E6gNRWp1TVSTmulX4ozqWujftH4kTMlJLO72DT6BdNG/T37cUah
	 Vx70KnuqprdxDg6QN0ZKeMEca0qIaoYFTWgB591Q8mzkWdsjGJVfBLjWlwPCSXr5rA
	 frY6ktuow0E4MLxlNHWyo1+E2Um9/k/XEzhlF1Hze5rMcphC3DJ8gTNMRsaIs+rgIP
	 f4jGC0rFb5Qbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342179358.1697.6027200227298100371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab184e5fd4362973fd5b581ba2dda4d9f8d7d6bb09954034b0a644c08e32ae6
Date: Mon, 31 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743421793
