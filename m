Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DBD2500AF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732474554; cv=none; b=NuAwAaQTfne/5WEAVLvE3Zlw6ZdWOorsa7PVglwPQl6Z47In32/+POyxWLy6ZMizV21tSRKLHhOtir/thGO7CCLncFet5xKJWmfrXSQ10QHyrd7CfA8g6+7oG2wzudCNo4Q+0kms4NwZ1sKthxrzwEMn7DsF2xjzwcnzEMQlxus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732474554; c=relaxed/simple;
	bh=rMhJ9EFC4fS1cH+owaXT1wbcYgYo0ZPvDsASwxjvpWY=;
	h=To:Subject:From:Message-Id:Date; b=gSn/9fjnIMKm6HK83fmzp5dxsM2wJGZm+ZnsIx6qtaD7hvvV9bFudKxE0y71o3Sj9cgOvK75QVhdlonULcI8cbB0Oks7dPgb/st8IOsAqafRHCyVfcFyXYduCtWQmzwP/FaGROllGNj7SgEvTxytwhNsQ+T1ZSnUHYB98tHqNxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6g0tHDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6g0tHDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365DC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732474553;
	bh=rMhJ9EFC4fS1cH+owaXT1wbcYgYo0ZPvDsASwxjvpWY=;
	h=To:Subject:From:Date:From;
	b=L6g0tHDP7VKCrvHrWJZCTQ956esuolLBaCGpYP0nrSagSAz06ZDXKx+VDFaBLEEhn
	 1Uk+gs+r6xOLMCKnLtxBG90EjjaSiZVG0nZKoRya06nOy8ILippbxqfEYBKiunTGBH
	 YxDDCnDb9mMqh+ghnbkRs/RqNi0lCPCECFfdt4K7SmdI2OvHe5oxKGk1QJIKS6pjFr
	 wER1jxgAVJ9H2nqOMjYaetxSsLv4GMCertJlHGnZMhJ3e4iBWK7Ma6cU3y9ev/pwze
	 jNIIV4GYorbrwnAEUJ+F1EFDTaf8gpaucBAh+5J5lUESuRQKuCLxZ/UZWzK33+gAUH
	 CGX263MpV1jng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FBD68BFF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247455360.9118.5826412709192453234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcdcc919864b63fab8c975f218440f104319ad1f4d048bfa87ab1ded7ffb72c
Date: Sun, 24 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732474553
