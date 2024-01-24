Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13A6F51B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706085497; cv=none; b=CCAmk2KX71vhnAb8miS8POdqLYiXZX0LaPSMStakGaR5mmQUefuEcnWDuWWAjoMjLGPEEa51zhZZzrlFAxmieBA9tVK++GPkZ1pHzah2upKkU5ILVcflg6/5RKwu9eUNzme1VmcdM0IfUMh2QGBLOOG/WxVputHs8M8TtVmbh0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706085497; c=relaxed/simple;
	bh=QrYJ0r/CcIdQZR28PGXDU5ScB7cICzLHTrAb5/KHIOI=;
	h=To:Subject:From:Message-Id:Date; b=kdA2BloYfIOEI0sKiMtCfKe43fJrYICJCLcij1dPs+rNxjc9VV4h/Gr3ijVUCxt1CXDjFEGW8WtHl/63Zq71/Aec1YL0uUImRaNMUUTvy3Xp/qVRm70yDpPqPrOCGzOEhvZtAur5uPR0yp02jJj5j8xmo2x/aZUnswsH/ohm2pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z87D9Fp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z87D9Fp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74644C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706085496;
	bh=QrYJ0r/CcIdQZR28PGXDU5ScB7cICzLHTrAb5/KHIOI=;
	h=To:Subject:From:Date:From;
	b=Z87D9Fp6rdNsjCSq4rgU6KcBjLsW1hYKmFVHDafsb0x4kkr4TkH89OdyfxS/1Ovny
	 WB5AArPcpivOFxAL0XyJ5sC45JXeZx6KlR/enK4bi9r3TxQYb4Ts2CU7XdCPklyJUV
	 1+Xi3pFTxEvLq19rSoqx+8hYIlvzIrGb2ZU/NXE3NgkMUr6TYDC/6Hha+35xGV4yCS
	 4BK5uPXBu4/qy7RBh0zOq+KlTWLu1LdAc37s7QhV6Cr/BQ3+el3G5w9SRuHmBaxrlL
	 7A1aHhAEbLwZJJRRscgBOpwoBu21Gz6Bk8ZIgkEdDdbQ8BibwoYJhmUjGI0Jpf1WYY
	 6nPEiRXkhpouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFC6C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608549636.10419.18160982941869174378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273bf3c32885f38e039344e385cc269473890151326ab4a8d01d6a0c621d487a
Date: Wed, 24 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706085496
