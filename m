Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B905944D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719986123; cv=none; b=nzEfnRtfLkGucdeiuzL7F7zdFq2S9/o/uJccTC9XS9K03BFH7KnhzWlUnDMAk3Q1FDRAjxauqKYLs4Aeu85FgXaKQjpMFdPGcDexfakIJu62iI5pn0n5XcGwOCfBb+8s0WXjYOJDjUCRdh7WKwD5OmM8jMZiekXvNFYQMIyQzWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719986123; c=relaxed/simple;
	bh=OJtAADs6xl4DZgGzS8/qCsq7/OK1YKUd9YNaeTQdS40=;
	h=To:Subject:From:Message-Id:Date; b=fjBZOOAHPjOwVAcqeHHR8gQ0+p76FjesHlPzwZD6qaBRJrd8zHN8GzEDWavKSTCd2c+l1v09sElyJzz/dyBCsj7b+TUgGRPaaK3gBWuMGQ93QxMRazWP1ucZIfl8NGzuwRrQns9Gfb9N6CxembH9ip0Mr+/nd811WGzfVqXsfds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJmENlTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJmENlTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D584CC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719986122;
	bh=OJtAADs6xl4DZgGzS8/qCsq7/OK1YKUd9YNaeTQdS40=;
	h=To:Subject:From:Date:From;
	b=QJmENlTmjzcpdCMPOcgg5m2crewYZkIfJX1952l9KuxwV2ODURFePoEJd3b/qiyXJ
	 vCKSkEgn+R/5x/h9it49LvzjCobAhVFsMTzMDjPF05Gi3SBYKpxCqh+I/tehYcn42g
	 8pWf6k0yhtX3XH6WOb5wOsSPVPCx0KX6hRKGEuynn2a/Fh0cmp3wP7qa1r+5ElCoI9
	 COyF+mh87cHqqJD/zvfOhy6vsdZjvLhCXAUeMPV4J7DM+jXFRDsQ3njM0VvZCyqYXp
	 JfyhEhp6hCZ3IkhE2e8Xj2vDD+gMJnVvrU+NW9aqsYK01L07/SQAp6C6J0wYu5bk+m
	 QJGceSi5OPLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53CCC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998612277.27395.6481877491859622764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940cec4fcf2d64dca1751e1b68582e41679dca18d02d5343e4e4619387718ba6
Date: Wed, 03 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719986122
