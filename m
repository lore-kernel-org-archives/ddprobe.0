Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429BC125B2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766910234; cv=none; b=raFEfhfHLk+lt5eFEQ7MVzb9U1y+NYsbewwsUuL8S39mt9eyxWz5wzRj6eENsN1sM52fkMOWDKqORY9kcherWvFIgjSQXGDNx6x1J2kyHyNklnm4tGH4GNst04Oye5BKmlqzDY3PlKesoghTrF1C35GU6Jo1cFUzTUwAzuWR4f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766910234; c=relaxed/simple;
	bh=ELWkL1bCPZtlHNqbm8i8lchPET//jqrwT6/4e3W/NMs=;
	h=To:Subject:From:Message-Id:Date; b=Mh77fVVGxhY2fRPe3xomClu7AUeefKK3G2egRWK13jN7Fb/HP2tlOrVvDZY1Zov/K8Z9OG22jBA4/L80bXuYbw7x5gSrTn9zplLK2/kG7bCbrkchYb4SOP3DiJ08X5xzpFNV3LUw+i96MmvuSC9vfJXkoKn5fKP6Ag4OBPVQ9mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYhvfVQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYhvfVQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4998C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766910233;
	bh=ELWkL1bCPZtlHNqbm8i8lchPET//jqrwT6/4e3W/NMs=;
	h=To:Subject:From:Date:From;
	b=IYhvfVQXldpz3Yrov+gbtsIER4DZ7cG+urzMOBAgK0ggR2FlHXa1sBoFKOWRlXEtn
	 /TV8sFnn8RFwCjc4eFIAkO3q5M3q8E2cMa9Iu9SpSCo3Gn6hjKTW4IgfPj8tS0WCKy
	 tG9KektQ732Zg3T76uy4S0ivLaxWhwxPNLLMBJxstMefYmZV+lDqZzHRlajEx/oF8E
	 URijOkYJk+SgxQ0H6DYIY080gWDGeJbcJDcbnSydEpg115iCGLN+hNPEtxYcTPyM7N
	 subxDF1T+3DtfOZqSVmDz7GhedlymAcS71qN0xJ4NSTLcsEnsqu5zYpqog/DmCBY07
	 S03AkRP1exAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D382D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691023360.27991.14521898719075122968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562390086283e985bccde8b5cd6830586321a7a587249929744e261e647d4344
Date: Sun, 28 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766910233
