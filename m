Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FAE2AEFE
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722801955; cv=none; b=YpS/OdGuzYB5NRpXGbixNDqDx47kHYRzEdllPACICGQMx9qprfLZNMl7sgtbzwxcTlBZ1rkrC+4tAS/YrH9sst8ZLuBxt/FNaLImZF9vjUKVcKblIqsuoWshWsNLIpuvymZGyTfC9HMiZeCTbvrIZkketwtVzWTbN7LAXEPXzUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722801955; c=relaxed/simple;
	bh=r4INyZtb0tXZ2rdiCzZNbFo3M0DoAidSF/mRAn+lXYQ=;
	h=To:Subject:From:Message-Id:Date; b=Kct0GlMk0ogQLd1qM+hjPTmI0puxjs6GItJHGT6NEPhJw8IsfzqI9Ss1BJ0oY7HClbM+j9AneZPkpfYRpnXae0Sp2slif+s4XhyGrBMqC3PznwB4UL5H0sKFtcgxRn8KfPWdIDbp9HGEMEuGryDUrL3wuxkUS8w4+jbWnYSzBqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlZO9Vvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlZO9Vvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E41C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722801954;
	bh=r4INyZtb0tXZ2rdiCzZNbFo3M0DoAidSF/mRAn+lXYQ=;
	h=To:Subject:From:Date:From;
	b=FlZO9VvcJz9lhHv7dz8hUAPllSn+8SPhhJ3OJ1fner0GqX1n3RnjGOQoz0WGdpno/
	 CADMJTgNtK3Eji1iGdkqBxgXQv46vxRj7O9OD2DgSLGtOXjq7JlpeTmMQ+d56ZSk/W
	 f9JSZxeXIO2crZBeIgvBtVALk1B9LhDSt9iwYB2sFh/9MITWQsGYFgUkET9Ix1wUMh
	 EI+epFESjbNJO6TwIHfbGshhPiiQB0oqWioEGaGyJorghe3Jb5P/eDT9N1QB8sQHIo
	 +pH436/j5rzNTpEQ+/CpCiwS0f9LW6mpvFB0W/UUq18lpPwDOJAPPy3g4t6xf2fS+w
	 S86PVRcv++HIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95518C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280195360.9757.9428697099086831276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22245d6012aacb7b5cfac21d6b00f798b358f12c2c880ceafe59bcfc048241d3
Date: Sun, 04 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722801953
