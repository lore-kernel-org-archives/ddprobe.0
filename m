Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1941DA23
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780843474; cv=none; b=rlClkOqMzF5VuXaSY9Q5NzGLf1FXVOSk/sJitqFEkExbZUiz2JDFKrLiqf3sRgq5q/JCTqKreW5GYFpbAigN/FQRr9YwCpC5yRbGlb1iW6fEawN6m1sPFiPzqBHBpCrHKKpwdHa0VrV5zKgc3poqHWFkLKzCqAGjeLvs5E86PbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780843474; c=relaxed/simple;
	bh=1/UTgzY7pVWNLFxQ2qfaiI1FpKHa5dJuqb221ll+mK8=;
	h=To:Subject:From:Message-Id:Date; b=cQjlW2ifObRR+PtKKtUAu7jt7GgLfQ3Q1c9WjxetZTQv7FcXeokKwz0xrJ8z6a/AZsKKjlxjJqf3msMT4MPL15SV3sU7qj3Dz0niDHXPk1jYGyoMclopbpJOk3BtzNCkiSacwFPds+yFx89C97hh2PCnCd5rhyjrEkbdZQeMqL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ6w8Mel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ6w8Mel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6901C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780843473;
	bh=1/UTgzY7pVWNLFxQ2qfaiI1FpKHa5dJuqb221ll+mK8=;
	h=To:Subject:From:Date:From;
	b=uJ6w8Mel7gyD9HSIJ5PHRHpJsji7NpRPhRaSGVgrRgN73mCD+0Kj67YEMdY7N+XIJ
	 7jUtbMO2Un1g32iERDu3MsDvkSjFxZoIv/6YcmmNjSUNnBtQpUp76EjoIWhpSbtSEy
	 mBKZa7j9yhh7+Ox9kj11EsyVR0ptUJAHOWYSltvV1CenaaREnb0RURowuX6tkboT0U
	 mTUFUx5LoNW5vmwGgN+7ck7Ui5C1lfYVj81plqqqKrLUItNEF9ozYaxeyE+hkqNhuZ
	 IRXVTUqMhXQtjgWpVLLacvOgcI3prOMRxTI0hK2BUDVlr+Zria9X0vZeGnJIVExUkB
	 qopbFvPpv0dKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ADCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084347368.2018.1210299933482251491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf6836953912e8c38a714e5534dbf4022f00495bb317e5ab4834430c2014d83
Date: Sun, 07 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780843473
