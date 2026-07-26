Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0686628C5CB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785084034; cv=none; b=d9beoSuB5kECMdEVDdyIZxfPZ7BwRfTusl5PdMYL2syMgPqzFSVgtGXDmyWRLX1W5f17JlkrpVqLJUVE5Ou+5bTUzLco3me0K+zNblRE2rHsqxH94vntXwV5V1ctomHMn5siWA+jjp5gZOSv/ZyQxGJDHbV0UvpkUudWLzi0PCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785084034; c=relaxed/simple;
	bh=F6kUFsBdEmxcHdFzWLXauiWW3EP3NUWWXlGTABUjY10=;
	h=To:Subject:From:Message-Id:Date; b=laUGZuY4Bv4RYDZH189nHkPFiWzIFnEaP2b2o38JKw9sIuCcJvcZfRaHgKsMOmUH0aFJEkeqxECJQNfao9IkOUUJxaRvf2L7TxC2kNHk3zV74aaLpZSQHSaseQ7AFMJdbO5gx1pIugtKGkFY75sqgExS6K9N7qIsz866fiCtb38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVZZ2dHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVZZ2dHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBC3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785084033;
	bh=F6kUFsBdEmxcHdFzWLXauiWW3EP3NUWWXlGTABUjY10=;
	h=To:Subject:From:Date:From;
	b=NVZZ2dHEKKzTfyddMx53ESpy7/cvDK3fGs70gOlCv4FQ42ae93BMfrp1lTw41yl8J
	 VuoKTX6p/LueSqO9UYCVVNBEhxjJ6/WTjuzfru3hk1mi3sc/316p2a0JhXXJnXP6T/
	 VXrpPi0r7QRM4MV3HFnGB00nGoP9o/BgMcW2EZy/Wye0oCHpRJRIxC0F9eKNnlNm/S
	 nBTPrWzdCl5j4n5+vnjQWD54ly6AiMCKxbgJ9i9NDw1yFO56W3aaCD98bak0ZWZAyc
	 +6/H7pU/+SuerCrMQmtCXXCuizlzu2CnaWZuSGmp10JbUQPAF4v0e16cxyiTAsBUCL
	 txEYKN0xkrBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960DC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508403368.32635.8341035210232233400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529c7b5b4e1edde80e64fcc8277e143726b6f83b627cd1442438b624b9b3aeb5
Date: Sun, 26 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785084033
