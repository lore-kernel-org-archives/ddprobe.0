Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2C91F4180
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785638434; cv=none; b=CQKsOUwKhqlWRTUeU7uiaYvEJjXFXr6sa8Enh4uE+/T3TdPw6eYlt3rRmsAj5LW6tRcpdz3S0VxS17/53T2z2YKV+/STO70TqDcSiZ4Iqeze5s3Sf0F3GArSNObSotGxbEzV9p57HgFdFTaRghazfMO7mch8alIRQuczKc6n+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785638434; c=relaxed/simple;
	bh=w13ZwNB+sFa6bloG46mgVHV6AVJl2RNaPURZEMrAIKE=;
	h=To:Subject:From:Message-Id:Date; b=qqI/oEWjJLtgVmr5GzYRA5vERH3D1GlNDLb9qNzfJBETsIu9dsT5wy8QMTVqBDcKJw1QKX849q/U/xLjpS4DfoVYf2DJt4XbWm6szJ5aaBMspOUaGqwoJpV3ucRusRo76s/v2t/rk3B6ofNZQ9yxdOtup4opfOc2bRwBthgOOaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc5IYKSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc5IYKSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E77C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785638433;
	bh=w13ZwNB+sFa6bloG46mgVHV6AVJl2RNaPURZEMrAIKE=;
	h=To:Subject:From:Date:From;
	b=Sc5IYKSUvsqXsJi1C/3zYkUiS8YSMKamZWmuDR92hpeyPbjulDKF+epiyIlcekRGc
	 jTDdvDZm/TxbXlJFiVTuBSs4jBwdsq8IovpNfXGFZp5QjxRkyWZTc/wnBr9WTgi2Xp
	 xKeYj2fs8O171pwknJLuqHCKZOtyxDqDqd9M6foXlIyDei7sFLJr7tUqKg2GmESqQq
	 3BhrIH7BBEEzfueVxZjCzZk2brLAEF7nzbsTVOvjbdaAlzl9HEXvds5M6BDtvWgRNI
	 vWrMTfwksfjdtsluHSew2fjFtZNYeAjDO1bUxvRXSt9EYVLWHch6L1+RMyYiGx1Ekw
	 reOdymXmsVhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECA5C5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563843369.11423.8132269817770424378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03cc141359085516a65bb85775df04524e56a8d9a5cea009dcb0aa7c9e2ee1a
Date: Sun, 02 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785638433
