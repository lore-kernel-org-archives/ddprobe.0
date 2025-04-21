Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D6D530
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745260194; cv=none; b=ZW/HOC3xnH64HOiyUDvWfUSbHgZSiAKNsFA8QLlsEuB3RIqD5PIC/zLRYuJ6oRRyG+JeFB7H+aupQT1ifLf3rhnr8lw5zu/QqOIDKK/2DhcD4Hts0+1lW3SdJXoSedlp/w0JVoTt+UB2lJHUJKX+AsgVWBve+MRqBGXc2368uhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745260194; c=relaxed/simple;
	bh=hmvmYqghikEvbsjdV95ALYGo6xveSXIqUCQ7R9yMMsQ=;
	h=To:Subject:From:Message-Id:Date; b=Redu8JLfBBfWXsF99PL6uBpB9OiH37GuwHPZJWilWpxNghFz3YujzAMfsHhcsPvUJ7Z7umxrCAVNSMhtkYBOYp6hyjlhI30z+JPSvOIyBvy9hmm+nszhQ3tOtPH08Ubv2bD3SN+yg5uTea6b4tEimhL5azQt/BeKBQIagcBe7J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwPgHZG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwPgHZG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5156C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745260193;
	bh=hmvmYqghikEvbsjdV95ALYGo6xveSXIqUCQ7R9yMMsQ=;
	h=To:Subject:From:Date:From;
	b=kwPgHZG/UobS7dxAkJAY6U4OXA1TW1arVQ91CgaR9SV5VY1dDDoCMCnCtvc9iaSqm
	 uHf12vo1aBSG9BTYz+9lqB+sKrAlaJvsNpmICNC64vBsQ2zjjJgFYqfNsXLDIibvU5
	 iWr5xHAiNGqqNH8o/DRg2NqWiBMnTMGQBvRVEcoeFRWKDSpztJmPicejfipWp8ijL4
	 O52hB6Oem7uoLupaWFe3ziul+5M5oBTzur8FAnVc7OMpSZxDHgoB8gTvhuYpzsYy9Z
	 VpTGC+rY1qPjWfWSFlQN5gYLIUKsKqywJuNSBhwiywEXUbcYEmg2N4/1IixB9t3o67
	 A/Pny+OO8C7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D30C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526019358.27182.14107262074664616988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b95778b39dc070f85af74e032a7db0ea5b2456b5abbca18ee6470629d89a18
Date: Mon, 21 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745260193
