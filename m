Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F80328B4E7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747918194; cv=none; b=lqIVI+6b/p41JH+fnF6bWtOVoHQ5qOLnRAHIV4ijzOCX/BHgf91ycH4VDArg83j0gAJijFJB3P+mN+ukmHcEAT/jVrKhxdW1V6LWMG1Ydri4b8VRtgXDsgF67hnqDOrqC9mSFZZhk4yOQmY255ZngV1Gu0HmV3ETeuTCsthJ8mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747918194; c=relaxed/simple;
	bh=f+paluB7aWMA+gBFlhIvMz381ocsSOL0b/BTvRdLSxM=;
	h=To:Subject:From:Message-Id:Date; b=fePbK/gvZEAbmIV1mISU95K2O9YTVaD9FOJVmMxMlNCWHU/lZo/HMS6zvPNz/B8g1IFVRZHegjjeKPMnVc07buTCBHgo5JkWijEBl2HhpLK3W2uEn5RojtU1d8RJrUCVIzz242L1pSGLLarVNCxPmHsSYbqeXQAUx5a9ChI5iyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqH2m5Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqH2m5Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E96AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747918193;
	bh=f+paluB7aWMA+gBFlhIvMz381ocsSOL0b/BTvRdLSxM=;
	h=To:Subject:From:Date:From;
	b=aqH2m5Q1LGrUz+qSblR1xYwwSaD5Pw8ES+U3rHF2qZvP4SDXTWk4XGO/WyCTVwJr8
	 DuFMFXHd9Os6ARuSGYQV+v1hdZW/Vsq+VaNajyOhG4YyEcmfs4b/sNSoTWQ9KTgffu
	 wRnOyde8WmUKRJNnpmadAenqrHd2NMw3kmZUEw3CvTJsW1kUODUUBewVPbm4vjXRU/
	 vYbvdB+0oOhpQnVzaEI/TQZLDFPlUJ3owJAoCeKqPH/vRHQxRgpMvqhqdJoj4UksYS
	 RgrFETqYDjGBANvMFbt316GHij4uNRUNvlWvg3ZIb1OwHOuPEjZP5PX0JZDAhPDDEF
	 dOL7/lqsfsU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791819357.9763.4957769429624138262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b6c37bb57c3821ba7adf9776230b9b2cb17d713a88d5fe43c9a57f73751954
Date: Thu, 22 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747918193
