Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D13A48A2C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785870034; cv=none; b=joM524d95tCM/9yvgD+IulMSV0gQYtNS7Xj2pijpEPQpMklijS5QGT06XF+NABMzViSqHb7twv0Woj2SKVgF7IsR6orxvWBbsJQH4tWnVpNiZx5XsASRh8eLMsV4JL82mVP59TkN4OUGhzzcHbfthEnQDhhc3Kp/c+7oLoMckew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785870034; c=relaxed/simple;
	bh=sbyQ37QtBCeBg348JoFrPJU2Z/AWuwgZ6n6oxgA/08A=;
	h=To:Subject:From:Message-Id:Date; b=eS2J3vz7Zep5vYaG6mt76GrjePgU7DYRKmNtx8JK0G3Up8LsDxLyvlSQkr2lRDlA4SHbOThMfk3kMhQmSTOf2TsPqQ0fWW4bKoa5PlS73EvPqcWc4Ql08VqotqhkOOtUkmiP5oATndgzhADP8mLaXVCQDaZzrtEBlmJoDiEcV5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfZZ9oh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfZZ9oh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB76FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785870033;
	bh=sbyQ37QtBCeBg348JoFrPJU2Z/AWuwgZ6n6oxgA/08A=;
	h=To:Subject:From:Date:From;
	b=jfZZ9oh5t8N68R+VliPMAFdxRpnR2KHqwhRWb/RujZBjU3qoqdXWvWnbKfWEYZiA4
	 yoSzZNver12uR7aqgDEbtDttmgplcIWu4lHDwtsvnpTAmW/k3mSbfoxBTVHTJhe+MB
	 1GI/sq2x2sJ8NFuxgMYfthTMCc2C41qyb+3WNU2KuaKpIB+S54HLLSMflXQheiw46f
	 vSRkEIs7s59Nx3s80ge1X4gZjBLA6coEvUMGs/eOyr5sSMuzZmkuuzeaAeEFj0rNOy
	 BZYpx3o6pg0UzGX1oX0Hn20zLcOKTmD+3LdbYWsYCEWKoarkAevQ/3vGUDQwA7Gbb3
	 FMdlpyTzGXlTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F63C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587003371.21197.8824043294552857122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe81047bbacdfa90fc53f8e206272b18967af9b218688e723f02040826d3adf
Date: Tue, 04 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785870033
