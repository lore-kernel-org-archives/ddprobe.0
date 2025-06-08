Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD31367
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749368394; cv=none; b=d3SCkwme72Da4oOdPT4hESPmWUgsRuZUItKj9Lf7wKPulijp7CNJrIr1SmgigSV+2Fqs0H0OHEwu1lMpe6JUPNlQLP3QL3Cx67i3Z/YMBqFskKR77yM2j9lmPT6eT8Hm8QA85PQW8lARiJJecR7XJXbHO2Uhotg7FqyWpdQ+O8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749368394; c=relaxed/simple;
	bh=Yym8TrcdgRIwRzhKwbSn1bncljQPoo7gpduQt9CU86g=;
	h=To:Subject:From:Message-Id:Date; b=JpW6uGoSM2l+luMg8ZeGRZI5eS5xI0EPUYSRvTsiaDq/4y/x5NbmGxOrsMdZsXd+XGtPqpCDu2MBpbSxlTWAd46quHs/MZENPCzRoKH3vY9PAftxzH8LHkgVAuFiJra7+n0Om9dkWdI0Ncweql7yurxMEsQ1pIoiXgEYnwYZVxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Khs3sf+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Khs3sf+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C8C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749368393;
	bh=Yym8TrcdgRIwRzhKwbSn1bncljQPoo7gpduQt9CU86g=;
	h=To:Subject:From:Date:From;
	b=Khs3sf+vvFiLidj4QihPPDtEJNIEBfg1th+wRL5cDoEtE2vKbAysC1j30tMUef3p5
	 lUq1RzYiHiomfe/a06VCUGlu9UN8P3nD2DKRE5NOt1XegFTb23EEr9ZqubRRqWtFMz
	 Deg6p6Xz5kLuR96qnR7pnDi12nMldtSIWTHL648AucX+0g/QscPoiBvtnrglytgESR
	 2o8Y0W0uZ8W7B+78CQUIvk/Ix+3G0QNe/TjhC9opYDXqEIk1GKy6s4V6CtlafTX3CZ
	 6me1m1955aNVGp6Tl8nlbSAx7aJm8LEIntmap++asYuFtqeSLwFeVpKo0c1NSvqQ8S
	 lADsS0aw/xBLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C50C61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936839357.14292.2010077104623669483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5245a91ac0e2982a85aa4a5f1360279cec9bd350f5d731ff1fcce515523390d9
Date: Sun, 08 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749368393
