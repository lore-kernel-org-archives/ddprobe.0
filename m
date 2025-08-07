Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273702E36E2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754525394; cv=none; b=RjP7AarR0Uxc5u40TWj10/mfhHbjFDUykYp4AhOtzKM5vM8ubAvInk5fA+bhyHX56AnuaBHV/BbQtzwXwm0gDkEnZ4ITMlPPnSaj73Oq12rJTeR7dSU88ou3nDDBRq1TC4vAjYA7uRX4nRgw2fa/I4EpzWJLHMkOTdzRpfPVr+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754525394; c=relaxed/simple;
	bh=2Nj7hR+t095uojtv4pyWeceHXHb0D76a4DaJg1H4w4M=;
	h=To:Subject:From:Message-Id:Date; b=cIfAJPOQ141N8WwwOQs+i/5y4KfbSRzeviuvreKJu50ztwyd6gDi2PANhvG4TKBOdTvHOw6Dp1EGYIXFBUU+vsts3d6x6RUnSSEUXA6Ri+TPBTbCzovT9j5exWo1mzhBdWzqcix8lULbnGhI17Os7uzqDkCdPprFEJo0bjU1L84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTWzZw6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTWzZw6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D70CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754525393;
	bh=2Nj7hR+t095uojtv4pyWeceHXHb0D76a4DaJg1H4w4M=;
	h=To:Subject:From:Date:From;
	b=OTWzZw6Xwi+L27zK1cbgLieUyNVlX6C88Jd+8KMexFSZflqjYdmxdKciPrZUfyHaF
	 Yusiewn3s7evGdNEunl8WZjb0LbPRxr9U/2pgfuk5cI7Zdhx3mnrAaGzaTIVwQHlLF
	 kYDdErbUGdxfwC2xG2g0cib7aM2hP/MqVBLc/6nk4kNI/afesI2dpu8/4nqHlSl6Ul
	 j+1scfhw8QDGXmvOy92Ryi29kagjkot5D6Qj1Vfc0D9k3C9hfS0Kzz4rwr/UVrMGsW
	 lhIfkmMckZXheKEK9NpwBM6AJyQTiFoP/HNJcI9XQInRGeqy6q8ac+m798CtZYuSMx
	 nV94dfPedVGhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2FC87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452539357.6657.18238168620842301651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ccfb08102f04814c39b6c2785c11738268e5efd5bc53a667f57f7b02028f6b
Date: Thu, 07 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754525393
