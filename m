Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC85430E831
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407694; cv=none; b=oj/lMz7U9TrNRfC0/UIXxOcQ5IK1Pjp3OMf2Ief+j84G8EtJRhc4yOHLMZ1pyTkGrI+cxMEW33vsH5mGBwoloa1pX8frjE9lX20XnoC1i+t7LkVrjt5PNzWsykX3sEOJytLnEDPbf28YhKJWjdhnzsSXwnfznw1C0mP1JiDP9oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407694; c=relaxed/simple;
	bh=wwRjEZE5I9DWPvMXq/ghwRtm54Ac4ru1t6V6xMoUFSY=;
	h=To:Subject:From:Message-Id:Date; b=ArtGdW1xI3iLBgUH7t+5G8Br7eWtrmeBgHKlmdZ3CxIVrwNbhwza2t3i6krJpGj2QPLsJBR6ERYLfk9VuvvT+Q7+xAZUm+++laF5CPXA+RUUeupPXnzR/z/3o1YInfN9To0FLkGnddBzNhIQ9+LD5iGqrHIy6yOmILAbCjWr10s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2m49eAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2m49eAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0407C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773407693;
	bh=wwRjEZE5I9DWPvMXq/ghwRtm54Ac4ru1t6V6xMoUFSY=;
	h=To:Subject:From:Date:From;
	b=b2m49eAAACAFfgxQSBvENwjr0Ql3oK/ptbrDA2g+Jj39n+WSFC7cJHbtFv+D3oAw2
	 JJBQvvbHK/lBPXGRsMFIEo1lme4dxusHGKT0VcRJw91iw6Q340VoLt9c2ywWsEke32
	 Yh3Do7DdcFPRq24/ysXPXSG+tIonQ2YiLoLp3DaKOtjljT+tZSDDxHt6eHwkEEx1EU
	 MZ9sWwRyOt2Jh1Atz1X0xk2Lv4Lx+0ulOJ1Gn+C9hRnAg5UQbyjFce1/UN14+3oGfR
	 nnWkq7BQIkoGdQ86mOHKMRVhaN/zY7as+8Q9Xs218zUtbs9wU8pdzvBbV+zGjAGkFf
	 EW71aqxhW71pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F979105F7A7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340769357.18606.1891560541509853245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719fcd6596982df22c51d684c5a002dd1910bcd135d26c5b8b4b8c20331b2189
Date: Fri, 13 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773407693
