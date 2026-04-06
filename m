Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3740A270575
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775519134; cv=none; b=SIov3/d5/8OnpoAJvADrxSxTQnyXorEGW2geRiETyqDEJc32+6bnjmSSEjxFklm4y9W99WLCNG32r9Yk6H504YKVmPSZaBPJzzDq4Ll8DL4h8wtaQiNjHOaGIkE5QMbriSqtsa4zGHG8szQRcL/3mLdek1UvhWBxr5vkcyDeKcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775519134; c=relaxed/simple;
	bh=4EB2nxgX/fPvXV4pDKflHo80CYe+P8wl/041+7WOWxc=;
	h=To:Subject:From:Message-Id:Date; b=ROaMyVkurSYw2s4BGea7eReSMr1J3fx1vKorLD1Il7Oe9/t6OvzqkXD2Gk9Jec0k0oAs0itiQHN37fQZoUCcAoovp2efro3A7UHraHFLBTaYcfa0WyMilaC1LuJh+Bn5QsWkQDtSCwfT5oLe3m6NBAviKo9gMBvD49gRhbPro38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdW6ccNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdW6ccNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA46C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775519133;
	bh=4EB2nxgX/fPvXV4pDKflHo80CYe+P8wl/041+7WOWxc=;
	h=To:Subject:From:Date:From;
	b=bdW6ccNLVo3RWvvCw9p0GflskydDunbQJl69xuXmUVcHMpVzaalDngx36NWwOzzB9
	 Cou2v/q/L9SF0UjBgA7J8vWHMKLP/yKMsc+6PPHsXi9kMNDzbd3wmY/7r11MbHEfJG
	 Ga66UyfHX5Hx/toPJSHi0nrALYftlovvh4Kyjxgb7aX7xSyIlRO67+hk7AB0b9Yjbz
	 H0RsoC3bx4+F8vH0/Z5nFPq+YK8ZHctFzZ14xFYK389jAh5KGfkxu/ji/GKqgore7b
	 I8sBcec2HP219/8XOczkpMT1py9LCZ0H9A+Zk/30SFTgQJRr+goPIrLpo3/GLr2fU3
	 2JtxAoes3VYTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5BFB5178
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551913368.26413.430589209782657577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837358da4cc8dc342e698e6972fca0e41e24f1dafb5bb88d7318fe902bbde288
Date: Mon, 06 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775519133
