Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332751DED4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749382794; cv=none; b=tlg9O7RA4PhEcr9piLF4/m55zlTaHmWq5N4MbN28jRo+DEnF85KCT92TT5RX8QFQZJ/K5IIhsmsMtmTV8uI+Q4JO3E8DEEP5pE8PIYiPAK3F/YlMXhPreFcrlbEnF+2MUlLklNm6Ee/2Rcr/kPvLNld7cvlMi0HgcRMQhFc3PXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749382794; c=relaxed/simple;
	bh=wiwUeK6fVGdf1D2HVMCbnhu1VS3/mqxNYJQA9GINfj0=;
	h=To:Subject:From:Message-Id:Date; b=dVd4PTC0A5qRacVur8PAArjVy+7rEnkoiXGgXsxLnB8BMVSHchFty/4n4J1j1tWBAewdnLnentqD8xgdT0PV5WkmkzsCR/VDsrY7bcbf7mt6pUV6SZU7cwTwv1cOxmjSVFbitkLpKid27bgEBhn0ka8kG6hOdj+e5+wVwCsVoSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY4nOBps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY4nOBps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B45C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749382793;
	bh=wiwUeK6fVGdf1D2HVMCbnhu1VS3/mqxNYJQA9GINfj0=;
	h=To:Subject:From:Date:From;
	b=BY4nOBpselKBF+Un74HLCQ5cV1XokQSIRviCGlrgfXGwORxY+VwmRwCErgVrI0GBQ
	 xqg7LE38YIg1fpd5CERJogFNOlCzn84nl8cn7pNKWm23I09Ip8hmsHPLGxwL07QHZx
	 8YL2DY9SW1IsopB4K2zF8m72pY7Bzx7v/tBr2X5kV9pVqYVhCdHA8o1Cvy8E4Tge69
	 OkKpaKC0NqkBwAvBgqQtx7ViYfc+Gyq8FcEfCv4hEmkSEs3Mv47mIXpnSoeuElp60Z
	 1mtpSZhGjuwFRsumm3aQEuHZTtQHqVLkGySvuMgwlO4pkGmiiL4B3PW30/6FTIJGwM
	 qyMNU0D7U9OXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157AC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938279357.11069.17548957778080804825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41a4ca3fa84a3f8b35c4740e41dbd79e848bc5365434a8a2892c7375409976a
Date: Sun, 08 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749382793
