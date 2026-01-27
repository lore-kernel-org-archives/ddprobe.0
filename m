Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0201730ACF6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769541234; cv=none; b=U1PrAh5la1HF8u9Bh9kg/1deQa+Us3rixOIXBR0FF20JdKMD/CeWhi/sQbwMrg7CIUIoW9jgocgZ38fecqbIk7DNKPQaXVVS68V9UmH5vLlmKGbtjVMc9d9vT6ZB5vYPtYS7SwgbH+TnM5gppBPJ3sEyxPtQBVoBxhHBj93XUqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769541234; c=relaxed/simple;
	bh=8jbdlsoAxHujxEcmbfPZiywr1vulRTWjGMWsOuldhBQ=;
	h=To:Subject:From:Message-Id:Date; b=uBQrxpZj7r6GLh1l2nk8uYaBNzzrTgFcEByYuKaJHmyPw5exyMVtA/QwiCm8kMrWhrZBlLK3FM1CrzseZdLaj0q6xkv7BK15kJRo3Pbrx+nZnUNR1GNrXoMUnf0p/QkoezLJeQEoM9QePLeRWMLbgSz3hQJvzPgNxLvbEwp7hCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSMZwWAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSMZwWAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1760C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769541233;
	bh=8jbdlsoAxHujxEcmbfPZiywr1vulRTWjGMWsOuldhBQ=;
	h=To:Subject:From:Date:From;
	b=PSMZwWACPqh0enHuzrxGjaUY0n85M4COx+8/52NqOVt1eMkkgsCXXtiEFZAEAoF1f
	 FpSNZBoz+UYak1eONYRPPvs4PR5Q7Yc03NOy02pa9Xw6PN6Aoafut/imPgu9adrV4o
	 pCPi20TnBcFlvicDlJH7qnOfwj09qqo/4SwGAiTYTdoL8xp4YNsPRTo/kDqHbAgdu/
	 87/b8znFLUQrmBoak7rPj+HNPBw0TcI7XbBLr348djDxRJsR/OVR3+k29J87JC7nUA
	 NMFPrmDCbFjbDH2CWnspqRAFP99s+Lkbx4IeOqTIXzBXklzrD5Xw1MBsE/d+w/VEaV
	 bW7gJOZtgED2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C31D2FED2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954123359.9689.1194763909534954310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4182f913dd15563ead9ad6ac18df9a7d8b34a564d89ade890fee3ebaebb11b1
Date: Tue, 27 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769541233
