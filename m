Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910D84E07
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756009794; cv=none; b=oij/BAvA1A2bsFs5HJHZ5Js87Z6QNry/BSoSZ2zxLYMSIizxFtnWjR6uxbj97TPJVGs6eXA7Z7f6SDmhOc8yBroDbr+TtdbaNc6s2fl+wt09/GG5fpsoy10LbMZ637XemDwI5tHPCCrqiPBMKawHQ5zlL8HY+y4Wbs1Eq1xVGBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756009794; c=relaxed/simple;
	bh=Csr/ofKFBzJCJiPPC1NILGJbZ+H9T2Bz1W8/freHjgw=;
	h=To:Subject:From:Message-Id:Date; b=hoGAnjBNNKhfl7Mc7OmSoEcBL7GKbv6CdnWmenOVk4lbGoMq9sd4uyvtyJEhMObZ56McLtzhE5WzGEQQI57rikxLFRMgxGZIXQ9nyyWe8tOFxUvF8xZQfte9WuXG+39inkqrrkwmy2PK/yuhCl+j94RDr9cFTGfCFq7MiAJkk1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3clglaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3clglaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4306C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756009793;
	bh=Csr/ofKFBzJCJiPPC1NILGJbZ+H9T2Bz1W8/freHjgw=;
	h=To:Subject:From:Date:From;
	b=l3clglazQ5ufU2is3FNf64LwrS8TL3kCg+qi7scONa57DqguCOWPTnJnuQovV4L5h
	 pYzkkvsXIi45LkEnxhIVmjuKoJNGNfnBCwtYLNRM0xNH0z3OqScHkDMqWrxv6WR3HI
	 th9MUtUXkJPHhsRfoVZTzgBoN42r4Xitb8rkF48E3TGJEo+rqev/erWN+2ogKAILjr
	 GdMV20z0w+Lsmtw2CXTuVqctdhJpSZOC2LTFSAeN/JYOVHQkxW14f76xMqT2YtIVHa
	 OC3pCUOgb4j/hkgjL1J+dSFL4etGODUwu0WGFSfoFoXajfB5DX/5cuYEW7x+ZgkZWJ
	 y4cQgwr2AnLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA2CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600979358.10794.5914201614974329976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356a5399cad17123046ac6dc370a5c3ca500f5d5ad810e8cc37b436c8124502a
Date: Sun, 24 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756009793
