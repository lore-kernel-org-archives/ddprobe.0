Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D677D101C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712545696; cv=none; b=reH+LuIAE+AH7mCAdYh1uvq+aJ4xhIk/rn31LLO6i/t8BQhGywWrRMnawbcYM54NgFfySQXfRnWNwRr4CN0k+I7yq24Qb6sO1bFv8zicz7llxb6unRaypM2PZtGKsHH/k29CzlGtkoG70FPEbBkUTNlgFyldyoVWtJIcbeLoDjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712545696; c=relaxed/simple;
	bh=mV5auRQA9mTTTTuH4NvDFo/zMXJF3VM3cSA3ubtH1N8=;
	h=To:Subject:From:Message-Id:Date; b=ldMPN9VU9MeUQoajESlCoTKGFkqMlK4rk+jZcE58n90D/rmjd2cLobmSaptEGRVMo0sd9O+owNrxBAOVUco9mxdCwhaS/0aCUOIeuD13ljbVJ1vlqfHpfM+YtiWIZti+DDmaHXbfsTFr2oW2Hb7AmUGB8sXgQYuXi3hyhbf056c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D85vk5TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D85vk5TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72326C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712545696;
	bh=mV5auRQA9mTTTTuH4NvDFo/zMXJF3VM3cSA3ubtH1N8=;
	h=To:Subject:From:Date:From;
	b=D85vk5TSTVmC1/gSc9ujQWULGJGLgYUxz4iSxwnIFQ5tTWJfO/FTYQfaOPJQhZ76J
	 WJWpp4fZvXR7xcAgEIkUtvBqTY+csGK9UH/7u6/77zE8xdLQ2sNYT4r8ytVMUdZF4f
	 ZFZLJDsY7mClQfcekhPAghpnzx4SUxmS0RI+EgdLKJwbBsv0Y2oDzrCDRnKcKmdbuP
	 KCeM+JOAXlsRW/fPZ7SPz/9uIdYCDxOQdClTl9MApeGAVA9yFXq7Y6juAzFBUDVn4y
	 VFE02KNViJlx/a+j1C4iNE7ZMsw94rmZM1+PKL1oNe+Uup6Rua8mnzxbwYA6Uu8oOa
	 2nbgJuifSWTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6486CCD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254569637.22493.5294154782265355620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb44a6c9974ec3f57dabf4b9ff2f4beab257cf530e817575ba96192de0bde48b
Date: Mon, 08 Apr 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712545696
