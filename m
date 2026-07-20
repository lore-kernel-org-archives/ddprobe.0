Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33B73463
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784579914; cv=none; b=dhOHlY9KJljVFDuXTRckTCMFLb/oiNV6sE9LXm5grGnAU0iOGbH7kZvjH0ByNpMgeFCGTh6c03VYV9x+bQfwqaP7YYatIioCyEw2tx31e7ZaootQdP0A13YqOXqZN5RW9US+1Ads942XAXTfxDtu7ENO4vdTlPXddpnnY37ll/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784579914; c=relaxed/simple;
	bh=NsGfTTx0ustM+C3aMqHdQxi6gPSjdC5O1tCz2GHPtCw=;
	h=To:Subject:From:Message-Id:Date; b=VWTAPSiCIby6PDGmq79/NPppMaqCBsDOOvMq/GTPK1U/hPIM1Nfv7Rrwrt3c6/j1kirJS8tCH1SAkF1/7a/woLDLfCwxi+VLhXmNhFw+N3gIUzeqlVGNMS9COVMe4X1ucMAnX/zviN42QFec6OpFK9JYm7OFkQBVUSeURTylrwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5GpQqsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5GpQqsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7BAC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784579913;
	bh=NsGfTTx0ustM+C3aMqHdQxi6gPSjdC5O1tCz2GHPtCw=;
	h=To:Subject:From:Date:From;
	b=l5GpQqsGawcfINtrK8LvcbbOWXcp/VeNHJersSmzdDAMKjpra6inx2pBI/10dnbzi
	 YRA7Lq7WJHKZzdUNycaIqAgNxO3YBlyA31SjN67I9veaYZkx940hzaFozcbmXEwiMr
	 EM/sbVlWsdwbiJ7Kwrb6nOnsEnm8tVUZVodSMaQxeDAUGbu4Hgpy8CYqk/00ghsZoq
	 sgodZqAKwET3j2NFTtZX/PHdbDLiteM1EsopNw82vV7teITUm4eAGSYkIDb7GxN/h4
	 Jlh0+38KwZBrY3tEj9zGR0+ggTEgX2vc8eQPfHZQSo3pZ2TdII6ch8z7GZ2qv/6xfI
	 KIDIeojxU4uGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8760C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457991374.1630.972809005554364415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731cbcbe0edd56f5b51749635b5aadd0d3c06206cfc00f7a79f2bd66fcd41e69
Date: Mon, 20 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784579913
