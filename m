Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAB2BE041
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758976194; cv=none; b=uE8MVziuAIkSIK4Qju8Rn8SscnR83szrEnuHPZlKcXiqkxmNuFJsVJudrVscqeSbC+vHMlGsjnpfjmqWn/yzubXhovcRHjDAHEWYcslAIDETGKDQrfBjeiS5MfMc+lDbtllyBPZqvsu4AjGZ+UVrJNVHXGFh41OyQFiAk/OFyaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758976194; c=relaxed/simple;
	bh=ZWMn9JvcqtqB96wzCnZ39eeUFXud52/DtfQzNvULf/g=;
	h=To:Subject:From:Message-Id:Date; b=sY4b5gzL6oBi/Hx4ZNdkPnXqwDBakIrKKtKQrwQDzs/k3wgwDrIptFZXVeuHaNSJ7m1X8XdYahSnF//RM4a6RtrCpEUuZf5qTq6CESHdUsZbtRVTe7QoLHlppRdTK/Jwy1BZY9offnDm2cJzULdf6j0tR6s16Nhe1K7KQktDLs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNfe6AIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNfe6AIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC25AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758976193;
	bh=ZWMn9JvcqtqB96wzCnZ39eeUFXud52/DtfQzNvULf/g=;
	h=To:Subject:From:Date:From;
	b=KNfe6AIFQsxCMNNaflApEmDHs/MS/1StVuwQxPg27nEn/y2pYFH6/xzDXKw8Dk7IW
	 /gCXNLhlOgyOixFMZ9nB/vnlVHbG/4QmzP+PafOq6KwTQ5LhDHoHYp+abnA0pUXfDw
	 JYTS50fNtsIXQgDmtudLaLBy00Quot3Fm0xXPC7HYUzWeq7HU4pLGGCstV6JfdB1Hb
	 CTqShiAfXNy9eN4qqBGfX/UhpBEmIicVYTlO5tjyGtIeaIm47WBqKZ7GDx77XPvRPs
	 igNXnwcVCfuGOhmquFlhQaF0bgStkl51Vf0P0DkAfQhO6HawNIjeSo8p9j5WHH5jU9
	 9OXZG5OuyFvRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C04CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897619360.1056.12087247066337785423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accb8089cb3b0a383656d9b1676a95ff6a8efda9e2b73d4e3aa16fb2aa02f595
Date: Sat, 27 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758976193
