Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CE13195F5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758298794; cv=none; b=RCot+7Jb3ceDoke06xs2Rwhbqx6yKAQmGOtMTyBHCrOYh6HhQ60mV5hNwe1PCVGW2uiwb9/fvhrNf3FgzDL70CrcMfdZ+oFtCd2+e6zdhtn/5xsZIstx1Gixs4feNzUSVrtxIAwTGcE8dkPMap6mDwjsW8mR8g9N35UdHfixoc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758298794; c=relaxed/simple;
	bh=EwNAVawihUSnh1i4/4XgJ/7UR4CHi8gLUR2Ld9sQ3GU=;
	h=To:Subject:From:Message-Id:Date; b=krVyxsC2j1bN5xWYXwjx5rl5lCpn++VXZaCq1/Jb+YwSj0B6g2Gvqa1guKoowzJLRMKMXpiumW1fvQ8lQbI1/THUrdc2me+eONmw7xLBr9/f9V4M7/kmVDJNVkbPYvoRXju0XekzGoRCFwy8NukYnhFqJcXnNVrf1IMH9CQIhdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8uYpAPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8uYpAPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758298793;
	bh=EwNAVawihUSnh1i4/4XgJ/7UR4CHi8gLUR2Ld9sQ3GU=;
	h=To:Subject:From:Date:From;
	b=t8uYpAPz5xodjzoKfWMe7WmXb0mt7BuhzedRu4f/QN5K+VWM3osFgYv3wDsSM47yl
	 exOcFMJPCQ1Cvnjh/p5keEgrVwLrebzesaFrSghS09+nlfPyzw+lsGzz/WP3wiQU52
	 LFe0dlqm1t7zWVT0UpMq4tOfYlOqzanZ8ArfLaJpM+69SbYstgjd1kwzgK97qa6nlJ
	 6U7ged1aP4SlemZnTcHAzrFqTLCxBuqo7MdneOjHhbursO326kzCfKLOKMuocD/kUP
	 mzusNwoIjLW2ch5nUtyyUS9sEAToDL9NTujIwZWBGgM4SzUN8IZBLZljiO5eLceR8l
	 rlUwEhWYjXoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EACAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829879359.7392.16821478329792753323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee5eb7f038810a0e828a7a6db0f86bc13350aa5dbbd0b126d1e65b3fea40277
Date: Fri, 19 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758298793
