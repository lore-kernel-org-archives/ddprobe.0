Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A54275105
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747650594; cv=none; b=GdZNTmv0C0aqPSBnvTIpDn+kN0C6auP9xBJJCsovnH3DuOX0TJWPSL7h4BCVB2n3pany+1pGwDhjtil7FL0dpHi4xzWAE8xCj/9wSWe53ks0BzN2/5GfH/tHzC7xuQmlkV9VdUPHUVkDwpkVD6RazHDagGxdrHzIOQG6FB2cKfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747650594; c=relaxed/simple;
	bh=AUlwG+f6rLpOEv/v9xhFyKKVag2jHJ7niIWdYWJghqI=;
	h=To:Subject:From:Message-Id:Date; b=rRRYZEAOYKGPdNfLH4udJ13b8DhHJQuB22In0GXlm4RDE8eyN6XpN8osVnoFuoB5OgS9Hp/q3rRaWgxdNirwSG2F4nc9mI+tGFqcz1nEhRC+DDRpqu8x3UKdAZSazUyGxcfsmbr2vmtOnlekwNoXhbylevvD1Nx7rNW8fsltsAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPOHD3XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPOHD3XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747650593;
	bh=AUlwG+f6rLpOEv/v9xhFyKKVag2jHJ7niIWdYWJghqI=;
	h=To:Subject:From:Date:From;
	b=aPOHD3XBNbCVZTzQEMzzeV8huh5KYCMdy95qtCsOYmOvX2mAjjsokAjJOR+Knk1mf
	 /EL3bmmLA+bpMDQsM/I4cN/XB9x6V8U5DtLux3GXctv9EZQLwrYwSpL343HHFvzZWs
	 sAtloaY+jQSOex1+uSdHiMvVrpm+IyObjBfHnlI6mrYirqwi5LvczJUFAbVIK+JFfa
	 Yl0VSDmAoqSDuyhAh9TFx3Al5d5L/YEcQzT+s0DkTTnNOahvkuFzHjLQf0lExFCUb/
	 jgJrJigl/jGRe0dk5DgwoN71azNuibbTO/ZLjyX6ompPKiovNt1pW3XYH/TCdKf5h2
	 ErNiuD08QOcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765059357.4722.17640938747968818262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f760401b192e194ce7a014c41084159ab5d3664adb4d20f93754bcf49b8a8205
Date: Mon, 19 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747650593
