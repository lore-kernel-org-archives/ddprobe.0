Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C1239E91
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759663794; cv=none; b=OCfb/jVhKS+vzzjd1zOCP3h1PPIWFIUyx7M+Zcw5szza25adhOzjJJUj2uS5b+Gm02SgQA0J6eFQ58jkmJNvdejbsNpUJE2pIYbUfbQLh+Ga4jjCxjRsvSy+qANlgP7BXXGG/zjEQGikoW31f/k6OhofodUu56NU736G43bEBuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759663794; c=relaxed/simple;
	bh=hS+8Se6e6RTgrpFMa6eejzVurw2XCfozVKf5pdaEXX0=;
	h=To:Subject:From:Message-Id:Date; b=s6DWoRIzKYo/QZIh3Tk70DOaZ9us+87sR9W3MeJIMr99Hqu7OPRTltsIUEdcjisoYlgrMRKspO5gKCuGy0XrCi6LdzHM4vk0Mz23/jlpdSQ3ETkU977Q+8RuStj15VMKi4RH58rW87/XN2tVA/qvgwrL/hZ2Ns7sDq0csR9g3Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGk4RWJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGk4RWJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A949BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759663793;
	bh=hS+8Se6e6RTgrpFMa6eejzVurw2XCfozVKf5pdaEXX0=;
	h=To:Subject:From:Date:From;
	b=XGk4RWJtFCf+Cu75Y9x9p27JciWumhJP0DqrvTa9xP++s8gJxDkv8wUrqZAqFY47V
	 3swhvHKNLOYa+miFa2deU5Tnpy0rJd9mFbYrLXdY/0zZPxsKPitcwD2mBlFECQqRS7
	 udTq+FBmefgBeU70mS/3S+o5ruqYsjZyOsZqmiMONrB74tnoHA28/cNB7YOm06NmwT
	 RAo1/L/sDKokrqxDJKPGzvsS1P2k/9Np94h/QIB6tl8eKw9uiPCY+6X+RGxxyEi2FK
	 ZxbdOcRFNkzCY5Oc6Icf6TOkkn8cDI1WBbGK+MoUg7KvL2KxqMnMeRGgpmPWxcsgBB
	 GA1/OD2O/VWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313DCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966379358.9685.10738432707410583428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d5e4e48d1c35d9014b9ca38e0d2227716aecc1a982be37ea710ee080843898
Date: Sun, 05 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759663793
