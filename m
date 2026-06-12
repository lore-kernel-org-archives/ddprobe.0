Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247C34CFD3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781257594; cv=none; b=d8NZGSYQ4N4zcpiB7ogwEHRxpvVgPH4mRXJmfJpPMkY4RES+tBTBFXUVRveE3H5czfr55GNeUmWQwCchKvlYsFjhizrufQ2JytcalVgzIlKWM+Wg1sVongD0ZhLHJeqIvaUfvXqQcTzP4Rdbm7F9UjJ4iVTyEU5V14Ss0pG501Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781257594; c=relaxed/simple;
	bh=pNuqocYDXkcX2tKfVvQn4XbDQ3S0qXoD33LoBOzjWKE=;
	h=To:Subject:From:Message-Id:Date; b=RIf6dGDBV0yiYvKTnlJ7+3knm77SDdPNt/fzsw0CTYxNxzYm2gjFRwkK/M00G1bRT9QAHYjjhA4J82ZV16eVcciy3MR/kTiuWiJ5rOQKLCNXboInmfOmBUhGkvSdONtTDvqUN7EsP/9J42HzYYXlemyevcNb0d3JgJbegK4SIrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgsEYFDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgsEYFDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C534BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781257593;
	bh=pNuqocYDXkcX2tKfVvQn4XbDQ3S0qXoD33LoBOzjWKE=;
	h=To:Subject:From:Date:From;
	b=KgsEYFDtnX162hRvtU74YmqLY6SK7Tcf1vlLQuqKLAiNNWO2sF/azL8nxdvE0QG7n
	 RDvGjNr4ei0FkIdyOdOb4Vdj3G8GE4xDwW3AEmDaoYrqSQRqQTROsgbjKK4rLGmzEP
	 Kaq17hkX0N4+Bbv65AdqnDw3YladjrFy6MW7dusap4vBaOADLD3YgcjCtmjp3TCGiJ
	 2rNoZPOxkPufHcIXGDDHsQQY4mkSi9qHPy4qD1bBYUGLKTy5fIS1axbm3QwxHbROa8
	 eoMLF7sS2BCv5k6JJoGH7mlQpi8va0o4Ln+uuCDj3H+LnjbsuG8qf76Xar+KdFYa4Q
	 yO9y3DWsfdv7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80D5CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125759368.10472.16829252627518829445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb11e578185fb44ec9a580b9278336f54440afa107c28ab02dbca3d1add8c7e6
Date: Fri, 12 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781257593
