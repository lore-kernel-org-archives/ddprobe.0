Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB278F2F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790989834; cv=none; b=MZ4TWCZr++0bPfiK4G0BTHitJ4mUphXXej4LhJGX9YTmoi55f8zrx0AOCeFtmIiVcT3KBF0+5Hz5mfHEIjiI6lSrVOJ9Uw2jaVAdjUD6YrTMGyUOIHp+OJUEgkzpUspjxtX82GKrkcAy9k5bwOEj9IBWkxls6K5y0ixuC91dFqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790989834; c=relaxed/simple;
	bh=5dMhamj02G3zUajhdEYjOKxNny9Aj4UPQqvs0l5+MQE=;
	h=To:Subject:From:Message-Id:Date; b=pupOSOM8KdMwNHbMQjVkIKW3r8HMoBTgEfa3f5HYFzmsuhAHEABnygnhYwIGA0+6B4iP9aTaBXIBRxhkJyeUjd8+P5RaPxyKerYxsnXn5lCnWsf+Z+kGzSMGwscXrj38xDX8RIvi48QSMJXeXBwciaTiPAWgGTLW39BVdy6ueaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVlNbDrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVlNbDrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2DAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790989833;
	bh=5dMhamj02G3zUajhdEYjOKxNny9Aj4UPQqvs0l5+MQE=;
	h=To:Subject:From:Date:From;
	b=YVlNbDrFOzftUu5gF7miLMHzd7lkxp2WxWuSrg7uchUGVWRepkfz9NA74IPNbdGc2
	 5KF0m2FQFb3P/UaAHlQa+5et9AtfiSttEqfBurol3XiLL63PZ+/o28NcoEn7odSCvc
	 YQejYDExZZZnyq8YJP4pmF567Sl6YY4+qyFK9+way+bO7QUUILnPpcms7pMmZtEghn
	 mXyAc9oB2Mfpev4YVrxobvcQMSkMZGAaaEh+x4pKc/BMeWiCc5hdoiH+et6SXUC5Vr
	 XyYckvXtW95NKH6pwXuILIG06Iwq2ucB2otkB5KHarpAyvI2rX2bqV9mZe11ITdZii
	 GI95qCyjp5jFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF3CCA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098983369.18134.365113706687444902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8184ce2eda95630da3a3c02044c903d58570d90eb0f449db54c1d4791584fd0
Date: Sat, 03 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790989833
