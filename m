Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D3A36F41F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773867294; cv=none; b=rpd/JOrlNkxwr4iw9I61mrvdTkFs6dtReU7RgbK4OBvJMAjQp09x9N6fRT4GzY4mnplbzn4HyrtOPyMRyN/A8p8UCAg4ixPI+9S+HTiBeA5uTW6o4kbnoYxmbQrsd18+0P/8/kk7p+eqNe0snTAIAGnkY58VMhNtMkLRKY1qf1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773867294; c=relaxed/simple;
	bh=IH/Kh6O4PMH1yuCDYrUIFUGGJ55WhmLLU2w8d1fcsY4=;
	h=To:Subject:From:Message-Id:Date; b=JIfBgYtrGEk3Oh5bwDV9rNNRdIezKKpD7u8dQ5+hlqeJLEHLFHKXqs0e7ZvV2O7N9FHCoaGDK67HUAVx1rWo4grO5eijvHq/B/xZjVlSiKcn1SRAYUVXFzJAF6BosujL8w0sXutCKpAlijxbETj8x4FoPwOppYzEHwElMU4EyiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWsdGU3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWsdGU3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9228C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773867293;
	bh=IH/Kh6O4PMH1yuCDYrUIFUGGJ55WhmLLU2w8d1fcsY4=;
	h=To:Subject:From:Date:From;
	b=RWsdGU3ReWo5LWtV0f0wntnDtNr/yMsH0NraJGHSzlgI5xtiiQortsy/1AjrouMEY
	 zUAiDkwHL9TQjVnaQbtGNnpkOUr7jDkezSI6NghlEjsIgwqbYG32WAhychcS2o0FfM
	 0lTGKgtRI8ga5E1QAzZl47sRCRBX/IfoQyeirqB7nXY4UtVhYnBWzzu7X/bOerLAp1
	 bvbA1+JTrPcg4jON0yTUBV26HzzTfgydtc43CJeTcOM4FDCz9kklYtDBQ70PTznZcy
	 2NSFQQfMI/FU1848Ga9X6Oa0r9vEZLMig3eNdlGAfm1HM3YQ4sm971egte4FngTm2l
	 cqyuxFzQAIGSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3373107761C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386729363.11618.13675058523292423590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cda505bca81a9d607d1701a759b74eb831d44af78403fbdec7fe378348160cc
Date: Wed, 18 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773867293
