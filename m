Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D921CC5C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785378034; cv=none; b=ej2wir89hvsw1f1oVaJclj8gsjhVsTh0i1Ynv64Pjf6t8jSsIt6kEgfPTmNCg0fmDgIOigQ+FKHeOiphWrwhs+1MxH4sccN4TduHf0LNKul9iAVEdDPUyfJgI4u5kNTafnvim8sXX1rDy6wBBro36C94E1fVZdJWGUPlDBgtph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785378034; c=relaxed/simple;
	bh=pOcRV34XBVmZ0JgJ/z49Q5BKlX3uF96BN/v2wiVEU4o=;
	h=To:Subject:From:Message-Id:Date; b=mK060BPWEnx7o28maD0vXfqL3sN7XHXCYdq3PbC0Xpqfayy4UTK51EIBPuQdwWFpZo34fSLTLRUniGO7373/sr9HQJMfXGFI97LSz+FMzr4UiN4Ov1uYXqgK2PUFnu5PCtNJ31C9YUzRozcNwiNjqo6LihO8Ox5t0uNu0TznWIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnE0lakx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnE0lakx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88D6C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785378033;
	bh=pOcRV34XBVmZ0JgJ/z49Q5BKlX3uF96BN/v2wiVEU4o=;
	h=To:Subject:From:Date:From;
	b=VnE0lakxoC4Omsl0X8tXIKwBLKQUS/4m47ly7h99VDZLNlYN2dR7bvRYPuTdEa+H3
	 Hy6UqItQRj2kbQ5LJrQIGT3MVvhJW9e+fwOtveaVYdYfEChUyRs6T2cygqy2wgR+rX
	 itsaL08/+Poqsbqx/IL6lxOigIxX7lsZ78rbeEunCUnPCYOxEEImt32iNTDLhtxqZ8
	 pP48DhDdk72UgB3jTRZJB9chkHflqJQTbOAUX35nrlIBcgGptdFLYR1+SAW8YTznMg
	 kOMS8nC1DId+/L675iWzNNWKwfEUAedn8aGAo0lJOcqXX1+BFXuQIc3T7o+P/GhfO5
	 bE1TkOm5GrmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A887FC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537803368.4065.4322001607733811400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32219946f8853076889b42da192519fbd5cee5918543678e8a59270dc1104d65
Date: Thu, 30 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785378033
