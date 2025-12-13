Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186222F83BB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765621374; cv=none; b=gIuhT9sTeuU3iKG2VsGrHAa0AsEbZ7aBv61DJAUpSaAX75LtWbyxnijJZ+xSblLAMdqBL1KRE8gaMZFrRBbAK6Y0Oye+zq0A7WyrrfXG/rsGC+SEVoPg5oLJ9rFpOf4TPv1rmgQsE/d6oPw+Ez3ShhiFtibS77CVZVSlK8rh380=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765621374; c=relaxed/simple;
	bh=alDi+a8Q//jNhmAZKJgt7M+KCKd+m9FKD8WWbeF7Vbc=;
	h=To:Subject:From:Message-Id:Date; b=qeQiAAzhZU3z6oFSjZZYm9KYQLSocngLCBUaC+eYE/2QHd2N6VRie5SI1XEqjUwE4KkcjlEE+9my+pL2KORsvqV6gDvjaEp/WSTrydr/3+FZH7E9QBE3eVTb2UUn18J/T9dIxf5vMAv+v/uYngT+T3ZWao1q2ges0nyURIH9mUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKKIFpks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKKIFpks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB575C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765621373;
	bh=alDi+a8Q//jNhmAZKJgt7M+KCKd+m9FKD8WWbeF7Vbc=;
	h=To:Subject:From:Date:From;
	b=BKKIFpksIZ1cABCvK9f774JJ4NQOQNtKV5X8U+SqbBSoOlHywKToIGpMXLsKrjery
	 azelG1L+HhVPf6k05tl/ScDsio26OTVmJ5rR4yjfPkkCmXVTg2DyK6pB3Z3jWdU0u8
	 tRoK8eIXMqG4rMfeSpMy2fexZMLwbuwsEtSNIxYIsW9A7GdvTejOe8dS7G4vSFtA08
	 woR5HlkDI60xFAZj4RMYRG2A+YyYWx8P218o9JP42JhF5+8L0cYYHIdSeBvjbm6rpf
	 TeTHkj/ypeg21DfVgRhPaXwc8c0ERQ6D229YjrhpZJzOlAs+pefwVINzqka20CFyxt
	 L4wkfMw17cwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93521D5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562137358.10114.9624379456711686675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21f60e982664247f3311ddf4d509415d5d9836798fe5e9ad706a7727e9c2a02
Date: Sat, 13 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765621373
