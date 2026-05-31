Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4579226299
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780208074; cv=none; b=KqKO1GfQJ49dOOmhwKFO+FMx/TmI44R1RM4GH7thcyMD4GBcGHcs5cedRL7TGlcyVmO2hgmuvzBsZQiBuxXRtDYfT1ha+285xystjwt/yNJ3TRybCTqe5f8t7C+uoLKh1ZX6C6bbmgyHNnIw5BG+zCJulucPyt4hkxTytlkZYpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780208074; c=relaxed/simple;
	bh=1myEv09Co/8DZSgFuQFiQOqpkcHaL3fNbO1Nq33T2JM=;
	h=To:Subject:From:Message-Id:Date; b=p4d3swJb8WziyUaMMuIbEW61NvRcfYva7Wk6pFEatvPO+Uokivbc71z2eQr5tSC38CSNl+fDukPGq01zHY4R7iZuJmIJAPbAzSwP45ULRhI0SEAe9lR/emSbpCqJfh1wfglP1r5kndqbwGgxH63l/zKP6+ME+ybqj7NmjinBYVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNECVUHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNECVUHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99BAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780208073;
	bh=1myEv09Co/8DZSgFuQFiQOqpkcHaL3fNbO1Nq33T2JM=;
	h=To:Subject:From:Date:From;
	b=XNECVUHlKbyGEhT4qlcgGQmE1bw7mirPTmuvE4xe8KxXg00vZ8R8yVeq8Ak5TIal6
	 7/biTqhJ9ac0DGTbpneGpHp2WQY1PV/2h22MboQ5UDsGpq/uG+3dplw9PXx/bswG7e
	 MlBbVSpOXrDNZd1vwn3yBg7EQVHvHVqXBMaRZdsjPAHob/X5DEwQpKjXBVTuIHTG7n
	 ce176E4U7X0e3AeTWKnY72YqtYUXCgXSYoTKYs2YsyegRW71VSKCvL3vJGrwureMN1
	 1nHGfbvgGzz6PmlrFa1+s1/NzVQW5F1V64PtcvBr1ga+uWYzehMK1E67zBI6LhPGIJ
	 aNnWs3nuqlydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0DCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020807371.7907.12954282257137742619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b653d1bad51cc1e9e094101c8a739b0a546a91dbd1bfd65c6b9195c14fa28d
Date: Sun, 31 May 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780208073
