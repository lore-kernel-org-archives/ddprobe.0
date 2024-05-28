Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D813E054
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716935063; cv=none; b=TtbeUVNpXn/62tWXuCHiwYQdaQF2lWILG4EIMNsnCw1cipfw2aan0MxPMbXupfULCmNT93hs7faDbBCBsIW3l/PXbxpALxQpV0Y78pCJt174e0h6uFhlw5RAlsMsnzPp5y88YMA3h7NAC4PEdDkac9pyDMe9GZV7snVaJ+RDke8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716935063; c=relaxed/simple;
	bh=UeLO0BMBZAc59CEWokKNeJfnSynOQqGJHdzCxuc0tRE=;
	h=To:Subject:From:Message-Id:Date; b=tz/5FUVPgwnUzmjOTcfCYTezGePbayXooirVAxLj9SnknykwYI+NPvKPBidxjSEcnj0Vr1WluEmRoT8RZdxEXqnXLSBBcLC/sSBXgWF3rsMEnYbFt+9aYVS3DNAcOGBJZhp4TVBpz4ZVjY6hVHC3XizBgqcOJ2Y6HvT0ipz+wZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIJSQNk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIJSQNk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA15C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716935063;
	bh=UeLO0BMBZAc59CEWokKNeJfnSynOQqGJHdzCxuc0tRE=;
	h=To:Subject:From:Date:From;
	b=RIJSQNk8+xfYI0fhHuPKMQ8Q/US98eDP3cOsm6S+x9QraTQ52ra8r4fYKVIorP3pf
	 qX1oIM61E1FXVNkTflUAAWZt9VbePi0wj/WAcCOjAWC9rKI9l4gSTLgcx6rZ4VR3NP
	 F2q9lbBLXydp41ohq5DQjdLGZlkzFepIYqoZVEt5VMuU5pj+3GFuGjwtwIfqyMaAN1
	 2gI+wIHefygtTSq9pDX94cTODddy66rCimq6Fxw3NFmZqXHUoxDchHiQll6v4e0Okn
	 HHZpK9tRPMH6a4xXbaZOuhgvsglROymc8B9tfpUkGUVWtank6RXlHv+5LNpDDVNClG
	 j2Vwmqnzdnhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA0CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693506283.19160.14573244231098799125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df04e634661192d79a81870cd0e2e4d9d08c1e138569c7555692df076654a74
Date: Tue, 28 May 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716935062
