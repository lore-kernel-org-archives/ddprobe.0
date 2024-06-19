Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7068350275
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718767763; cv=none; b=h3WuZ9+LhTpZS/heamonzMitcJuqQWv6C41RrGhbxsiTDQNuocJBSUUaTbaKGCJzf/DHyRjF53p+Bve2epWhTyWp9gRbMRZL3f7U/P0oI/8uwwbC9U6tcsWgBIIrmQXP00SS/EqF/60ZL95Wl9grNXhws/sYBNdh6mB9+W08DUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718767763; c=relaxed/simple;
	bh=FiN1J5QrUo7THEUZYACUbaoLPEnVPvrERU5fM01ZbLA=;
	h=To:Subject:From:Message-Id:Date; b=sL+w0Hb1gcKnuCty/rs1ppQQTHW1nxc/4l9/a+CnoPyFK7YETxtO1XclDD4KHIMpVO8P1eos0FqVi6kpniIDlpaGIIuLIcRbhbXnCQg8wKzLb+VWQ1BfOFdTyrx6lLS4HZ0tTcOefKrUe4ZrobpPW+Xx6oyP1PPQCMcJuEq+kpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6ja2eV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6ja2eV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D5CC3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718767763;
	bh=FiN1J5QrUo7THEUZYACUbaoLPEnVPvrERU5fM01ZbLA=;
	h=To:Subject:From:Date:From;
	b=M6ja2eV4ODikvWEbWbYMJYMvFgbrs37YEClE4J72V+l1BaHjXHLhNlk5EjUaAeriH
	 KQ5lJQ4lEimcpfLNEbhG7zmK67qHP31mk17zqIf5el6WM/O4FeQOXi5fKK7z1j8fbF
	 h+EHnbqj3vqp23uZdKzPPx4Ed4hsWy5s8oIk+IZhXDIBPwKnXPSflXo94zpiMeenIU
	 yyVMa3vo7YiXnRZCHXbBdVD5WkQ5OJ2xCtlllRmjN8E/Huc9xK7+hzOaTnCqrRKSUz
	 KKAHVIrIzmhYjiP0M+UKB+h2SG3LTtk2MkkqAHQemX1z1jDZ9X14aQvfa3hVGLMzea
	 K5Z364qpV4X7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3AC6C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876776280.7311.10163491854449299958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29442343b21bf49f773c3838ad355369ab5405d71eeba132c99aece619b6d777
Date: Wed, 19 Jun 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718767762
