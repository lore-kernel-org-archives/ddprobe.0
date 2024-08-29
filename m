Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27778146A96
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724952354; cv=none; b=EAzVKxrLUCbbRfl2xKbWVtdITPm3TFJor8b2a1SCyBctl61fl5eiWZ8sX1mciPx+NvZtVPS7vIH/7RneU721hPsuQVx4bXJor75N4kwdQJ11xMxpIIXYJXkTGjnprnMQol1Gr6ERoDRUNEJ8OpMB9vVKywd9BFbuOSduBd+enEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724952354; c=relaxed/simple;
	bh=BqPq3WC5/REKvf3zAWbEir+S9v3hyWyXhVniscEpJ+A=;
	h=To:Subject:From:Message-Id:Date; b=TJZOJKzCOr1LRuDN9IFZ2CiBhGbYk2ci33sxquZv9gvu7DeKzw4Ij+PVvu0VC7x34NdzXb/CHTPPzmtcei9zGv1+WeIdMwN3kNVoubY9AwKJZh/6KI0vFMBUvw+USIc1vF65ZK95/fq4PyP5eX5brmYMmEc3B7kHLFCEa4XYdtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOmei8HI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOmei8HI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D774C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724952353;
	bh=BqPq3WC5/REKvf3zAWbEir+S9v3hyWyXhVniscEpJ+A=;
	h=To:Subject:From:Date:From;
	b=tOmei8HIYka4GX8ZHS1N4b1UrJ7sT2OBNDm3vrzQNW/1hyGbn1wGDno1J2NM69bpq
	 v1aJVR5xH2d5gBCu81+cH08nHWyErF7WDeHonia/IswuIktMC/8HfkcM/n5BUXBNIR
	 RsursGjTsd5ZTdRtPNSDb/oli8JaOuP10rCkLiPCtyO4wVwYw7fxlvz8b4RYRhVXfh
	 +JLVXhAun7J7p5cmSKjoVx0OPCXGZBfU/kt/puPhvxR/2O83lDDDpbawI+IlZzkJGD
	 zKA0Cc4ekNsmhyNIknBfU4bLYBXzGwlw3DmZie5wCOvYCiOIyF+ajO0X4TbVVyDVG/
	 X29GCswEqsvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF42C87FCD
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495235358.13517.9385898089386373770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b709f11c054019cf8d421874598b3d9634f1f713b827130e1faf28c0d67b27
Date: Thu, 29 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724952353
