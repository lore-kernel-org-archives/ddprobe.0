Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D112DC79A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780183474; cv=none; b=rWypBcpfrTmBSX1HvBKyx8g+r9A1FemInoDVEDylk2HxcASfk2n3m3Ml0VW7BdvD8nRlPMCkyw1hfMmh/sPWcfE3Z4c2Cx46MxHppXeRHvQsO6pj/rC8pleAdZKI6k7E+yQEBAzq8pDDVBaebrXE2x/XVcDTPxADoOllWhySnHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780183474; c=relaxed/simple;
	bh=vVCoZ7tRaB5of8+Ag1YF/zc5etD0/ofkfL4ZxU5da+o=;
	h=To:Subject:From:Message-Id:Date; b=BEM1Zo6aGHpfrTXsLBu1nWPixsaR+S8MtZkgQRyuyDJ2SMO2i1UOcuw7r1bMKgjrpRpriYxGJSHbAU/+oZqFj1JC8Rm0/NgSrM8h2H/W1sgjjHLAho7jPpGp+VJVP2txED7ZPvmZS4tkAxki8fZV2z7jicgeCKay0VOk/0tKeD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGK4U9/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGK4U9/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D797EC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780183473;
	bh=vVCoZ7tRaB5of8+Ag1YF/zc5etD0/ofkfL4ZxU5da+o=;
	h=To:Subject:From:Date:From;
	b=aGK4U9/UEBArNFkrjqcDV2WNcqB2rUd2jOsuP3C+ONlE71kBu+2EWsC6dnStY5w3g
	 0AYGRIfL/iZAxrX9b8o576uAWkDBpR5SM2A1UqbkjlyRsBCKERZV+qaEVWkFoVxmPU
	 FKzQHN/8w2Lmk4AVr68s96e47onr7+kGJLZSPMsZ41sEn+kzBiKhkme2cNO3BKt+As
	 V+tHuJNm3nfil+cOdWUlrdI2MuOX2Dmm+yJ8Zs+LB8wuDSmquDXGPA0hRa3egdZb/C
	 c17x6wvrqsU3u7e5mxOVyZqWUURo6qdCiQM6XwZEF8aKYPmDpgdGzi5CXzTm9+snPO
	 8GeO4dtywU1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F8CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018347370.19456.17051810978997364589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac220be89c36de938e2fe24dde7d1e3c357b3a9e6f7cd5a5d25ae3193ee20bb3
Date: Sat, 30 May 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780183473
