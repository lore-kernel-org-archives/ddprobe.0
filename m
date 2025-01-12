Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3AB322E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736704554; cv=none; b=UzpGIc/sGCpP9E0vZQctSRHkxkUMDWO16wAmCAvi7taJprmloyHSSDhaL1+dMu09ygM38BOE8yvoTCCSaVMUAiG8HuDuoIKenLodJ8wYmV5+NsXWyuVTac8i8l8jdFnMY1JujHYnwYZETecjXllD+v5UmhzZ6W/5Ph66uF2yRJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736704554; c=relaxed/simple;
	bh=dP3/G7cwvI55hZuhbvDlcCmkdBlNbddeN0SnwBLUudA=;
	h=To:Subject:From:Message-Id:Date; b=VrPllsETFY+Yk6lQewU5Q/3pocr1eUbvM5s/xwqU162s9Hl3KdMCYbbCjkJdtk64jdx9Zlo0/qP+dVR3yU3QwaPlGaHs7NU36W0vHYhT973ZDW660CQrgFuWw2PyfyDccyrYwV2f5Jq92y7qphWIouBF6yZTGprTbq/06BpQnH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfohuBL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfohuBL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9810C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736704553;
	bh=dP3/G7cwvI55hZuhbvDlcCmkdBlNbddeN0SnwBLUudA=;
	h=To:Subject:From:Date:From;
	b=qfohuBL2TK2SqfhJeq8rMRYq8B+REqqwGT0AZ66RyNi5PUeUtQF8Ab92xNsIDyP8k
	 xB27RK3upGSzjmOaaYxSaK7g3Dabquh/4JOn0N4xBf3ut5IEI2jVQOk7T/pxrIMByF
	 MOumOgDi4a0V2d0nHJ0MMg1cSP6uo97cPdVQumb0q7KXh7kCM+0ibVAhrVnw4nPy0b
	 gklWj/qDAacF1a2EBlG7+dmw2IJNWeOmhm3SivDMH4clXmzw/Papa23asJ4EGSSAyb
	 tB3z8TtlQPD0uSPcGeH0hBb6+xkRhnfdEQT3pi2USln4WLFns02XTRFWxsL0i7avBH
	 1eco86v1ufFvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F012E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670455363.18383.5865490551420094624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083b1bbbc095f6122c005b6c0a456bfb0ed669125027be7833b37262eaeb39cc
Date: Sun, 12 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736704553
