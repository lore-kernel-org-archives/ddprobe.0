Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5CD1F9ED2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744267194; cv=none; b=lLmceKzEFaHv352Un6ldIDbCdGcBjj5lxpH1h4XhqI9lQq78cVCd1UVF4ObCXCezcBt2g3SsrU93jqFB56184BgD9KNuJDeay3bDHNDtzLXyg2gbRJhF+SAZ7dAxY77RAm8HM2ovb7fSUG8mQp1JSkcCc1KIEiIUd954FtpHe28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744267194; c=relaxed/simple;
	bh=cy55vS1i8CzwMnLqliPRILpQXMoau8CSaRkaKmgpEkY=;
	h=To:Subject:From:Message-Id:Date; b=naSO5wOlnUbQBfh8cHm7Z45AgFPobMfcDUhR8w54TxWLH8yOV1NS643Ri21VUpeayCtoCTYuCm8ZLf+QVZp7E5p/8sywR7ghJca0610C8J60iQZaZFza7Z6lQFj9Q7tkFcllGMGzElgazCRN/ANYTeH5tXyjA7BjZRpYuklXL4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kngm/n1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kngm/n1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BC6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744267193;
	bh=cy55vS1i8CzwMnLqliPRILpQXMoau8CSaRkaKmgpEkY=;
	h=To:Subject:From:Date:From;
	b=kngm/n1x9XGc3x2g6EIuGzFfnNBpp4tZnnO5dYb188dbpYVGR4fPMkauOOr7oQH35
	 F6frnohSCDUvMdJ+uXRLmFshIFFA5gNBYzvTl0DReACgBuE1BuLczGA1mcoJeylFQ3
	 UhAS6UB+IvDCzKqimxszea+FTJwbtZM5MWVIJdriTkm1GvDBSOkm4DTLIr+ZdNx8Hw
	 kdCkrpwQokyNhFp0xYpVjmdMY9Tz1EVdKOK43OcgciLOiPQJ7euIWoL9c3AMH3PhWn
	 ph3rf2P7Py8UMnnaUX0NpXZHSNr+kSW1Hx2tm8Ai92ZQUa5p935lAGIpjQuVsEgcv4
	 k9UBOB4ABsVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB9DC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426719361.13272.3498819653596626319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26da71e94bfed2631e2e5715cf9dc5ecc8869cfc11c82b16b7afafbfa628da37
Date: Thu, 10 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744267193
