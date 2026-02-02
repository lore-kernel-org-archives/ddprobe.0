Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014102D2488
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770033234; cv=none; b=umeQBZIdcp9szbmhaakwJtdnYoJoAcrPCg7mUy91uGVWtpbibpY/R4iO77o5jBYY+OHflPaM0PM7jwOO6WeHv+6g301AF+MxjIEhL7/ClsyFAEUuyNMvsBn9siucRaecrJJHqAyoyoSsCVFgtS6+JP1mhEywQRsZdhR+oX/B1Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770033234; c=relaxed/simple;
	bh=OaDNH0ERsDvKqjxSWxc3TiFKkIP//IfJ9Lpggb2gQ1A=;
	h=To:Subject:From:Message-Id:Date; b=HYljHZVpduudTYmIRsyNLCPiATRecDLaSlHizOaT3VlFipbPuguohRY7YazJXNWUDojARBHkhRSOhytsXum3ErpqY/RzrT3tVjyWtPvX1QDJXWtVKkaVyuCXAI2zH4wSns9f9XOiH2wTsmjXELDMx1qHYcCzdupZvKidFKRMe9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOLXVJkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOLXVJkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770033233;
	bh=OaDNH0ERsDvKqjxSWxc3TiFKkIP//IfJ9Lpggb2gQ1A=;
	h=To:Subject:From:Date:From;
	b=eOLXVJkLomlPZLqUKCi0TqtAbxJ8/9z8aPRA28OZueHPgHX6z2tm4KQecZkHAiGeH
	 trawXV1eYPZxVKPeoagVACId54BLPtC3IobCLuzoNBZldRjxRB8HpolYhFPzVtdANZ
	 G0K/sL3oG8vev6oOoR2whMQuMMa9k1KmxII19ZSMXx3BwMO7BjO116imF7pGLPhiud
	 b7DGkVQHJrrL1nbRejtdnrJFM8Q6/1jr4Xho5MF4+V9yA46XKkAOlOq3D565kez5py
	 feL0m14zeUEATYDnl1UPFQa7jOOBY3Z4RV8An3HByj23vF/m56a9Bv2VX5wVTuIxLI
	 LnGMaKsSZSehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299EE7315B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003323359.11374.16634369858191405782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91effab86b68a486fe09aec134c3e049bbddc75dc7715f741126f7ec75590dcb
Date: Mon, 02 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770033233
