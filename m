Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235CA260592
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770933294; cv=none; b=L7Ca2AHrftqTmil66/Gwy6nbJdn4Lz5PB9EIq/8rKQGoWR/HOnU3A4yeMPgdN8Lc2j1jGtxRMmw4y7rVPnKA0us8vT3qyHdesK/ZaAAjo1iysWIUQhy86soKUoJcbrPB+AGz8AJqS604jsj75f5WlTpKI2OxSSlcZt6AXHldyEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770933294; c=relaxed/simple;
	bh=ZP3bMTKWiWRwUUudPUYLjhXNor/zyAj74A+TnH119fs=;
	h=To:Subject:From:Message-Id:Date; b=j/9s76LNuYjiOtB+fwoTgtCevPOjJEOdNVTJjc/gQuwftMA7YoHQWxCLDPTDY/a8U+ksuII1MIMZJyEkimN+W+ImMY4uYzGxaQtXhTWQUQKNmG2d3kNrAIbSnjlka7FyBVaRGVJJUR6cLsM/NXvj5mWvo2AA9z2SqEXncQQVOl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNbbUfqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNbbUfqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B046EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770933293;
	bh=ZP3bMTKWiWRwUUudPUYLjhXNor/zyAj74A+TnH119fs=;
	h=To:Subject:From:Date:From;
	b=NNbbUfqwbzKWTWkzTiihJ6+Y0u/OqyiD0aY88ZZ3CCE0se72ipagURRs9eT+rlaf0
	 19r3mjsoIUB13K0pfQxSWzP41ubr15D0vhUWhK7Brp6ChUe58/fyTPGMbmo01Sujkt
	 PyYYvuxdsucKxOTHPBuRyOyLXwgalZ0H1fmVPP8YzmxCrhnTq86NI4pCV8z+XVVJRE
	 PyvxcUMEV8sC2pTTv/X9wFvT5u26VeSLIU3ziFvFataiebcCFzCLvv4mVTuxs6Mt92
	 r7kAmPKBupMQXTBNV2IsMhbliKzwnpYCNOWEclsv5hIPsQJChv6hBAe5/qeLsDPahI
	 ebjxK9VXxGwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B279EEA85A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093329362.26040.9444865320635242295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0800aac229f424e6c082de6321a255a2b05d335a31976c9e2a855c0b9b343df
Date: Thu, 12 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770933293
