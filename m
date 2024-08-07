Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4067212C470
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723050954; cv=none; b=SYG+d5WVV3ZA/lSmvwEy4nNieT1xkbakxBc18lkr6VqgUIZ3PvcGEGCLciMoEiNRWX/yZAa5QOyrOBx+vA1exXUZx7BXSmmXShUEo3YmCAKzqG33trbkun/QwZ/ya/zlttz3A0zrtz/WFBOsmZC3KQTEvPR0fChMzLH335c7lCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723050954; c=relaxed/simple;
	bh=OVD0Cjy1Px14PeMkFAlwKwOYXxdv6Meg5W/YhEPNUvw=;
	h=To:Subject:From:Message-Id:Date; b=rvtCEVmNcbI5r6Q0BNZ10HKmmnJbkuFXHeEy4mkD/vQ0L/BmZhTfm4w+2x9K7yQ3g0gR+QYQGp8VUOMGBz4Yf5Zat6ToAiZQuBlpGOHS55G6aBge+VPZ8IODBj6EIQ4S6xV8F4KAfXUDq5apNJqFkzrLR7Dd3GqCTqH96t487B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0AfJOsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0AfJOsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4683C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723050953;
	bh=OVD0Cjy1Px14PeMkFAlwKwOYXxdv6Meg5W/YhEPNUvw=;
	h=To:Subject:From:Date:From;
	b=O0AfJOsgyHkV8SFgTq/EW/EWqPmC7HKSGhzbb445RWJfqFRLPXm2S8WuP9qmuC2/P
	 UOiigFCnAmWjKFo/k4szCO2REsV0x+b9+tB1C/A7cdwHOJIhMmaPmLyJ57P7JT1PF5
	 GMt1jft98/5Iqof2Ol49TsSOhYfy2o+d1OvwjtJr1hqvKj+MJ2/9v3FglgVrkVxSzV
	 ENk7YgVyLzYerpr/zjqgauK50bpwTUxoa7uMOklKpo2BMf7k7tDppmD61ITRU5Ep7+
	 gcDoMeoMtQn2fn9uSLLXtz1A74UPAtb//dobQd9k+SbwRTA0fbbERx/JIhJsWkJdvg
	 JcyYczY7YRk5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C13C52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305095367.8817.1038261826390027815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82ff6a759baa86290919b99363788a17a076abf90998dbd5743eed8a86ed69a
Date: Wed, 07 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723050953
