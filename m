Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F9474BE1
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722630354; cv=none; b=qOXoR4l1cs7T1o4tQKAFU0vXcJbe/Js/aBKaFcTTTjPgWbcqLTGaSm9iHDg0bWnlbrPN2XQzB/VZncBxHY1GNcmH963aBWcXqnkSNgMdzWsM69qQMkl9avKaE4vw/rDEgX4AKkwrQ7bcrEVcdq+3sB1QBGEZtyL1s/UhsFPZfPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722630354; c=relaxed/simple;
	bh=+0+8wW0UTyN8bMpmQl/geoo85prF4tNKW3ubuf++pHA=;
	h=To:Subject:From:Message-Id:Date; b=pKpkOloqFemHprtupCNpgUQ6vRQbAthTs4DNH3q8I5+caiADF6c6x0lf7tdWqgdHuYWzgnyFiivQ+2fQshMA3pGYMWymcTC0eMSImuCscpPFA/21vhYo4csllk5qB8FT6FFG56fZAy+2U6tnyKrL99ZIyjV9wIC44nWf1JUdezQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJOD8B2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJOD8B2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A3CC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722630353;
	bh=+0+8wW0UTyN8bMpmQl/geoo85prF4tNKW3ubuf++pHA=;
	h=To:Subject:From:Date:From;
	b=KJOD8B2gHS3O4NSVKbx7QBj+kcRwN461HwE98ojU7gO9SbePjbtA4infkcrRZceqz
	 ErrrADpNUOarbGaay7TCrp2iKHZxXWQVM/owAc4u4RmxyWG9ekwBdiVYUUAjE/u1l7
	 8X+v6la7dQGnRLh/IH3GNOFy8jodtPfgATZd+1Qs8NOhChrBfVuXgUzlb4qKvc5lsD
	 W057R9yE94uyDGT9qzLnbzSiXwY5A2LQHhy2Br5LFO0qykqoWEEIAAn7kkjpd8SnoB
	 sLFwrN2ODf7vTUli1TKD4BL/Odsp9DJoiIkGWscdE/yMBvRVpbtasbYKmLhs97v8hg
	 hiaNOKtFGt2ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CAC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263035359.15787.13258086525660964064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582878e6f95927de78f26e5e8aa6b6157519c6d3c844420147dae05379129e4f
Date: Fri, 02 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722630353
