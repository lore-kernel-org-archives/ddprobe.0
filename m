Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB6230FF36
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787105434; cv=none; b=oUiHZi+y0Nt9FUq2veSeOdxPX3G4p0DmnLXY/6U30Zs/vJGAmhhUnsPrJmtP0M+MRw9OaIvdT1lzAbLTpMF/VrHWnDRE8PvCSbgtGNMfekWTjf+xPreLVux/O0ijFKGvh+tJNDC7rfECJ0zvzumwhkQHekPweQWJYjLEH50td6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787105434; c=relaxed/simple;
	bh=7zBRiP13Xm9v8HjOfgm8QI6o+lCve6XcOnfwgJPa78k=;
	h=To:Subject:From:Message-Id:Date; b=O28ZaFiVsBXrN9NnFgWIzQmiPKTR2lIY0ILSH7zH+io1cqSVGopxE7HDf9a5JlmNg4P5bxUAmepPrBQvp8WtEGVggpdVHDdBp446xJJNIpW99Nw9aR3bbpVrg91eqZcw+ex2UxZRIB3MpR+bWGvlvkAfZqm+2pgjSrtrAc3XmMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHMZZyT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHMZZyT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFF3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787105433;
	bh=7zBRiP13Xm9v8HjOfgm8QI6o+lCve6XcOnfwgJPa78k=;
	h=To:Subject:From:Date:From;
	b=BHMZZyT4s64sK261YHEXvT3zuTA90gkOFYIrJUoEiU4C07K/soHpWl/OTmSzdk+1a
	 wXt4TS3oyQq4aQvnKhi/MlxuW5eXLR8als4XdvKbuwAHpTPrxQ6G4zS/7fM8XC6IzO
	 9geU8D/xA3FQVkXrkElPipOXcdBbeGM4GWeNEbS73yXWl+M3/kNzzByNNN3mQ5wOcB
	 aHHcbW5pb+QO7K0414vCgJPM3POsJk6VXPYDjBW4VI5M3gttf3+waNctnUmGxJE+/y
	 tVXM/0BaXO9iXpY8dnYr3bulsfEU52w3HNcn82Z+IMHsLtAyo55HJ0+k0WCBmosvGP
	 AgSoC+dUhoTKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D6C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710543368.4965.14023803575349108884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd6d4971aa6f998983d45f9593507b1095489d229eadae12d2469f3b8150fb0
Date: Wed, 19 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787105433
