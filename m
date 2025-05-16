Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FD027FB17
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747432194; cv=none; b=LU01QQ+Y5nracN4yvkHODwdn4slhrDFas2/vGV8bIlQaflNFK4lsPoYDU6gMekpXwsLeb5XdZn8PvLg0/T/QlYEkf8ZgUg9iqI+yme9CFQAc8hYIVhW5etuy3B0ro1foQTf6+NTQ6Dae8QD7pP6mAgPDKME7cwLvaL7LBErNxss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747432194; c=relaxed/simple;
	bh=r0Ywok9OGBmhaGias6X+NNbpICkM0hEhDBk9I6DjzlY=;
	h=To:Subject:From:Message-Id:Date; b=iyaK7Kxu/Rmo3hrREyhvZODDKLzOlSyJavuaYUmODNaXqkUhwnRfV9jaiVT8P6l7Nbd+BcexgyysA4eIG9dNM1zWGMv/0chsE2h+VYX626tt6bT1EdqAcHHdQiZ2x8PZ8QjbGG05ZnMq/lOv4G4hwxDc2dcyyWu7KY0NNs4I0fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su+a0sdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su+a0sdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5242C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747432193;
	bh=r0Ywok9OGBmhaGias6X+NNbpICkM0hEhDBk9I6DjzlY=;
	h=To:Subject:From:Date:From;
	b=su+a0sdym2xLZvz8eMZu9HcUwNGVHcI86bj65fGyH8E6EYHl4JsSC46vLr9vWhiG0
	 3E9v/da7ZK/aZ1IZ3z75LpnoSfZSieCWmW29uSs3CY6QiIUbika9dFpR8o/ydKpdaf
	 A+8+2fGa2InZJTi/zuOOZxdS5Od2X1Mps9IATArWVXio6tpav4EpIque2HdpqU11YJ
	 OdGDVA90gm5HXPpUWJBeKddogpxAxofmmYwtCVJf1rk6fF5mU+GFAPdrPnVCWvDl0j
	 gNOy0nZTd8Vun/SBqxT/9jTInArYHnPLFXUuYAI/hRPIQkzDVBTtuHhldWoOo0YQXT
	 PBgymuosE+evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92446C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743219358.30518.14415374080878308578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5341983afae96bacef6acac15be22c35a5a6f2fce06522a242f6bbf6b3b5e7
Date: Fri, 16 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747432193
