Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EA1184540
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774821894; cv=none; b=sS9vVIimwzevFVd0/9rMtBNUnYev0RI3OTHbCHPotlyFLSQo9YtUae+B237+Gwc/Dolo+/NkJ4z5j3u4Z73gVyWxe5n2YFNxaXszx3BRY9GBdb6liKzwxK/CfwNcWEgI6uk4DP2IcIHCMlSrPN2XkeJh874z5g37VnIUCOT3/ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774821894; c=relaxed/simple;
	bh=gyDeVCmpg/pDBbPh5oIhQFhjwlXpJSX7ymnLqx6qh1I=;
	h=To:Subject:From:Message-Id:Date; b=mn880IS1OsEYTEEMOCB+03TQ9yw0pqbHjRNxc8rlfzdXo1HkyDtnILDgsLB5faR1NvToGGMaZO6E9wXP+ak3LRNcQ1OcLuhc5v4Sq8yrYZLQue/pu8W63NGR+Z9Noxy4IqcGIStzc/6gBwXuu16INv64LDrWNxcEd7Zpu+2hC1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oInqdg1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oInqdg1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F250C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774821893;
	bh=gyDeVCmpg/pDBbPh5oIhQFhjwlXpJSX7ymnLqx6qh1I=;
	h=To:Subject:From:Date:From;
	b=oInqdg1ewQUA0LjrClkrfJFUvZh5yy74QFfJL+yB/n6Bb7A/2rtsEcPL1+CyFIQka
	 1kC+6oFccO2uajNqBg9ASYRd718KpcSaFehAhRwpzJ05EDY8FmuPgCwjrxMPXIeFW8
	 Dp1+rwIymEAZxrTZLk0OYfPXcjtDhGtInLfrVZvypgRQocZ5UhjfIVKizl7AeoWB57
	 Ydh8Xnb5ELKIGDnAt01jlLp5dgNqgmkBGj7T0v6LExinusqJCR950Fb8jtOgR+JZ0i
	 Y0D4k1C7Gsgi96XiBIThiLV0tcGIKCU52uvzgjkVUaTp5m/sA6lL83oRrMlukPgQ8Q
	 tvqJoiRlGME0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059DFC97F6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482189358.23243.12735030348083430948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fff659d1eb77c68c911f096b366bb4ab5863f2f881fd90bc8cb0447dcad4c28
Date: Sun, 29 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774821893
