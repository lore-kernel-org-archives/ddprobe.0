Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9B171A7
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724361954; cv=none; b=XjVUZuS140ubnRfJgVIAnLYTaKgnXuX9JCr4FZceVoglKAhmQLWdqcECwNaF7kYl1VJ5fxBytNQGp082kKCSJDu3ipROyYrLMJF47Pl6mkYOQ/ESsxY7EILg/G0iS/1y9P6ggSfwLyVNOhB296xPbbqEhZTfed1QX9dMxU/+I1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724361954; c=relaxed/simple;
	bh=H94UFzgmiXYu77C0OUUL0gnAqA8kxTrjTWjYUdCpnkI=;
	h=To:Subject:From:Message-Id:Date; b=clFW3OHkImv1XHdAuCMThFFrTs5qb+w7JVjQCo3rrXM7Loj4q0ubhJlywvgmwgNPOnIgFCfRs/9i5yASDVZ41aNyesg+9AK/7KGw0+jWuc7N+QzGXfWm1xhQt8ZqfZlmNCNn0h4dImmKezZ0m+JzmhRBbbL4YOx8Dkm4L4ffrhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki/B9Pxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki/B9Pxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3EBC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724361953;
	bh=H94UFzgmiXYu77C0OUUL0gnAqA8kxTrjTWjYUdCpnkI=;
	h=To:Subject:From:Date:From;
	b=Ki/B9Pxctx3SYk7zassoM04oZCWvQ1f7YtpibfFIkhYlGIKQX5oxETICm3NtpLCsb
	 vWC7ySJXhYAuPzIDHElRaytt8gNl6mXatk54EzbtqoBmVXe2DtflWBgltDqZTg9UIR
	 TOOuxkcU4H9F0Y+pUJa1x6wOAU0E8HlyOF0QAQYkkA9FlphC23zTJcEeliEvt6l8Jq
	 wa3ixzttgMAO0F51NYwVrKsWkJL68XVJA1RAPgH7hmFSaoiesFLXMCgTXbBPG+uXlN
	 KtWd0XbAjpN+wqYegP8FyK4y0QQRlsCEeoF5sJw6tARE8ns33+IFAA0bU6yvndV/Jd
	 OddOLhBscXEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98545C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436195361.10953.8725296630987720901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f689d0d2e5b0bd1403a91de78a8ed65f3a7a10127966de50d7478b84374e61d
Date: Thu, 22 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724361953
