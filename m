Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1A11F0E29
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772665494; cv=none; b=HPOOoF2sOSExMYLgRaCBt7PekTemLx9zZ2pptt4C4IWG6lPHDaU64zwvOUKka65JQVpbMosGL6EoWL+KxfDnZV3Z2CuJjs1UKY4/0EofB82a2hblc2Heai4AbF1kyMlqnFF43ov6vWwT+9iSvF4rKQBgGlvEI+pq16Jpvi5rurs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772665494; c=relaxed/simple;
	bh=RecZfjQFD5hXNlfDKxvlmkVbE9gDDPQ7PDAiBEqpFSA=;
	h=To:Subject:From:Message-Id:Date; b=ZqtO+tG+dOkLEkQmsw76IkiteGWXjRM6N7eN1uHmMbJwPMnqeWRtXT9144GJMwunGvdGxTd56cLYgbBf46S8nT+77bCtlExYP7QPNpW50r+/j5DY+lYENOmx1uYXRH5fEm+rfumngZ8tkUrYguGGwwRMVo5ZiH3lKX+OZNblRJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQTbjHwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQTbjHwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C1CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772665493;
	bh=RecZfjQFD5hXNlfDKxvlmkVbE9gDDPQ7PDAiBEqpFSA=;
	h=To:Subject:From:Date:From;
	b=CQTbjHwM3JCPAFKzcLm7aDNGB69atX9/kigocfUMkc19i4Id/7Z2So2ucniqreYS3
	 wly3QxWD9nRZwS0KqG8vICb6f+rv/gfoZCtFGyKKS3Xf7uPJohMPexq2D1fJ+6IHoc
	 8oH6M9TLxp/LM9tqjXDWoX2oyTRHzTkz5amujopsZ00lMwrPbsCEspm4kySE+y9hij
	 7BBZpxKYzMaKp5s7a3BlBuXFtHSGFXwL0mNRDc/Z/RaHV6y1qE21JG4GPiA14OT4TJ
	 0rEhL40TVHiMGdx0q9/u8RDR5ZRAZpSdD/kOf0KxQ1Z46wRLd1NsVzqJUFzXznIR8J
	 G6X/0AkUBloXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767AEFCE50
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266549360.21051.13474646537921650785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ead2ab45d5d36ac84e2aad67d874c5ffa7f334cbb99f33dd1e8e3cfef88fed
Date: Wed, 04 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772665493
