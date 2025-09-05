Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D47267AF2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757115594; cv=none; b=UdqIXeOIQCmsCTPzPJ//e/aH2bsMqlaSkTtzLPceSnGu1kw3f/opZOSfKLi7XZucvmwrwYjRGP2ZaxQEQO2Aql6w2Koaa8JcOuuPTp9qSz2eILBjpiNAIQ+N3kLHu5oBGV7pN33Aq1+6ZITD9NxR9HsA8eN4PBYsJDtX7us2ois=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757115594; c=relaxed/simple;
	bh=aVHip49qwHwPh7dwJiFjbMn0agc6SHlPeUk2A35jigA=;
	h=To:Subject:From:Message-Id:Date; b=CkQloYvSNmA2hINvKdADKKIF6Kppd6079i8s4Ct/PkqPTYcg+Rjx8x3f9ZclR5gL2+RQ8CIyapObVF5X98vQSE0stVG3hbYNc+pt3+ZrHHqxyoqU++VEQKlQi1TAWMybujsKZjIy9SWFu/jA2rl5dq7U7ZQrFKo4Xr9XXRX8TlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ntbw4mod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ntbw4mod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE1FC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757115593;
	bh=aVHip49qwHwPh7dwJiFjbMn0agc6SHlPeUk2A35jigA=;
	h=To:Subject:From:Date:From;
	b=Ntbw4modMLxxrFRcKHZ1s8rorKQ9eWR8iXBp9czzkSG7sPwpM29bSzCQ09az0t6qL
	 yOXGLGzhZnEF/7gyEvizFN1fgzxgPKGB/mnBozU4BgK0vqMtrkzH6CYxJ+DG6Ycqau
	 d9MmPBoWmSd5RdBSNYB6PtAdTDn2lKD46GnNvC6KE/WNFPwA4Cj64bN11VCN8SbREO
	 TRQiQ82NN9q0bOutL6uP1DN976GrR1rHlcUkF3eKdKYjE+TMW43gYoG9/2JBv5M+cd
	 M3gl0UItIY5jj0n8b/I9EbUWsaaoXzd6il1ehyjoNtCnVqmm0va+AfJDdAmxNrdZMI
	 oopmttV/G713g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F730CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711559357.23839.6709146427569983350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7358835c669bb6abac49d4b27a26fbe887af77d50e93434f1fbc51828f0ec8f4
Date: Fri, 05 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757115593
