Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2567219D07E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768685034; cv=none; b=BgOAlGBK7ylx/yHwtWdGUdZxsMPp5NUji9c1KTgKtSTqEfk2Xc77Tv/TZH8SXkp9YcReOHWuoev0ECSVY5w8FNwVkuJNuh4ICMGtOSD1FHYr1mieA9UOwuFnvUYP4Xen8XdJdaFxEpLp8jlXk8BQ/X9gWes5PRkMANFW8PPzvT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768685034; c=relaxed/simple;
	bh=tUS3uYOi3bZumD53hd71oP3gSOJJJw+ywBOFindaQn4=;
	h=To:Subject:From:Message-Id:Date; b=K8KSywIMCio1wE3hCzMaH19A3vsnu6FN2D2CZNrEZTKzSVb17ZbKbfPlFwZ3SLnuYm7c4YxK97kJu7LKJbRO76TBhN1NZmzMqL4YYYxnc4lJuu2pfLbWCTg6s/YTCJ0aCcGsRMe22PHq8mDB9xmeiI1S/4ypWRSzYE4Kyg2zkxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWKUwUQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWKUwUQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A599FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768685033;
	bh=tUS3uYOi3bZumD53hd71oP3gSOJJJw+ywBOFindaQn4=;
	h=To:Subject:From:Date:From;
	b=DWKUwUQ9XbmL4P3cABpBsZjHUU+oBD/BX96zs5jUPG1eYfK0qarPbniu133pLf6p7
	 pFg1GKPm/aFC/eSYrsKK/YE2kGIGJLPZsyLLrxmO8Tu9KSF9CeFDkSlUW9V7bCmYym
	 rpPoXIcxnfgZmEzodPBgEDJtj2L+iNaxer2UQcp+WLA1BC8dVy/YJtZFvze2gLAsgd
	 bSMFRMVzktrnfm7cbWEwWDRIrrQGfbHFSm0wZPLfgUtpY9bJpWqdzL9YbZkCPu4QYg
	 yPJtEI8a/5uxd8zXa0Mon0pyTmPPejxATN02A/vzEZGYF5TvEnG/xfyyv8lbF7AKy5
	 Nsr78HDDxyvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95085C9832B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868503357.5609.2358425102077847006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f4d96b0a898b47cd75c4c198cafb128d36bb4d512924e815c1e32822d1db4e
Date: Sat, 17 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768685033
