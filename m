Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0751F3B85
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779058834; cv=none; b=OKlZsT7YtMvsU1iJDvPzy4mntTvP2qSfyXsLvEkCr2qFDjtl4GJIiTqiPdDjisyp54v/Q/ZSWEEHPHFu1b+2Nx7lOpFBU+cHurssyJ0TyxeTks0EsMh1pwJmMlxXXSFBrum6HUnekurbY6QMLxi+fwLjWAzMsYh7u0jz7/owIgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779058834; c=relaxed/simple;
	bh=vK90QbADNJ4KPZjdywBjMtFyKr2EoY1+TRGsKJwwSbo=;
	h=To:Subject:From:Message-Id:Date; b=gbghXQSz2TEN8Bkq53C2IfuzvbHKWIvXT4sVGbcJ8BHS1kaOKna8NxAZRXRakSj+9tk0N9alKuDksYPB4+XYZw1WRUHBfPvjnT8TDCmqftlju/ZRpmFwHhK94jeVtYpiHXj7uFbt5IuHneAUwJYn3i0rc1g5STmqYEulQZXMtyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaLMzX10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaLMzX10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBECAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779058833;
	bh=vK90QbADNJ4KPZjdywBjMtFyKr2EoY1+TRGsKJwwSbo=;
	h=To:Subject:From:Date:From;
	b=LaLMzX10FuRfvEjGKfaqnfF6M2SXit1E6hwjunYA8fSuyqHVHUCc9BIaah39BERpU
	 npOjl0U4WuVSm31jx/nI8M9ageAhW0HqG+gQ0mH8FPCfugl149273t4eVJy/nzBMR0
	 d8Gny4M1AMuURdISC/MW7iFUg83ap8UYOrmg/aAmsJfjiypG03+aEIGHUrtNXZ7Je3
	 FnwXNC4ExZvuT/fo9b0M0QL0LlQl7x8aWkQt4qSztqWJ4Reyz73LtgOmb8u432Iy+M
	 neAxZrtUgwICkPdVH5BGNepkBIQ7YjofS59mcdSnxQS9k+wQsbg1GcuEzb6jl+UWuX
	 OzFhuV/cfZ4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC803CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905883369.1958.11943563238293510932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c12c86b0c708f8dedc554b6215e3da85f8b8442375212876890966bbc20bee
Date: Sun, 17 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779058833
