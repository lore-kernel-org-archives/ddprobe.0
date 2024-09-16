Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103894962E
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726487754; cv=none; b=m8D1d49q0SYwCU2CZnjH0muzi5UqNkxfhfrl46k0PvcFLH6aEKpJ36aPULiTlhhG/rdch6WFZn5f2/boE59gXMQzxTaJdJ+km2FmnEraFVJgv8Js6RZ2yRhAzdgdALU+doYvzhNIU5Kl7RNKWxtdJTCdnpqCWGtYsWtN5U71F7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726487754; c=relaxed/simple;
	bh=eXuXrHY/EVS1pbUJS2DHLcpmc77Ghengp55RcxcZ16Y=;
	h=To:Subject:From:Message-Id:Date; b=Qcnp1NTU+9yO/dGwGcrft5KKRAc6fQ5TGuIVycx9/AQ2L66x0XoqNxgZBGWAPYt13mrGLXALEX39284A4vpTuuf5I1uD79iSp3JsrNHEMPgQLd1VGWfGqYJIVAHPMJcSHbcg249HaFPBGI8F35XAf0Xu8mKDBw6A1ReJvrl69UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC4/ohMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC4/ohMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B7C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726487753;
	bh=eXuXrHY/EVS1pbUJS2DHLcpmc77Ghengp55RcxcZ16Y=;
	h=To:Subject:From:Date:From;
	b=BC4/ohMGYBFBL+A51juB/2EyenWcRolJsmPoBG5ZfVGt+ZJ/ZWtn3GUWf6NJWUCr7
	 BGZ1KtwiQHd8jQeQOC6j4uMhZbTnCgI4TJcIPRYdLOxB9dvRJMTyWo2/DwAnxUOmHm
	 TJD2Z9RNl+JJdg9LWP461NzfpEA/ugnA7swXCaMy5ATK+8p1OWJqZdLR13OA0oL0aX
	 8f9n21yZf3W5ruWMqO3ogV6ihyhlNASdE/LkGcFBf2Jd4zme2sRIWxY5mN2II5fAi+
	 UH1T+fYE+P9hy/U0fSI8NrhBoFtmaRknqpdlE74naQbdcWJOL0yCC2iIhdKU/VR3RR
	 j8hpzXPSosPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2DC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648775359.22671.4188027894988332046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e78fb5ab92c6884abc4ff6aa8c7271743685a1e99d920c7c8d669f5b4e1e078
Date: Mon, 16 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726487753
