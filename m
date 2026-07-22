Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC1466AF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784743174; cv=none; b=EOgs0j4mD7H8LhxOzbg4hjXcm17xq+llm/vEMMHHeqrgBoGgafvsWnbyl1pqijlmNr6JdoUBkxMAnxs45J+Y1hQPuL0xlm2zoiMu2BYhBRE2Ei9Qax1TcWar7N9M0So0UqofvXI2Ofr0ZNa2ItBby875aU6ppHM7ZJ3Zf5K7ZSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784743174; c=relaxed/simple;
	bh=vP1fpabRafoDZnCiteE/TPfca/2WAH2NjrKKaFIDGxY=;
	h=To:Subject:From:Message-Id:Date; b=kchCMHqBotGpBQVu90alLeIhQf0ytI9lEqFyDu1x6oDME6p/DJM2wdmPBpoT0QY4R/Fk4pQCw+x+SlsrpnDZt6fSagi4M9KFTlAS/ooArGtcnWh3bmPY5rewtw6zX3n7DpFikgVCRlx7RBPL8s+cz8EVyoXfH05926ZOU9eGarA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIA1ip4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIA1ip4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF58EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784743173;
	bh=vP1fpabRafoDZnCiteE/TPfca/2WAH2NjrKKaFIDGxY=;
	h=To:Subject:From:Date:From;
	b=kIA1ip4cMSIgWm1T4vef7Ts6trUGgslZDWcbmXh/sYhvU86/cSzyXYY0pDiMYlIhX
	 jhkYCdEtE/oMYgf0mOEPWbnR7NqBXtZ+VOMe9IN9ZWuke+d2ReBkDQF53a7jNFhsLe
	 oRF97YvcaE1W6RTvl0VC2p+C97fHbQKdPG1HhG4nwlGNbsO/r0VcCSrS80BBCJjVYl
	 LDrpRI8WL4J7F86tZegmLf4p/w5xg/pOdI2SHP3ttgxPbNGxu82lsvVvo19AXH7S7U
	 U48/NWDfyA80BJYS8cqMofy3o/FVVMCudQGFFQ2FxP9h5bUPdqBF1UgPFN15KF7SaA
	 GbOMbSQEQiyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD9C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474317369.5703.3409505202071895386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9113b1c09f09659763cc71d5a199ec75b9c5a87f98b1b52e967a8f1008659181
Date: Wed, 22 Jul 2026 17:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784743173
