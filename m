Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537DE85959
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714039283; cv=none; b=tM3/E3tDnRCDnFY8kYgWM1L6asYFCIRLWHzszm98xcrHL7P2CTaoR54oBaDeWCeVoTjYP/cva25qlWUYxCWqmNFtmJfJ0rfRNMTjT3AEyoOvq3pCG8fdvgkWEuBGP9hemBLQ/Rcjav/F96FBz8swM0ui0sr2s3W3rLU12ENKmhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714039283; c=relaxed/simple;
	bh=zyYFgOgavR/x7XJm5GBL1OqUgNDjvKQyMmT4g0v9+wU=;
	h=To:Subject:From:Message-Id:Date; b=FVFlM/X3PKbS20OdOMPnSTmsqY4OGX/8SIlgD4yg4XN50DMM6FI/ghMQyuHB4j4Wika5JEMYjV8GRRNJwaDTPQ9VVGgcMS8Up78nxdl1ya9+riXHN/TWKB1RDWOEvPEAUQEZ4a35thdk3ZXQ0F0ldNaIqHL+Czy3yGkF72WV7iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdGYl+zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdGYl+zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D854AC3277B
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714039282;
	bh=zyYFgOgavR/x7XJm5GBL1OqUgNDjvKQyMmT4g0v9+wU=;
	h=To:Subject:From:Date:From;
	b=PdGYl+zE86ry/JDy2FbLMU2tk6wnvAL9sDSe6AKfk1ttCE4XqLiribTGiA66GaADU
	 XT9JP1hxvRUN50FW6eC4+Aezvo0eORS1TWk4VbJ7Kx+K32noVLjXXK93AdBUt+0SCF
	 ociDLpQpKlA2VWt49cc4P2trrY74uxUWSqCpsNCmiu6JXxe4tI/aDJfA3M76Q/6Jbz
	 hrL7GwRg1mOpC1uzJ9kdzIELuL+F/S1GlmyNzqhPRodu78TzsKpIcS76HSFGHc+Khf
	 XIflw4VaMMmOMrf8rFklWmRsHV2yXW9hiv4oDdhDJVnvlhPif2MbJeAXpC8fdJiJK1
	 66v/K67qgLXKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BB7C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403928280.30152.17762825602756008231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd162621411e47b898ec24be15552958e1271801aeb983a0da9208a7b81503b
Date: Thu, 25 Apr 2024 10:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714039282
