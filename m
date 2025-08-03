Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D52E3705
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754196595; cv=none; b=QsuKnaJU1bkTnoml6aaPh0t0OmAZByrWoZMPTDsC/wl+YSYQTjQ4i60Q7C/WzF+Wv2Mdb6QAlpPWJDhh0/TlzziaKUXHWaBERUH6XvcxyvoqwDF7RImtEpvcX71iWgaWiwFbqT8pTTwhmVA4P4D/egXpLjyAB+PxqB3nx/e1nUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754196595; c=relaxed/simple;
	bh=vTPsst7uJqHbNB2jBA28ADkIL3969QG8unBUv2w/PRY=;
	h=To:Subject:From:Message-Id:Date; b=iXv9miv36kOoZeNpr4xiTzJKaqbXF8LRS0ccFxokKCqz1gCZTdALue0NKYGgk4Op4Th+DifgfLZxRRHfm4aEuYotGrig/vPUl2QeIQ8QaH0xQc0LC0KwH0H+DVvqRpGddhyZ/is+QxOJs54tMSZnuYj4tWftceNYmsjizBcH+BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqIZuIFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqIZuIFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBB0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754196593;
	bh=vTPsst7uJqHbNB2jBA28ADkIL3969QG8unBUv2w/PRY=;
	h=To:Subject:From:Date:From;
	b=OqIZuIFTlD5pU4owFphnM1bWTgbOxNF9dx3hxBeI5zjvc8GKhcLshPlYDPaSvzb57
	 +iJzsI3kU6ENNZOk7wTeBedQye6iPvEc1nrYcnonbkUTNg+X1+d+Jt/J1+QaY2uEFa
	 6yIkQpyhDuhgKglV/Xptb+SGkIFNLuPEmcoCxvsdY5oTqxwa9wgpo+cg7SbmJRLDFq
	 Y7bOWKuWo1o48bzyCaVNU8dk8zZb0feNSXLkNJrzYDb8Kz3y6uY7YHsTjHp/m/1dkN
	 YaAxdVuw3WG+2rYG0QcxJW/XR4p4vsoK6iQf8JwDyGYV37Z9knpfBQwMH3GmvNXVe7
	 e5uTanEOpse4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBCC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419659357.13753.17714097803112418120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25812506d66420dbd8394e6b9c7c486e496abd09b696575c41d862c8965e3064
Date: Sun, 03 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754196593
