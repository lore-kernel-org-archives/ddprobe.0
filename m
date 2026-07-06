Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1741DEE2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783339114; cv=none; b=tBH8WjmQER3Njr2GkvGSdxuWQWwkHkT1wH1PJctMOuHWfArg5zPprwNH38ayxYCozf+Oc1VKf5nonPJdlEtR1baejOCpwiF+LUaldMNSc+xsdzuhlvc9p26twKM4RQUw3Z0o6ZIrJZBIl5GMkP71cjy2kgrcU6OxawyR5sshWoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783339114; c=relaxed/simple;
	bh=lOfW8bG1qpR4WOM0v6L8gutDL+mtvoGVbFVc85VtwNg=;
	h=To:Subject:From:Message-Id:Date; b=PvMOaSepMvSohR70cg1ft1dkMCZZPv30C2fHf7IiiWXC5VlT98gQV/RbFrMAlMGIJrtB0R1sxvFamY3lbuV15qzfjFGBnvPC4D+rsXJoXll2v4DuX/DJGEvsP05qqqLqyt3hJxF+0JwteiLAgcdfpoPGiGXu6ifGN1+K7cTjb4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCsGyJcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCsGyJcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD557C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783339113;
	bh=lOfW8bG1qpR4WOM0v6L8gutDL+mtvoGVbFVc85VtwNg=;
	h=To:Subject:From:Date:From;
	b=SCsGyJcxE8B1CUeOsVErKMbQar64LsEeYqBHtuDRMYiJc/0txI9UEsXwASRZmR2wB
	 WEnfS+49lcERvj7lMmrjERZCPS/VKsKg5eEhjL+pXIWfhqObtiUZ+5+ZbXfhpJiQzy
	 gIrMqupricfFvOmEdVyODkDnd+r761vXL+l5m2i+H8+NQq5r/SBf6iKkd29ywjPsVJ
	 omSeRBMCCaM9/LfrsvFQopQlI05aMm1qEgKFo4WH5WNbVSghdbSGCvV9NhLOJHnZIO
	 vgdsRNs++GJU0sP5F+AgdfoLBjq2JWQWwbHGbME7Bjv0LiwnOpuU6PGLtZUL/dVMs5
	 sJuFSwqLZ5zJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333911368.19896.2779910322913421326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01050359a2cb729d4ba8c2f059e67a0695c8303862df0a8422c60faf1cd469fe
Date: Mon, 06 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783339113
