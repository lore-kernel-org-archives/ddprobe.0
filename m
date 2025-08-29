Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207262AEFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756428594; cv=none; b=jzD/zk78tWt8B8+CQARe/cZ9WgzmRfLYtvDFTCMDHoEfGj0KU+A4YowBfggiPQwhyEQM1qQyIA+HVcM9vnCywNehGpB9YguX9W2wO2tGL5xgNCY7cxb7NwncvyQF3ZV1D5l1YQg/8rWwbXTaK+pTa8Gm2UhVOPthBW8yWyyfEAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756428594; c=relaxed/simple;
	bh=4r9qyHwvuK9hohpLTs8oYVTOYjQHev4L0bmuKaMtkms=;
	h=To:Subject:From:Message-Id:Date; b=LpIT1c0S+EWVJS6MTMpsqYL6pvldfX7/PjoVyP3nRryUq7/er6rCkAS0aqeipJx3VZ/oKesdE6ueKDtqAGAI8A9AIg/OQt2EzYA7Qcp/gTkuYqgPuYyqSTghaDqWjvJEJ+TFUVBAVoI/Ymb2pOrHKv3ifeNLaBQXcVFzjfdV9v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTSMOWbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTSMOWbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F11C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756428593;
	bh=4r9qyHwvuK9hohpLTs8oYVTOYjQHev4L0bmuKaMtkms=;
	h=To:Subject:From:Date:From;
	b=GTSMOWbUJqa4O7E4IpyUhtgCXRDCwjfrit8d0kn0O3XfIhE2HquomGZcU8ygI8pP/
	 fl2GmXBQMllO09+BhS6YhgTHoS/BoQeTXr1PS0EGuxjEKLow9vhO4nwTNRng5IfKVW
	 qeKCzGBn37D+iBhuRQa0IeakY0mdGtY9+lmvnXBTqE1Y8niuEqQ4z4OAPeo4gFGu3/
	 TlExO6MUkywwc165ilJxwYs0GwX/Usd7iJfcO/IVX3D3llCueoBzPZVfhFPsI4ZPOS
	 bGFiBkPalK43EyGviSSOIHPuMXiuYQicqL/39az6AC2syKB2mjJSr0JMItGcul6rbA
	 aNDH9JldV9E1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926ABCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642859357.29599.4908998123761200102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050527c0afdb34757e86d5c86bb2d20e5221e1630744c9b2015c72c18bf07029
Date: Fri, 29 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756428593
