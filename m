Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0D034F26F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779358834; cv=none; b=HO3falEuuafQD5Rtvo9ahfCMBAubuK5+tS/Of/6e6ymojOzIeVKYQpJxJjutWEA7Njj+rb5Ht/p+UjKyKn9sdAuz8JjAP9A1pPYnSzCiVGJdulov5OYlqg3MjKOsCw8O58EdTwFKPiozgOo1BjE4jgD68IPRlgX7fwmCNvH+SPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779358834; c=relaxed/simple;
	bh=LXJbRfxbgClsDXVD56wrBOSyAuBz80q1/S6Xdm7zhMA=;
	h=To:Subject:From:Message-Id:Date; b=iJVnioKvfwtRHkCB62cs3V4UweENDYI5DgN7NTNYxDROY6gM8ogIwKGdq515kdRmfXXW23JmzxpPmd9klFuJHTS/YQAv9MeK9b+P8xiEuHppBPMHh8lKUkAVQVhgfyCfdhATh9YyioTb6hGSmezd9Mcjx/ENXF9wbj4yZgzQXiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkpkmHK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkpkmHK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D225DC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779358833;
	bh=LXJbRfxbgClsDXVD56wrBOSyAuBz80q1/S6Xdm7zhMA=;
	h=To:Subject:From:Date:From;
	b=UkpkmHK7w8bRU+gBgHgpOWnAN1+OSfi0JAUFSSIjCBHHdqg8IzlPXs7nJ+7kZjl57
	 rxGr3mkfGv1zDf1sHj+huxaHCC/MsIZXWReKJwCiioWBiZq3MhlSYVODipyc24XBAq
	 Zy0NSzPVYJtlZlCGz3RMITOCcF82PQjgVxFpaTtx9c6mSB9hLXL+hdum5jAduPMrW0
	 Zt498ZRZyC5O/Ri8pHvODFCTEw/UKql9r6pUiMuUOpyPfSzwJKecuibrVStDU468Va
	 QgdzHUjVAhl7c5y0mt81cumK50rDnUpy/zLdVpSuH2d1NnTeS0xtwYQ5jXWFXzxO21
	 bvuCZ6YajLXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AB8CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935883372.10816.8050804185950314957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998ad78ae5f1f8d43ca5d84bff1398cb2433243506dece41c9755ccb45ea8f51
Date: Thu, 21 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779358833
