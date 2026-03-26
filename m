Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E722F9D85
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774568694; cv=none; b=mIAHoG6akl7jwuaG0GnFb6SdSANPTNwgEqS1IpYctoXkPnbq+sOzfdoxeZaMsgVQdwqp84RMM08ZYUWw+H320RI3VvGBYZAF1Fft1UcbyxNb4meBIHSlTmlam5Va7SrNJuU8wo/06SX5IpMRqqpmH0o3xlbboJdO8x9X3DsgzTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774568694; c=relaxed/simple;
	bh=gaF8KaqzKxiFxj1YhIWrSY/IYam0O3D28twm5mJrS6A=;
	h=To:Subject:From:Message-Id:Date; b=dEGCIXWMH/SWgDQKJ0E7ld5opOGQDu/mYFj6icVeBFWO2eAwykewuRxgWoiudld73xG2d13cw9zDcc6z0TAyUMtLS1lnIDr8aZd0WlFtdMgD2VJmI4ym1Gu0oq9orT9/3xJnTGbdybTJEO5AUOBB2HtfVCPy3mB29F8IsoJqXys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeDQ6g+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeDQ6g+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774568693;
	bh=gaF8KaqzKxiFxj1YhIWrSY/IYam0O3D28twm5mJrS6A=;
	h=To:Subject:From:Date:From;
	b=SeDQ6g+cKlbZo1riJKcV+NtRPMhtLe0eCZTPPffmYamb/oaJ/RQ1jkbJJvHyPJHyP
	 MD6GnO1dwPCttBmmWSafsPe9P1BLpAnY5Z4qnIxe+K/eGQ8d0jbYFUgK/x4RAQX2/v
	 PzkH4qAXnE920cCl6LyP+pbVgunChemutu76d4T3qQMrledtY7ozOIwZ7Q/SYIx+cS
	 sy6ZGmPHDhpJV8rqwDPE2pTFiv13PNAIQGu54k+rPUjXDtRov7PabKwSOiDwSRPTFq
	 WttIUjVoi88An97/6HmlwmZpT1BpqT4YLHp2YWQJNI/3ckSfzRO1+Lyf7OXuWGhPwh
	 P4iG+N6iNdymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB210AB82F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456869359.25729.15355769948551726150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eceb243830fead5f83c1c8068235b71f8a2e3013290e118bba73c6eea58a32b
Date: Thu, 26 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774568693
