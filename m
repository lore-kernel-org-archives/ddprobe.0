Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEF1400C
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760260794; cv=none; b=QIvb868ePAgHB6GWE+Yb3dELpWg5kQ717Y2SH2hjJ72fWTEsYXQL/9XoJ49HX9krkVH/E6f53FnzGvpoUAJatveCTtCz0qjW9r0pH7INMs1vG49/1wPfepLmiuYvQY8Yu/CaXWeX6veW7tA3kAq/mDNuL45+rGhrJAdTvrrdlBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760260794; c=relaxed/simple;
	bh=CHwVClRHRpQFnTzxNL4OPkeFRlRenlcOQvYiSyxf4/U=;
	h=To:Subject:From:Message-Id:Date; b=WohGXezkWZkuMgrGi3gCy2rmfFb1LGSRaAD6alMBGBVKqpnp2JRJG4JliIw/ZQghQjIzY5lYRgi3FcXvKb70/Dv2RVyegmVdbbqAFidpf764UahuOC7P9UmYksECzIhfu3hx5deG0ZcXq+mayvc4NCxRyHN+eXUKGyd7S5SLLow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZk/0swE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZk/0swE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760260793;
	bh=CHwVClRHRpQFnTzxNL4OPkeFRlRenlcOQvYiSyxf4/U=;
	h=To:Subject:From:Date:From;
	b=BZk/0swES65Kqf9E2A8zT6yHKw+023slna0io1n2mVpDBGbu9q9iOsFGdF6MM3DuE
	 v0O/yRAabO3QmvYNX0vcHgV+2b8BLln2u2vMsHtYUytdpWcJ7YEoNdxL1Q30/K9jDU
	 qDhRohohncKB/1mLV7cAFN1VK5XVf07v36c703fEZWN0A6jdIVF9AsCifGCVQItxZF
	 bjgHLm+42llGLAS4HPk8qYnC0SZF0WwxfxkqlyJoJXP4FI+0xvfHYdOHWIh9e14PmB
	 byY+pyaKTZEamazKYXs9I0oowREiqyJDNTT+KFQcb/MzWuoXYQM15PEY9L0e/z/hE9
	 L6+qViZ1Iv+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9594CCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026079359.11095.11767988875457932419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db6eafe12b670ba3152e9d395bc1bd945e025c1b077c1aa436b3682a10c8206
Date: Sun, 12 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760260793
