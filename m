Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EE03A6EEF
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778152654; cv=none; b=VL723tqeDtZ1skPDSBHHsK6xyZpq/84Xn2346xWFOA/qySWb8TSHdtK+Zphk5KYfvxiSUPvUURj8xUuYAn5tMGR2q+1LNPKRAR3nmh8LLMvIvEbsBK4kvK3Z052m7KHGT8uq4texrR1zzolEeodqjhmTzu80SvXNLkLpp4tr9Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778152654; c=relaxed/simple;
	bh=qpoFuSH2U/y/j5An1N1Rf3rj2h07gv5hQfQFLdG+7Wo=;
	h=To:Subject:From:Message-Id:Date; b=UTqe6YpULwhy2WMWB+t2r3jHHJGOTWlyn8hMOSek0sagh0Lh/Qsjl2BLLr91N2Y2/nL1IFf19CNqFPaQBqLFGtH0doS/EVQP79QzMpYjRaK0Zqoc/I0OE2mHB+2NpgEBTESC0+rG/FnjeaFCsXyg+C3Aq847NjavZqM6UMQikdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IX6wANLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX6wANLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBD7C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778152653;
	bh=qpoFuSH2U/y/j5An1N1Rf3rj2h07gv5hQfQFLdG+7Wo=;
	h=To:Subject:From:Date:From;
	b=IX6wANLgW2RZBFJEGYdWm+9ebaHZf9ereflAGLV3Qg3TgIrnsU00kmZEKnKmEKNTe
	 epSAYcLccDTTjyu+jFICTCIhPB9hOtpkxDU4aWDoX3BT/wRV6RV+CpsMFzSWWNLlsh
	 aGX1flIuhIKsjlMvN0M0QSE+qy8uBtGyhbejZXptSFFb7Ell+Ff84hEzrYPiizqqMV
	 5hqOZhzW0hiLZ5gn/PBnIyYDXodGgbNbnuEPZRvau7QG/XYSdoYSAZl0gpxABm6RGU
	 80p6FS8fBIqWxX9HVyC5RtGGhxvH639eug5CXXUyM0bkutRqmkqmWSaRrLwwFH2hfE
	 1cAWfvyTQR19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF3CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815265369.12678.1013326513133302458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e094409aaafe20959c3633229380745f9d385960939f705fe8a927cfae8cc3
Date: Thu, 07 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778152653
