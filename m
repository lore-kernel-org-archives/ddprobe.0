Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CCCEEBB
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773194094; cv=none; b=fKY2YKwvqfRUQTGAWy318k+jFtkek7dqJ0QL43ciwcC0yyXX5hmzXc3mmA5PYnSrbI/jLLOoWpUv6Bm7bdSbCQP966Pn1k93U7XAP0Di/Yblz7aUDzgnPh+cz7eChJngBpvIs1QUAa97qJ/iaw/WvUDplFWePjEGxIXgtBiXktU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773194094; c=relaxed/simple;
	bh=3pDmMu3qoU/VShgMX6B4rE118NV2b7M0j03YXhmfxHY=;
	h=To:Subject:From:Message-Id:Date; b=bg2Pgcz9mUltqpWpYJ90ATc6HF+iwFO+P0w9GWhACzfno0bDbdrNx5z+AZm55t4r+mmGhP9zalSnzyGYxhFEnZNQy5EaIoOhaZq5UuNfRxgJiDvHofJ/QRVmAnRl0VcolfWhAD/V+kmG9HG2myXAfqGHd1G3gsT0l8xam22EvKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM97aq0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM97aq0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B04C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773194093;
	bh=3pDmMu3qoU/VShgMX6B4rE118NV2b7M0j03YXhmfxHY=;
	h=To:Subject:From:Date:From;
	b=mM97aq0rxdaTDFZ8v35JBKdR5T53L3bHCNtW1q8/DcFltFz4BoxGBsl2IQDQHNDAi
	 jHA6LYZiT9P84bAITV9HH9mcUtXDrzRrX1P4XDeKG4x4VM66wrmRzcOccmSeuTKk6b
	 gQ9ra5bf/BDGFPlyrR7x7lW4+W87rOmAARyL8IzGFScyXqjRFAva8i1Xea4Fa8X/oJ
	 uvzaUp3wVpn8lCtm48NXfOpHNJbRO6X/fR86no/gXxSuVau++EcQWHJz5NoHtTQkLl
	 oxEeCAPme7mon4SMfJgjgurpdKLq4mtr5WsU4uYQqaVODIavUa7OM4/9Y/1rtom+aR
	 hdxMGBUARNv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA9FD88D9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319409357.14709.8344777582241812987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ef1c69c841a6dd73dcdc3285971821d7e951758090015c8b43e8ae2ac8d012
Date: Wed, 11 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773194093
