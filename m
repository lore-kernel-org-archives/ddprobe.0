Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBA614D29B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768753434; cv=none; b=md1noe8fXKTMiVI4F4t3DWiLiIXJ9n7C/kuf+/5aN0wxzBGlHjrdUEG6rkjwe2Kn1dtqzKMJvm1R2H/aMtjBsB/IaFDlrge4LowGUIn2raLQ/v7qoMeHCh5gxUmUWpw4fHWyCp6ttryNSCVJPRE0N40V/T3XkrYnD1Oj0pW8RYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768753434; c=relaxed/simple;
	bh=xP4qNmoxK11Rvb3mXPj/Uu5hzq366eN6uUKbSHNWjJE=;
	h=To:Subject:From:Message-Id:Date; b=e82E+65JkU40Qle3EYNzV9rcTL6IHwsTTP7AlvXOka9gh2A73S/v3gPwY6p2/XNq92vlRCSKryiQ/i5lvdXwBpdQZVodTloZAnGUCnOSWlDAKzz2I5e4/PsEK0qIdAWIkad9k0BGLUGuejTeWFDfGDMEYzigxldSviVfPybUxQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlmM9z4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlmM9z4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D13C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768753433;
	bh=xP4qNmoxK11Rvb3mXPj/Uu5hzq366eN6uUKbSHNWjJE=;
	h=To:Subject:From:Date:From;
	b=qlmM9z4o3ZCC2KDbE44nEidaYpfROGXLoVAN1ATLKEw9UDPJcV96F2ClnspUrlLXQ
	 NUdIyvl14Kf/bRqueZ0Um4Z38XBbaFiZhKENH9s9GkY6I4CRGKLnSvIn28akxtrYGs
	 /X+HRKVK9ah7aSpuVLPU8LWLAt88mOmPirYGAw/Xkl5nBXfs8Cr/q2SDSS3eP8k6qo
	 DrTfwyrYk+FLKVbPwXk0UHUrRK9mimBlLtkDr34WDfHoWaUzXzRlAGx8LJLjkmbQvd
	 9BnRL2d5hKH5qUTHcQUYhVgejGEXEJqHuOusi62fpW6ooH4poyLFGIVxz9OUQpndDP
	 3SSgdULlNnuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E7C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875343357.25993.9367493140028990853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55da79f19bf30f914fc60cc3c3c87e0b96e177ae996a6ea75294e1f0efe28c90
Date: Sun, 18 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768753433
