Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C0A1514E5
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715606543; cv=none; b=sfFxsY00Jnj2F2Nl7vhTauziU+t8RWU2Vp+N2ew5kg+a6haM1zPP/HnQpkSqkgmUj1PYc5e8IgnG2ZwOOC9Qrvm2abwVa/aMJ1QLx9wBUicgOW7PMHQTZma8+U7mU27jFz/eA+c0YJPRNMvtnOa0/gOWMwQ696PSiETuXOSMSYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715606543; c=relaxed/simple;
	bh=rRIJ6X11O7cdFrULleZcj6tkOgcAyceN2T82QLzJazI=;
	h=To:Subject:From:Message-Id:Date; b=jqHAXOnHlaDpnXixi/bMhaJn+XlyzS9IlUPXvO89N3Q1A6Ft2GRIpvrTpiTfnoTGSuFty/3q32o5Ld2S3Qs3RU4OWhRq+w4Iz2ZfHM1fmB6iRE4LLTEGhGiTU74PSzpyEhT9AdgIXLjfWW24oSQRAHquNkSta3UE0Ssy8wJ9M5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddUBc6zh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddUBc6zh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A38C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715606542;
	bh=rRIJ6X11O7cdFrULleZcj6tkOgcAyceN2T82QLzJazI=;
	h=To:Subject:From:Date:From;
	b=ddUBc6zhX5OEMNFmIzme9CQHzETtWcMQnkp5lwjerySmq49t/xAWMMdFpb9nomszR
	 SSojeKPUH5pXBkOXzGaRObh8XWWzObjqzZu331Wz51sQta4rJaBSax7ZTxx6hV1Z+K
	 rhFIbjpYwBGw/sFLLGJ7GOMomWM2gQqUK+itp7xL8a7KkbImPh+91L9lXeQNgfHihO
	 WvvQhy1EvnsJdMNi4X8Q0bdiOga/TANCR3M4vabbPbyjZAQXru/h4ooSsCJGK7DiSZ
	 JVOPnAmVDJ2/udzs1fREcwVYiGbALAhWvj/9qjXk8BXcpUDiMgbV46+VdUViCir11k
	 hGRjyonA2/Fag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3146C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560654279.4155.10892986223251335717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655265ee48906d8c92819e4a31465dc3388eeb8199d0cff37539004a872fe1eb
Date: Mon, 13 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715606542
