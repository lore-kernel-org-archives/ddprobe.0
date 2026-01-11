Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCE7262A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768137234; cv=none; b=ekS2k2YB+3c+cmZSZop2flz88y6yrPZhZEH2HQwt7BsSIiN/31eeWihYEjl8TsHD00h7B1pfdC4ARRHLhdNF5AixBZpHSYW26/IFpAIialFL3h2SSvcj3LQkAnhxqSDGf/PYrP7jx+A8h4pU9OK9x7AxwC6dYv+hGchy5E9zD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768137234; c=relaxed/simple;
	bh=750m7uve15WcnCOfrCxcu7VSsp3TrU4x+VpOBlGGXvI=;
	h=To:Subject:From:Message-Id:Date; b=KuNqBKuwV9IffVAxJgg1wdDJgncROHwX6hS7fuD5F6WYfFESBc6VRcyo6ph2C4khX/Ca/Dx/yW2NObBFgmVVJ8zhy2zt8hgTU6gIrWz0eDYEL3PT86BPrGLnXGCgezUaG/eBKP95whS1mS/GVfKvsl+wqAKf1ChHCiXtR2SkUzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1/BQ23Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1/BQ23Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768137233;
	bh=750m7uve15WcnCOfrCxcu7VSsp3TrU4x+VpOBlGGXvI=;
	h=To:Subject:From:Date:From;
	b=A1/BQ23YWlyywV9188S1T5Q7n8LjCAVrRnMc4f2DpAFOhi/v9wwW7ajgZmZ5sj1sR
	 SNGtl5/Xavi+rvN3/O9mOmD/60ijWI44czAxkbC50VtOpLInVdN8j9E0VLxFYm8hz6
	 uaQgXOXfNPFRRsgmbE0MKh461tGvgy9GGNPPNXPvXlcx9NDqoaj5Dz/4Hv3kIzbVNo
	 +a7nRHk9ucXaS+tSFL1DwTlfqOFX62s+iPErJCjIPtb6dU4FbyafR9SnJXUjnWhk7B
	 EstDh60gwFOz7HXDU7pN9NXw1qrllhZzN9tEkv6qsYUvKhm3Q0cwnOpyDAwSpkJOT9
	 5FFMVPgdf27QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95178D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813723359.16458.11419091443733429243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d91e2e395325fe7fa071d0a6b1d0d6dc2c2a2bcbfd34de8608ade56987af81
Date: Sun, 11 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768137233
