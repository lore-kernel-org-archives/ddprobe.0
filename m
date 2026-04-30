Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F339EF32
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777533454; cv=none; b=I0i+w6deniiNQSCceWm1HtX/RYaQR2OdKf9rPXhr0XVo4p8VVBogclzbgZoKXS4PonJaTCgUC0en6a/vOdr0aI3V3nCTAeI68TFgehP6XNKQ0rkVvXH8Ca1pTXKuXqUlU37sANgZ7pdqJGXx/dEfXHehHQJ4eqALdJoa1jxuKEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777533454; c=relaxed/simple;
	bh=0/yI1v0ExZur2Yhf0TwCmbGKvFlF5IpKtgw7zqZtIfs=;
	h=To:Subject:From:Message-Id:Date; b=qYvKfwfUYAy7LJsAAtFx5wbDqE8HAfew/ZeMxrWi7ZbufxLSh3+6A6uP1eLoyfDiKL8tr5ZUtlaGwYYP4eF8CN9CloI9dz8y2cwQJUAl7cqbJyueaEPD3oTT07V0uaXKPG94ZU7mdaya2WPvOWT47wmq1X5LrK1tSzO4ttGzoGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIpl27y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIpl27y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7BEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777533453;
	bh=0/yI1v0ExZur2Yhf0TwCmbGKvFlF5IpKtgw7zqZtIfs=;
	h=To:Subject:From:Date:From;
	b=MIpl27y+162OlFD0M/8qkjsD1/BtidKnT11L2ai1mQ9FHdEcK5M25dlisnq7aLk2K
	 8CDk2sl7Y1YK2T9VtqUA2BbtOoglaOt0D1eLLLpjrjNDCuIp7ibUTxHFbIQJs/XD3i
	 PJLvxmRfnpp1rk/lMOJYDnC3Nq42/zKSF/K42MrQVTggsRGcNZZWdI3JPtZ3asDYxa
	 zVq/O2lPT8oVrFenA4JTUURxLRj8CiD34cY1Em/64eNsnXONOmvzV/jsViszIUHTu2
	 YvNrpsz/pJj2erUkkdwVdTA+NdlSicAucAHwFiuAmiFNsKFcpWSPxmDpaqpCPtqsSj
	 Y4jfLeu1HRQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CAFFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753345368.27584.2308618511665211869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1d0a03756480179276af53dc6bc369051675f8dcfb67d0f416839b8312ab64
Date: Thu, 30 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777533453
