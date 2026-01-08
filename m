Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192DD611E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767837834; cv=none; b=eoDp+xMPsQ93Qbqk/TKQgjjQgX9jEYTLM5sxBu48bz18C0vetsm4OQ7rehrMBXgYN9C0jCy2woZVQILB9Md4C9jK/1mUkxdck775R41Q/D+JQ0bqlhsf6xy5+UeJIiNqQJfwlYOyv1aa9TvaMffU8Vt95HC7sVfizyJZ/WF8rS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767837834; c=relaxed/simple;
	bh=S6ddSqJYH67//uaDLu6o7FBF3/9zSB0TKUOVLMveWSc=;
	h=To:Subject:From:Message-Id:Date; b=LILv37EF/cvdnEDNYwfoVeVXTRsOUxmfyU3NUPAgma/pCsOssPAUwj82OF5k+WqABpr5g2+IDeEm5j46qN/5AhV2LSnW5hezr8iBN9IEi94wWI3dCp2crtNS1zq0iq/8B0RQuthlDdFh+qcaq3IAp22xUqc3fqgQEt7lrDJo3xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9sE8syX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9sE8syX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50C3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767837833;
	bh=S6ddSqJYH67//uaDLu6o7FBF3/9zSB0TKUOVLMveWSc=;
	h=To:Subject:From:Date:From;
	b=M9sE8syXUyE60bsyD7tXDWeQZ8a98W72abvFMj+Gy8k0Mjp2hjcvVFoBs6CffrfEa
	 gX3OzyPLdpFscuI27fyzK3VoSt7fKIrYrzo4odGpo3L+JnmjOgePWdfKcWKlVmHRHZ
	 +uwBg2J4yxLpqPMudaIlAQRTLlQNFLTn5+DhWY2DoesmOhKQJKu4Vx3dOWcXWcFC+4
	 MJbEr5TmbcXbAguktJmW/q3HQ0cHdM0gp+zyPlTe0WXEDTPAjwPRqzT/j2FlkaVZX8
	 pYgmXmwg0v6w5rPrtqAkjfNZFAQhyRUh1jirm3xqxdXr/I7O0/o84ZLXwDli1BRYY0
	 UCYLuaU3Bk2Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94259D1488F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783783357.5350.12064828554709893652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6f04157bc29ee102253663a4483ef1e4a37429beaf74032f6c4b3a5711ace4
Date: Thu, 08 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767837833
