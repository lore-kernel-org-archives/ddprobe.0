Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DE13EAC89
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777061254; cv=none; b=qogeFS2geouK7fWWrqalm2hAquGrA5bcOkHRf7wFxc1r85Pi32d2X4H2w5Iy4dehMZ82FiPQoiQq4+rnBUznhTrYQAL9uKP7Tcnm3N0xniCuDRim0XdHdOzLQNmsDlqA1n/y38dl2K7yya6FxSmtx1XiG+IIewob4kKx5GUw2gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777061254; c=relaxed/simple;
	bh=htur8Yca214dLQft7/ZvRue6sTVQ0s/EfDZYnnZ9OrU=;
	h=To:Subject:From:Message-Id:Date; b=PoM4CEqFpbH3+vUmnqRlMOVI1ll1RpPpUWcEFibTpthx8swSm1TO5zBORqTDMD05yKPlSyNpAMeK1nDIr5OEqD1sbjnrg19kzrXsDOdiX7aeGtPSk7B4mjB0Ye1gBhrGC+6x6i3K8jNYPlxk25WVYdkv3ZTjwXdGgOf2inJ2/QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpJW85Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpJW85Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76E4C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777061253;
	bh=htur8Yca214dLQft7/ZvRue6sTVQ0s/EfDZYnnZ9OrU=;
	h=To:Subject:From:Date:From;
	b=KpJW85EasHux2OUDHb0IJEv4YynGgZ/OkhaG6/ozR0xHek9oLMByR5rQEU8t8Kf2/
	 22RB1CQVJkgpwk/evC5n8fopIw+uAVYoUrPCXkPNBFQIzldOy05J1bTaapZEwbPqTv
	 WiIWxP5fiexjuqHBRur3fPFyShNw971BS0fYbjtcngJokC5+E1kvb8A88TrqhhHmY2
	 De8OqlpEQoMyKyyU8VjwQ8F7hB1bKig5DbPdyfLSuBU0hwGNxmzG9p0i+l3NS1jVS4
	 0y3+dXD5A3yMPaFSBXgeigTuVydTYcJcfj202xzRD1JTIVvxIj1sUt7Pfih/6OEHtc
	 pi7tMXu+5Yv8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE9FFED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706125368.32746.237848901538575293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9245196b2830272e4359e93a430f9d1614d146bd29a0aad3599dfaa71f7efe35
Date: Fri, 24 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777061253
