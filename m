Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227212E0934
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762468794; cv=none; b=CIrbFKMud8y0U39MILepG3rUscXi01W/ZnMrKIfXL07GlQZ9OmICUybyUdQgD4N3SzD7W2jonOlMQBjqO4o9oStuLmcQe7LVJ9XxcSJhl5bLYrlXrTpf4ZHOvWbHKiolG5LHzVYnFkO4wi2nrrwT1PNgCd59xx61dibhw4LYsI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762468794; c=relaxed/simple;
	bh=+jA3wc5s4h6TatE2czaM9bQ5HxDToKX2mbTKqCBDZXg=;
	h=To:Subject:From:Message-Id:Date; b=X5oHYez0F63iZXAZY3iRPTPOSYibJRKjYmGlb6FbpBr1Ak4Xc8gwrQm61C4zcwoLtMHdlrhXWCXY0VPsfiKOFmnFYeh9kW644fqPrRHpQrnzILvq3akA5HYgnc1ttANa+zBoAHXTQatryIvn1arTpEoPIeTKjU2H4pHXUvzrj2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4pmQ4Yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4pmQ4Yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA77C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762468793;
	bh=+jA3wc5s4h6TatE2czaM9bQ5HxDToKX2mbTKqCBDZXg=;
	h=To:Subject:From:Date:From;
	b=Q4pmQ4YcIfGsEe9PtPNAMIJUbI5vhlpgbTH/aGxenLvo9wthMnTDHwsHVYcC8im3n
	 /O2VAhhj/jpy5XrW0u0VWg7jTF0vJr7jinBpzTPfZbCGkaH3Xi8dGAeZUJyil3eY8P
	 PFHIsduUpwpjN8sclHD8nvD4WZr6z3my5V9Ltyt8ROH6gEbCYuGtKYbvqbYkazC1il
	 9ouGHNAggG7xGpEIXSH9EIjso6A2QftcuYkbGLC3B0/LeiuN1XxgrPySJcqYIT6Jxk
	 wbPnInHrNDVaDHgSFvy2BgXiyqKEcEUjq27wyIVkVpUylEsXu2Ijm3m02OmZlfW+QK
	 LFzW9LYhrFgzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4BECCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246879359.19735.10128663518408954431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee3cb76cc75fb8c332d17581d90427274cdc4482ab0ff22fe4c778309ed08dc
Date: Thu, 06 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762468793
