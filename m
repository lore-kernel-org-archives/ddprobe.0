Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B68E18D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747875594; cv=none; b=ESngZsaLahzi4cRWRJhc+2n8xcBTfsNfWerk1AVYYLX+HCPZ5BHJIy/MJepUYwhQMBrGpkavMeznkGZXli6brd0itOx6NncjsHTktHxPpoUVlnYppjtO5gOsJuNWqk9JkFnmoGh29NDJXeaWUaS8UbAqDCqIrGmX/x3YGlVL480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747875594; c=relaxed/simple;
	bh=s2seYhEFYCexwXmIYWXs1bsvPdith9LD1qvJYJBL3O0=;
	h=To:Subject:From:Message-Id:Date; b=Ps2l6L1DCqZj2zHUU9jAU4sIOs+GzqVPx4xutI0tVDfWD4i52fn+Y1InF8m6pIz/f+oXbqeSzYtZ1QxKbMoabRtXDTDZ9FM42V9i+wfLvt7FngzdfalrqwcuRSuS5dvu1Fv0PA5hhz9/gEIWJoWf+iubHNb28gj6lp+Q6K5Dg94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLE4RuQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLE4RuQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A01C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747875593;
	bh=s2seYhEFYCexwXmIYWXs1bsvPdith9LD1qvJYJBL3O0=;
	h=To:Subject:From:Date:From;
	b=cLE4RuQtIH2TmaeBMp3Sz58ZGQ4EFUu6vyaFN2JipLX5HDCfVE037ZvdErqVa991k
	 HW2K9rQPTmEphorr8N9Bpln4QBwYl8k7/3t9Mz37juwZgUYuuibHWSzF10zNhaqWTX
	 l9sj28NzUJEQPY+sxXEs4OdmXwJGahSV6kOlIaDNXphTKq5IdOiwGIlGD0wD+/OrJH
	 NpQmM/4MwqKJUiYl8UlxH8p9MzK2r0ogN9ARYDy0d/h1DewsGDaXHb2L54K1KiUov5
	 a8tPEPCgH5TLpbtLHUiD6u0PknU3AFK9Z/AWIvhCLMXBpeTwpbElIcGO0/SWzq6Vpy
	 CH/NJU8/yj7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94545C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787559357.26279.8091788240790564888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadd531b5637f7f1759a61d85175035460b0803a0bd9bb7ed7d958c56ace4559
Date: Thu, 22 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747875593
