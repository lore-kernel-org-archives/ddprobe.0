Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595161CE09B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719947723; cv=none; b=k6tScVLUgvH+xlBTWHRfssjUUpIWh/JMKt6me6O0BBfXFZExxxlBfHe0qSgJBsGLbcM2SSxnRJqryc8BiHd0kisS3lF3DUOwY/NVx88s8mvUn9BMdTTMnSMMD6oE9J8zWp36rm0xz7lhZa6Vmp6NrKjx4MMLLfeDElcom6Hs/+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719947723; c=relaxed/simple;
	bh=90GCeW83iXerWle1ovEiweVVZPWtvVUJ5IiT1esFZ/g=;
	h=To:Subject:From:Message-Id:Date; b=l5dBch1x6rFrETcz2/Fvv82ZTUuJR2WUp6fokx0PO2j50J47P9ndox3JsObQDQgBshPYSOnCPNuKPsUJwb68Tl1uqLl3jBH+pDZnHAA83hnYRlHJ2KXMmCs83QJcPgfBDe7FrcZirL5eu6YWGF+O9Tt0vsijh+XITDnRt2DMkRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7IZ6/C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7IZ6/C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92ECC4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719947722;
	bh=90GCeW83iXerWle1ovEiweVVZPWtvVUJ5IiT1esFZ/g=;
	h=To:Subject:From:Date:From;
	b=J7IZ6/C3+YFkXz8im6/PFf4prj0eB96p/NYOC0LESJVXNulIrprZxav/j2mfltzsu
	 dQtrLgINhOPxU6glJhr1gkF5XfpDEKf+aFaQ/q7WfOdfjQQ0bUERyG+dxmAJXsqb5U
	 MfnU/nD1hcf9U+dPJPg7CxHoJpyINtoXEy468N1bPWzhQAcdNkCTcjnzimy/ldoyTW
	 6FkuQEymVy+9inbLIGsdOPh0SPYE4Rr/0a1Onos+x43TvuGfe3kYmU1aH/S7i9PRY5
	 cXkHiVuaAQrD8HNk10CoRX3mOmURsgMljHLFKCL9PIqJRDL2hIFeL31tu8a01hCtZU
	 boPCicQg+Tgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46FDC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994772277.19014.2130902293765250692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85efedc5a581e94b19bf52d0cbcc2909b91c8f0b1af18fc899d6b535cf4801bd
Date: Tue, 02 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719947722
