Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F3125D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766319834; cv=none; b=fy+PA3iAggMh/e3Sxvfdra2MTyYhwf7OJfQvniq0PGnY2QdtqqDCN9bRGh05Y/s4O4fiUQwDy3pYfL1zwy5qVmzmfAvhWCwWYcpuIRiuud6o1pes1N3WLjeAprOo3cv/aBFvebxTkMYEwzI2aI9dnk3Mdz4YcQzhhwhL3bYrZKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766319834; c=relaxed/simple;
	bh=ynEk+UN+x63P+GutLRSnI30ttE+Y2iG10GMfzG7yf9s=;
	h=To:Subject:From:Message-Id:Date; b=CoWzVDRGf2QDRABREgDExO1IvWmbrXbg/4Z1IOm6Wk5pjG0GvyXdYal6FyGXM3ZJAdAT17Ftiw4ngqvDlhZjy0pb59/nCed8TW9hfJbu7QoHWAUT/mSb9/j1P0xS3B3rAJH0EA+yPxz28dbaijdvt0tVa/jAJyv4h9/8atRaH/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMyEMneJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMyEMneJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64CAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766319833;
	bh=ynEk+UN+x63P+GutLRSnI30ttE+Y2iG10GMfzG7yf9s=;
	h=To:Subject:From:Date:From;
	b=rMyEMneJaBxv72OsQOGhcGgMVoCkzoSUgXoZMvKCmiu2hLY8l3YKf9oXvJJexpNQI
	 SnBdK2Gsz90yEl2Kavh7txDPInO0jfeAG9c3W9LTXOf7PzQB0k9u1/5GLfBveM84Ck
	 ZzOPwt4G/X0a0vQavMegVhXncrGb4hNrsWVOYcSqrkrZi0t/kw8WVkzhmvPh/Ut95c
	 RHzjUJT1wdavuViNLF1he4sqQYg41dtlICLLpvg0+D5COGPEa4VlNg9bd0r+AZu7Gw
	 VmiKYmZi7wd6O/w1T4GWYMKEolAH1t2nKqANweQsyk2gDVuqvFbKYNjkl2K8qFKSq0
	 0lExDcTP1te6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92657E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631983357.13709.943034453857478729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c42f4b77cb9a8df0c3b96da147621935ee3163e5469700e2ba58153f67f438
Date: Sun, 21 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766319833
