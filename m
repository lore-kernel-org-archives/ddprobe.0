Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A37378D71
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787164834; cv=none; b=OXXGaf17AbSOAedwSwGMZaR+RDtHwKK0re3dyPBZGR3sCIrJfJtX0TtJdmH/zQAjgM2r8SFHbP+K2Nl02OgIvnow6GB48CUm/a8okkUUNiC0VDFcibeGP7eI7fYjoxWrX0uulFwFNnQEq0b+e2VuTHxug2R0ga0SKQ2cv/sMsOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787164834; c=relaxed/simple;
	bh=EYnJrMFnZZIZXcCHPJafd/hUGkFzEtPS8p52qJ4rzRg=;
	h=To:Subject:From:Message-Id:Date; b=oLfpLIBGZjzd5YJ4G+yTbmqxyzITOmPIVQAW33LLvTL1rv31MsPT4HvNnMvECW15PdyXFQUUrbNOaAoKDa+QArpJoLZIMCSfWjpN0Tc0kE21TLOu+09nELP9B2CPKfcgnGLqioeFgOnzau7F6U4vOy8UGXgoUj1N7E8GbpT9rHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEqypwnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEqypwnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E473FC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787164833;
	bh=EYnJrMFnZZIZXcCHPJafd/hUGkFzEtPS8p52qJ4rzRg=;
	h=To:Subject:From:Date:From;
	b=FEqypwnkMuI2iL20Upo/4A/l3xb76O2LZZ8Vw+MwWaMzCsfXkF4ome1sPyDCI7ZYK
	 BL9yek8WW5g7Oy/EJdAp1gdBf3pNDbNhn0RivxSTcls4O4xpQ2uK1HyTKTxZqJCVuk
	 q1QagB0tOnPC+7IgNts7DkBYDfKsUoBQ6nmEiE/i0XEQwEPk8pWSYThq47jOS9Fh0b
	 3LcPyxajDKOxV3mx9Oiucoqh+z0iDC/ccRSJC/PNlh8ad8FmYyGgpwTnCHXMjtdJB6
	 w99FvfyovGFuVXCxicMrwynIntkSRmsFb6BkjFwJtOuZNtqAPTSuMG6CpNADdc9zS4
	 89GlOLf4MOH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90FFC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716483371.8260.18204222913816757692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab7ebc3965ac14e69e4c09b3bddce2df32b88bfd8a1866856fc13393a923125
Date: Wed, 19 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787164833
