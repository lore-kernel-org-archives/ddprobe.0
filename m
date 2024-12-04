Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100F92B9B7
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733356554; cv=none; b=rCj9yimT3pR9jPjOAiZwjkT0nhzdDhPzAOB/BygHVUO+DRzaFZGP4LoSHCLyaqWc8CWmYyhEQTxCqtSsoNK8hbMx4ICCP4WFJAMlXKSzLVnomFfw55o1KlPTQcSUgswJtD8Ed1MxT0EmksKPdm3Lvb4YSzzXyVOh3PHTtwY9CQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733356554; c=relaxed/simple;
	bh=YmMsPx0G71lYDdP7fO+WS35CDq0oye7N3WIpjhLcYKY=;
	h=To:Subject:From:Message-Id:Date; b=hehccV/ArryBEz6/HPUxMGQYj4n1AEgWEUh+S/RRldwMGPvCKCkttRFxwOv2yfKDsVqvWFF7Fq1qopj35pfpPihxdYRl3RyywRq+dcXBfC9CClaaX2A+5sS4UKz0o/rKo6wKCJJ9KjBoWaOQi4E4S3iUFnapo6yqQymsSj6SxkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJCKsq91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJCKsq91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0657C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733356553;
	bh=YmMsPx0G71lYDdP7fO+WS35CDq0oye7N3WIpjhLcYKY=;
	h=To:Subject:From:Date:From;
	b=hJCKsq91uZTnH51+7TZnqszlNQiTbhGxF4DTyvSI/hvegfW1FpDmYzoOQgpT3ErX0
	 OtFtee8xi52tlTOC/zLetQZL/7dvXM4//GAuAXU8a5wBMFCFXUEPc+aah97luN9j6B
	 1JYjknS2nMavsSdLBQmgZnMaTcJSmkK9Qh2NqNvCxVGy72GXmvBeuyAm9pmTB6ktdB
	 4KPkj58AiZKzz5WSrMhsUE0xMFL7hAAhTLzyneDhisVXqQ3pAPy+3wmsKqWjoQQ0SM
	 s64P7kXSrmlqTumytJ78ynm9/JGpr3C8H2SpHNQQibgXJrCM02uw85oeyOcU83bMos
	 ggWFMC2NwErsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EDE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335655358.17613.7478066239456044270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c66a1b5553e98aa5eaea1977672f4f2c40865dd05e33356215196bea778a981
Date: Wed, 04 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733356553
