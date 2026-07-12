Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C4030F7FB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783842514; cv=none; b=RqC2E0CNAwtwCsXqQXZP9V2SZ5Qskx6TTdRo45y+hzIlLfbF7tEyL6UVEFaDYH/MmbY44L9wMp3M0Cf7JNwBGHFWNG1isqWPVjSgxkssBm7lNHlB3mlvGQ0qaYeF4vf6/nbiErJCQfZMilNhgTzvc49I09mv0kvMrPYQYM8ItkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783842514; c=relaxed/simple;
	bh=+fj2t1cGvX3N5SGmtDWZdWpwVno9CSgbwwODD2LFKCA=;
	h=To:Subject:From:Message-Id:Date; b=nFH+FnzVLkfVy1ljeMVlKKU2NfbxmyavAmpGZlUIoW9yd3XbSQOCw4A07j2+ILxjao3AeJywPFt0WxoerGF0uvBInnWMdT2Iw2VcaoefAC1cCZvRsh2JIylXQ1RIn35xYwsPYG4Ia76KraaZImJsI5jZYpD7qVYFp27C/+rRwcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6fnF0tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6fnF0tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D6FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783842513;
	bh=+fj2t1cGvX3N5SGmtDWZdWpwVno9CSgbwwODD2LFKCA=;
	h=To:Subject:From:Date:From;
	b=O6fnF0twqqMA+UxqsH62jdhqnPfT3NnRrSAJZjU0VW/P6SjQBSV18p2c8i0qqRlsF
	 zFNk/HK0aogbQuvk0IvHunwvx9nfpBtqNsXGr+2FIVmc+1qo3cxoGXdFOHtaRXmTTK
	 drp+M0CnItTaXIcowLmyDNQMHWnKpyHMST5SNDPuJkOXC+SwHnagv8IzC3ukUSv/DH
	 +YH7r2kJ9L6I/4Zum1fvRPnByleKBYb2fWIT7rM3pW658PtMeVXmlSE+8+NSEwzhIf
	 XBb4CMZZZXaHF379SFNhnoZVAnijQ7FwZTTGgsdpY3GPgKT7iTG4unBwCWFZZk5Sy0
	 bgJ68mXVPzS8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C5C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384251368.8106.15505175585252448168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3142c55b8f23e67d488d0131a4a3bad6f291d14a2d3d86aa4f2e86aff54ed6
Date: Sun, 12 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783842513
