Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C4C18A93F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764106974; cv=none; b=QcaldXgtrA5+orrK9BlyXHO+UWxHhv+SM2adSolZiUGPDiPiNq/1RqWBOfcmO0nALbke6xfZkC8l+p0Q0PxF84SSir257ij3mQCneIFmCMjwnkjTI9f5QuKgtwTR8KmNVG7JVcYMsu6K420olutvTJb5TmvhShJ5mdrc2gf7ukE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764106974; c=relaxed/simple;
	bh=5b0RiNUYwCNAmQV9glexs8NSXZ13GVuAVGoPS9cpuq0=;
	h=To:Subject:From:Message-Id:Date; b=hgij0rSdkAshQlyzM8YvdAOEufYtCbqP6l430DemA61/ZDUsHt2uwST+rVuhp0as6OrL8xVmv7NLw4s/fwMb2tZmsvGTEcVRz3N3X/E9QfNd7lOVPhw/jgP01sWHpLPeI+gYJp6x144EdTUp9Kpt8B78ZeoYkW09Jl/WQg1kqMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKy6mtFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKy6mtFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764106973;
	bh=5b0RiNUYwCNAmQV9glexs8NSXZ13GVuAVGoPS9cpuq0=;
	h=To:Subject:From:Date:From;
	b=NKy6mtFXO6SWkQLaWHYPCTBgMAGDwnNs5E9fId2biKGHVeP2oDO324U6mzSRdKd9c
	 t7Mxd//esUqBwDIgokk1sJTU322KIiBj5r1+MYvyrbMm0UYT29xK1dkE9sjRqs3YYH
	 rNBTo89dE+plHY7VEeQCGPV7S+FmWiWTpK5zNdysnLJrED61lxJt5DeA2bI1TwF2Rt
	 o08M61qoJkz3rdYk01PcAuC1owtGu7ktT71vpB0ES1Wk5N2Zod3cIZ+k4TbLyrmHTb
	 u7SPEJQdnPSGScNhS8wEONUEQ9GF1t9h00kklGxNHA4J8nV+Ve7/htm0qdDD8YTKL4
	 L+CEj+JIuzW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC4D10362
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410697358.6756.2073891134107662136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195b280e125d2c4ffe469d435ffac2a36d518bc821e5abb24d0a6d27285c244b
Date: Tue, 25 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764106973
