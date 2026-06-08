Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F1434E763
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780936474; cv=none; b=nA+aYzUjLqR03oUFNVHvdnf2l9CvgZgmy2s0M8aOrNoOOD9evE7yBP6SxpthfLfMzptzrwAT4+xvW2IfwCFY0M9zH4LIpyeQwMhpLBHFNpLEzkwGjq37n+IDNsZAYZM/LrhdzxLbFZkUwGla1LrhZaMlpGuU/YPsFvoJjwdXrI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780936474; c=relaxed/simple;
	bh=jEHKDhdOv5DZO0tBbFkikMvar3rZNgKAUWUIbfX5sFg=;
	h=To:Subject:From:Message-Id:Date; b=BIsj+vGmvHPqB0AIKNf4ioqjoNaQPhDW0HVzjpP+18OvU0xU09Rn/zvbXBjCUsUqLQxxzHm4HuxOrb6aK3OLYbhaP23FUdSdUBS1JS+LLo+0uPtjJGlqRjr89DIHYVc4BgpXb9+dq6AjeVk67S46/wdIOd6/D9DmcH45VzqID24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHj1wvSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHj1wvSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4693C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780936473;
	bh=jEHKDhdOv5DZO0tBbFkikMvar3rZNgKAUWUIbfX5sFg=;
	h=To:Subject:From:Date:From;
	b=eHj1wvSC2SwrXvt2u5TYuc+McoQ2BM8R+clQeGYpC26YDbN0FuUde3ZNRsvyAtVfN
	 CsOqdxsOWD8CY+r0T6IkP23hgWv4U0aXX4OvO1epP7Cp51W5JldaljmeFisW8t18NO
	 K2yham/nh5dXmtiyOdpbcsWd9NhcOAXYPT6cjl5LlWBbsGWROwBnJ+ytXIisl0H3uG
	 WoD0ZR7pL4L5wsHhrUadCixoOpJHt8MQYXt7kR81nInovCqPAIO+cG+Vd8tMPqx8nI
	 Rft8ni4YCUdwlt+vtjbe8/vdxqU9VZlqkV9YGQvpE85585FczBGp6DNt2EOii4ohFI
	 snKOdLCohkqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F3CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093647368.14958.16062286897176695556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517b7a7a7ad09eb47785be5435069be7c778490c0752c92493d0b8b59cc2d226
Date: Mon, 08 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780936473
