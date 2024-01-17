Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB8111707
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705479497; cv=none; b=ZXBZyUkXUc4mii4GreLwp21VU5FKenTV9IDdMQWCu9zJZQDfhFw+qXif/dlAUx+WDofyT7xbe6TjI6scj3aBfYjAJ77GUjiMGETxEpr+jhDZHqHdsE0hLd1D3ArwfcImGPIvKCxSpzHyH30jC3yQvK+Lk080bgnf61jW93MjBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705479497; c=relaxed/simple;
	bh=IipH3H2hYZv/8P2lva4uzqR5dEibpJndwHtcWN7jX6Q=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=YfPtVuPdlkuWG+IRCMaL4AQbhHU4kr6Klh3Vjn9ILKX4+IGzkGnjGNw1S31f1J0hV/0x33hs2Prn9vA1amnQIE6/GhdvY0pSGF3uxTpGW2lbSQDGJ/Dxvj6+OS2/qIO39w2bHBeoCqoEsHksoKJFiJVyA+WeNNQ39RiGNArQ+Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpoHSx3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpoHSx3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EFFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705479496;
	bh=IipH3H2hYZv/8P2lva4uzqR5dEibpJndwHtcWN7jX6Q=;
	h=To:Subject:From:Date:From;
	b=jpoHSx3EznMnsyIR24vBHhwOn5NRdtr83ONc3tpVHtpsDDlJ+nTicUUZpp+uVDqwT
	 ne+K3TL/0iAszw1/oSeQzpc4Ka3hEc5Gk2DsJ0tongzDm6VVMysMG2iRskDzOaDbzm
	 Gcli3MVYHHITTarseWw0oFBZBmUjoOGn3UhcziTZMlXI1qlaTZNKVGS316MDWSTXKG
	 AXzgXqbDpbslZbyCPxrlHA2Hucg93a69d+hT/A7O1y3l0E+Mhu2nhLUfdAE/vPflao
	 69rCF/pThb955ddF5xeM0NjEdz9kX9Irl45bcMWWksLCCOMuroDWs4IQwiXtiRsEnZ
	 9XDRnkT89YE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBA8C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547949636.30105.2538457804793375817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1b50cece71332c1c0997965b9ca9721414e76d70b62898aed7266926887709
Date: Wed, 17 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705479496
