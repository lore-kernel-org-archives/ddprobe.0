Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F00531B80A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757084994; cv=none; b=i5LQwlxUEdSFVYfUgMG051XPnSJkbuIAQd0ze9Wpo+5wnuOx9WyZyHTxLGsT1AHfUE9WEpbddETrS/+J9ejel0nxeJdesHgYHpO8v/P1P8RxR6aqnQGWZ56slDi7niY9xzKMMAme8oVF2sU/RbpfgBPiDUCxdr5bMyoG9RuSO4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757084994; c=relaxed/simple;
	bh=BaS6vt3tPZYGO8Nl0642UgDdmJ8zO4VTYQZEWa9n+gw=;
	h=To:Subject:From:Message-Id:Date; b=epO/WauidicrysM/TWHhUYSirlVEI35ICvLV6Ai3RuzmMB1g8WsOIb9Nr8rg1AsxB0m/3mGxH+oi3EEA1Ro689Wr9yp3hzmSRCl3lMDErgIftEDPEZVMotm7mvh2r8JbUw+ZRNQg0tnRwbe+ZEpqVuHr3Lq41l3rVJ2a7nyYKPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO7bFX5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO7bFX5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBBBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757084993;
	bh=BaS6vt3tPZYGO8Nl0642UgDdmJ8zO4VTYQZEWa9n+gw=;
	h=To:Subject:From:Date:From;
	b=SO7bFX5VW4fZ7bLRPjRBnvm+w98FLLe3P9YcfKzgaxz70ER357VsVgdEeKNzp9k5c
	 NOwC4FzK2Q79CMBu8BtizBPYzp9WtYCat0+z8BWvqVbAO/BsDdSDKrU5rgku6eIk9q
	 UlhMUn3i1noGxMgZavYs0WkHQyTewBfKTkmZlJDufYmAGp4L3Hz6z/c6/fmB1q3tIe
	 lsU31iFW3Dm9jvckTxTyOX4nlWAM7CdwLVFUoR2kNkFI1GEysUs8mEuAR2mWWS4rwN
	 Vny4k8Y7FVmuePjEhDs+dH37Vjlo/2blS18iwtC3ho1f8gX/Dv6thdcpwFUcp9a7+7
	 VmQFy63PAx+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9844ACA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708499361.25535.16386111771575308843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba80cbb2f5dfd36efe1978fb2d5084db46661fa37720d968167d7b99012cf22
Date: Fri, 05 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757084993
