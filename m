Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3657D86359
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754264994; cv=none; b=OgZ1bmAfAoCnUJBN3KF+IggCSmnCa79VMmARRuuJequI3wd2x5smKLUmqaCHbqkcZBupGXxNyGpbZi2Ke6Up5TtFpltyI2I2yo0w1Q1AMPju2Loa0Sifpk7ye6mfewqFJXKRvSAKUCnvgU2LQw1ksuMzhMbvZHiwkg2DL2pcvYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754264994; c=relaxed/simple;
	bh=j//jE7X62NfqhrAnaJ4iRp/15/mPxgnNRO24eEFExO4=;
	h=To:Subject:From:Message-Id:Date; b=Ii7cCuAbZy4FjLvPZXp7ZX7R0YnNKvIoyXpteGDSm1pdIoCTK05QFzixoSdmVqE/YIeBLaphUFq9wp9xJovWVk69KgknbQAIGLOJD50LWQe+olsKvlo1qSj5P3SdlHKM7d7l6w6LxMqhr0dpjtGn/oeyvCD3MXP1vT3BvQw/qI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEWHDOdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEWHDOdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B8FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754264993;
	bh=j//jE7X62NfqhrAnaJ4iRp/15/mPxgnNRO24eEFExO4=;
	h=To:Subject:From:Date:From;
	b=EEWHDOdyKRjVXLkz4fdU8Pfh4+K0ki7RgBFb0emtiTIEIYWldd2Z3lglftpxsRBOI
	 IVsqqjHB8TJoa1VzTslwB3yT/oo6QbgsLLXLtCu9qNdOpvYWOg9PzVBiocjQTE+anj
	 gCrGtQBmMTifBH7qcGOp60oP/+PO7sagiov6nzOVXPl77PgmWCTix+6c8wWhxRj081
	 mbzLHDuRh86cTPVN8hziVxtk6Dbwpj2u0HUX7ATZDDIsa5E+NQeof2zcRtZr1rXQMh
	 +hdEFe+A9Fln4P6u1L86jsF8QTNyWFFJSA2NZVjfQ1A3PsRwnPZMIgJEimlCX90kjZ
	 WN30Wt7RP0CLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181CC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426499357.19929.1949186704001903786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5273e672f5036b836eedbabbaf338cca2661faefc6214241f2130d323b094100
Date: Sun, 03 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754264993
