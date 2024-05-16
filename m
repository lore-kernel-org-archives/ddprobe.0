Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072F0143895
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715872943; cv=none; b=YV1n0a9NaAHf+goImQi+6er0nCOOnr+OQmfmLfCNoKwSTnWfL7quHD8C6Jrl7WU24QhnXG1D4d4yptOq0JYRlgPeRhABqIH1mS/VS7gNrCWaX/18xQriwmr6KDtCx9nQSDWch/Dm44gHt1JbbWP2KNI8iYlMc95zbNIIMWgrK2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715872943; c=relaxed/simple;
	bh=jbmlOfan6qwcwtCQzuyOtocXbXgEJOOqCVZ3NS/WVqs=;
	h=To:Subject:From:Message-Id:Date; b=vDDLnWwAziHEW4FTRKbsOmFmMGHTVaLsV67zisKLOcE+fAL/iqCzFYlgBEyvfKzutNmp4IgstK+VieyhhszWaULGPim8D+Rt/JjAZChryCvkq9zwPk+STiM3aePnzH2gfCd4C7UB2nRyo5zbzEttfolkU26ks+LdUhRMOVhI4pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBk9VXLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBk9VXLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EC1C32781
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715872942;
	bh=jbmlOfan6qwcwtCQzuyOtocXbXgEJOOqCVZ3NS/WVqs=;
	h=To:Subject:From:Date:From;
	b=rBk9VXLwqkAkKEX3jF2FM/3jPX8gkdes+qTsnkIchox4pcbK08OWsel5jR0jETkSP
	 KQZEHvSHiOjt4wZgRLxgSmrZuJOKkjVRiHaC+fFs68yx2Ebtrj8TDRWqDmW81amqAp
	 Ufy7Ix/qTLy+KjdMhjgeJjRVRFZBKrwYDQpra8KArRAhq5G07k79Ftpg12iW0rRjHF
	 jVkbvsEwcaeBjaq10E005yzF4bZWGeIlom4ZhmL7m0oEgF+60MeZ8Cgi5ehtZQBY11
	 2Ql9uiBW3HousBM9LpOFLAT8F/WB/GJsq8PBMQZnNr0WsrWn0l65Aw++sYG2sslcgo
	 qboBe4LEgUEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66C4C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587294280.11981.519881649278098168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ce859d61faa6f394e5ad7f07d112ff07529f8d0e2c9d981f48ac6e2b396c0b
Date: Thu, 16 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715872942
