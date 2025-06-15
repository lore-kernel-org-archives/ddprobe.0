Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523CABA38
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749992396; cv=none; b=JdY7TMy1uY4WY+3qChm/dOVTIN8Yqi/KoWFtk71f38mlMtVxii1/42PIalcoV4YgtUgMEuQFgmJhioFZjjWBqWZy/FQ7bRgM/AUj/xf6rSB8VqcpLVIVPjHDwreUqkqqgYIZY80VQzl4QUAz+FpY7tBFLvyIhMpXxGZjnhnB5xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749992396; c=relaxed/simple;
	bh=qs1axEZQimXmwf0FMFb4TR6fSSZ+XCgfwxHMjp4W0D8=;
	h=To:Subject:From:Message-Id:Date; b=ZD3UPIUSKr7WDwfyCuu7X/UBUi/rAwdYlUjKOuTLUBsgh8OOj3J0HxdIVmDcV4iz1kG7cIwC04gd0RWONYlFRmJWcfQ4S5ebrbEPmDQ1jy7GJVabppmW/SkLYQMVYgX3Qpz0lpH33XXj3kgYIYFXIhbf11yTjt7lHb3+X7Kd3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIsj9DQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIsj9DQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72FEC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749992393;
	bh=qs1axEZQimXmwf0FMFb4TR6fSSZ+XCgfwxHMjp4W0D8=;
	h=To:Subject:From:Date:From;
	b=NIsj9DQLVEXjquy9W6lrTK6cD7W8LWC93EYrOc74+D4FJcQ0X0KkTfk7AJrhdW7a1
	 fS1MHVBPgkSQlr/QXfq1HTkgh+jLIl7lb4Gbr7wRGPUS/4hHtGEwYaGXohKeqFcbLr
	 FeF+GX/Bsnn+Sr6SZm5IiDdvcvJmCFok65UdUnOMYKW/vjQ3NHG+XP3oMVhOu4U0rX
	 a30GfW62xwyQW9KGqpev0IB+oibxGiuKIKWAAiGi3DtuOOm9YvpZFzeVcsbekIm5k9
	 4q4oIwDPmWdUqYvUQXDWO4wULykYZsg/UyiOaIFOiOvACcv/2sN8fSupF6ETIvho1x
	 JuTw670SDd8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCEFC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999239363.28613.1954986645100361695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fe63b3e6f0d97ccd1fd4e9c4afce51394a7c2924db0ee2d2753ccf16651f5c
Date: Sun, 15 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749992393
