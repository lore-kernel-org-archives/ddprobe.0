Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1925A63B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737954955; cv=none; b=bP1kA+L7ARYo4JtIlNcEo2Srcowgt42SEXj8HgM6osg1oaBBidT5suauvF/Ykzln2zobVhn/cONI1OzkQS6FT1rWJ/vtxYuO/CE7h7AY15pkAZVWRgaKGPObL58CI4aTy9unUpQ0m8oMnGDB7ykyXO0PItDZCcFRF6lbCich++k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737954955; c=relaxed/simple;
	bh=frRndUmOmwUEhnEAXBzLBbtmvm1VaFkPIaAj0XfLeZQ=;
	h=To:Subject:From:Message-Id:Date; b=NUeOc7BOaZKUhymYu/EbytWTP62Jt3FyZf9Ovb2PRwSFbjVayTv/W4VF3MXTMXZXtS+n5vpfr2eyfWK29TptvQioAVHLQRx0bXfLs0yrkEN5djS/V9E2SiF4ZmpiGxFsmoklkr/56h+n79oLz4C20uO1LuLTBcZRK/4gStOSgRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKfCtVF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKfCtVF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA2CC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737954953;
	bh=frRndUmOmwUEhnEAXBzLBbtmvm1VaFkPIaAj0XfLeZQ=;
	h=To:Subject:From:Date:From;
	b=kKfCtVF1WWId6Y6jEy4KvrtA2SA+2dFQRoRq7znCM7NB7nwqIszumb6vVC5BtIRF0
	 cLeLFAbFaJ6gSC7Z+LLhevy0Tpmxogfu8y358pbh8EE5V4RYwcIbsDAxsRG4Yrfpl0
	 kod6wN/pbg5Y3J2tFVqSPjwtudzF6UMUbgOx7Qh/SzsuAFSZTGf2D9AJ/gdPdh++iZ
	 0PbUPfocYpIHV0R6wIOt6vl8dh3carbdbFm74qXVtFEmkjQbiTaNmqr98RxZfEOZf3
	 1XtyODV12MRHL0vdhrD05eIdxYgqtrKPG3i/5BYo5HxTO/VpmF1qFhTgvaCiCd8VCT
	 GhY1HNVunSI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7FC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795495357.19758.7556259506805788975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8ec08078466d7cbfba4211b75e8bc43b1450c08fe12d0ff0909c25a57f7502
Date: Mon, 27 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737954953
