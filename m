Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD5F3A75A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784332714; cv=none; b=j8hW+RveibtXFGCB7lA6l4gq+D/kBvrUILquu3dq2aN8O3paqPgy5aOQfP7uh8Xrh2+IRo/WLqiWB+lbpOtrqemcmmxk70CDUepnrdUFjtOvNkkTnTWxcXIs9Mrxql2ydHYTnnxs5Z/HnaLkhACauRjtLj4ssBGYwlTGla3dbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784332714; c=relaxed/simple;
	bh=m/PWNSE06qZQDzzRLEy/1goiqZK4CEwbJ3AnLoQBsq0=;
	h=To:Subject:From:Message-Id:Date; b=efmiwF/BSmUm9KM6IRSNhg9GoLtCZ1VHglXyZzvf6M6ggz85B/I7LnWIudizfhdJdUqSpkeW7YAJOnUo2phEig3idOLepSGo/QarqpKUZTMakwaYPopNHkfnxUWKwU/WXjI4lpxCwsGfXQ38lF0YFY7mf0bUble24ASjFykKVV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDEp2/d5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDEp2/d5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70A6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784332713;
	bh=m/PWNSE06qZQDzzRLEy/1goiqZK4CEwbJ3AnLoQBsq0=;
	h=To:Subject:From:Date:From;
	b=tDEp2/d5Wk1+P3GLwgqrftnjIsGJamWUGkBIMW4t4vBWpIVrTOzgG9cUA2aTwsikn
	 nJ+R6X0V3H3rkLxl5MuEmJhnZRJEbYJqRY1t87OWvCpIlZBVo60WRnsxfgx9JNzoo+
	 Vd1KpPnfCgevmh9PUx4v2+3S+8fhpBBVbojvyzULpSL/MWb/lK5HPy36VEXXJjFVDx
	 llUCJe6xynT9xs+C8w66OKEiCKef4dQpLTzfl6VxMucw/jMFJunpVY7nNUlSgEZRio
	 dLed6BlpZVSOhfEhACCLF+q6TiMDVAHX/+41wZYy6geRJaGxVh2/pXHXgTkdOwui/w
	 iNeUGZAbEM5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2933C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433271368.23419.7565113687055525280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e3d1fac715ae8a0c5f77c3de13dee3c55597112cc878964bcc247bf024a734
Date: Fri, 17 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784332713
