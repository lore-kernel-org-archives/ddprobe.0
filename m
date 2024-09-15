Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377AD946C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726396554; cv=none; b=tRa2WpAp9lKz7jjmcqzzJHja1/mEjbOXpcIZK2SBgKOkyaWr0WcgjqtmHYzIPx29NiLoJBwkcplQATkzEPVk5hIRwlRFXGCRBCUkpPR8kRnGYvdp2DUt9llRTRJuLo61aRlTXFKFM2lEAsGQKCpTX/upi5v3chD1i/X4gP8Tee8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726396554; c=relaxed/simple;
	bh=K7eEYLxcOWmHZ898qsM+yeGrkZkbEKm7GCt5ylxPXZA=;
	h=To:Subject:From:Message-Id:Date; b=fdABzXerbgJi9+S+2WQPyoojBE3DDU8dafAD0OQaMexK90R/vCgOOTCMMfur06PAL3NAABPBJGx82fTjSnJQACUUiijKs6mEZ5367FOyfkE3iya/30iu0oST0YPY7Ooaq4EACsL3N9y1fhiPq2rzjWARfB5e0L/z1oxoDz2VkRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO3Togaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO3Togaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8001C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726396553;
	bh=K7eEYLxcOWmHZ898qsM+yeGrkZkbEKm7GCt5ylxPXZA=;
	h=To:Subject:From:Date:From;
	b=eO3Togaa+iQWqOPeQAkKmd97bX5EMoXiTRtg2LeuAhxiXyhrBBCYnmaLFCaYa9dBh
	 fpNvuAdVqyn3FUuEVUQKbpw26G3A3rtP0aIh4UgYuKUcrQCTh1LBSFRICEhAqroYxQ
	 pOOKXryd3veQxZWv5pctb8tQINVrSrSQKkPg+NemL68SoGaOLT1WhfPAMFlfgkWE9I
	 XuXNXAQFiATQeOUJZSjcEgm+ytZoqhUImCmnbkZVH79W6Hhpr7bu1S1hFiHRNj1hF5
	 sui8WIbOpYAKtnGeMe5A//+DpICJ/KkwtC0AeaJzepmKuPpH2BeOnMNuycZC7QSOty
	 DookJaGmyiklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66F6C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639655363.22237.793225437359917948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcb9e5d310a8bae3926d69d17c11ab69afd5c20893aa5c0a257c479c80ae4a3
Date: Sun, 15 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726396553
