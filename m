Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497AC3E51F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785918034; cv=none; b=o816mnEQ0Vqn00cYzFobjrgNfjHcNqZuFoSvuy9j/hFc+ylt0+ilWYzyUwpuxsIOreaIDbn+N03IPdZuDwDGzQ+FCmHU1Q+PvK01YmLLIqhVCtwhEWpPOICAJcidI1/wcu58lcol9TW6g4XmSR55Z3DtFDfIdzGKtQAXLttLi2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785918034; c=relaxed/simple;
	bh=+uYKDIM9CAKRzMWcSNri6exCebmhI+fJeD5VNIWrYeA=;
	h=To:Subject:From:Message-Id:Date; b=LSvoqvPHMfQMQtk9Z3zECAaZ/0uNGtegq8LVCbiJTosIT0j2pNTP2lRYXux6jHoF0O47P39pykRgp0ZHgIyifa54Kcpm3Anjt18FylMruk9gx41eEOinVicQA/Wm4gFC6EBNqlAwXtMWM4SipQcB70MfuauLTzWQDKOUh4AMPr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTaqBgQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTaqBgQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0350C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785918033;
	bh=+uYKDIM9CAKRzMWcSNri6exCebmhI+fJeD5VNIWrYeA=;
	h=To:Subject:From:Date:From;
	b=MTaqBgQV2cfEpyb4znaJLpeHZ5o+LJzglQkoa2PLMxMLx1JiZHOkbocXI9+7zDhA2
	 iA4+ygVXIdzqjG73XOyH8Syvi4gHXzbhhtZBeYYGoGYVigpGodADbDXkit3GEn0b8y
	 d232iV2n4OfXZ6Atd6vfr9MtQkoa3Hs1COKBlNs123bGztD1m1Ix15ZLorMUoV4Qkz
	 9vpf7NWWCniqdM9Xbqap+62M2tA5brNRWKWAcrgMG0IpCCqfZIwmyFMslj4mzenCVx
	 /A3/a6r0EiZCmo5qYF3n3KedqJSRygZoyUMzmOd9plywlKXvaoTEFuAZZhRsV+xDnP
	 eP0RloeKXh4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD55FC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591803370.4436.4866279436781384498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b2933fdb213386a3e979b946bacf3470cbdf04f0e2b189730cfd91b65538a0
Date: Wed, 05 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785918033
