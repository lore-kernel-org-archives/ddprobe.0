Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0402E263C8F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777754254; cv=none; b=N67o9/vQjbICuu3IeGDEx5b/iVeuxcx7oEUjr5qcjcv8dW66ZOiaRg/l2wk6CcHurD0oo8VhIRgBXwkW56QxgvUB1EqNo/RWyAMaicQo/0lm7d//qylkrFkE6Mg5iid04Vx3Ja02LAKC8fXzNJcpxMmp9yx1C40O+6T5M1iRyIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777754254; c=relaxed/simple;
	bh=/RfYO2A6u9qQ4GYOlokfS8Xf4YNIHLteIHpU3G3T2OQ=;
	h=To:Subject:From:Message-Id:Date; b=gKI2L7gGTuCfbsfWoByV4VGVIHqjcZBduFDR0O+rxXDCG5sw7LXbFO89qAuFU6FHzAXKDrRTJRqRiJ10GRHLfehMXexOEAmFGLM0V4aayeLR9/MFo7K9FyultT3/1CiMLDN+XvQGWigrU3XnqRpzTst4onHZO5imnMMgcm2TlSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB25Dr1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB25Dr1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BF3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777754253;
	bh=/RfYO2A6u9qQ4GYOlokfS8Xf4YNIHLteIHpU3G3T2OQ=;
	h=To:Subject:From:Date:From;
	b=kB25Dr1bnws7IOuDmcrQxyE7HhfIN1eO7GU5aYBXrOXgjQkTRf01/6gRAWqvTZYSv
	 CafIBNVvxJb+Fw0q2YOVXcvW4X2pXtEwvfjiQWEKy3SBAoajhQEZCBcy5kwlF8mhqY
	 TcEVtPrk21grOxXGBtzGu3xK4GoMtqaLY87WHOqEvQqWx7uIk6xdOsGKSoB7nui0wB
	 aIoQ/TXbQq6pDf7OfeIJxjLV1M/5sM90hoqmPAj8l7RxN5e780QF7iVZ07H4MZsAGM
	 4zWg5jsSK0Oc7N0+8CKgy+/vW97IBHyyoRh0HEau+1scNbnia+VQv6xfCrEkGwapff
	 Wlkp13TtDmw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF89ACD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775425368.6565.3137755924955748312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d3503d7bddb43e50eea8c52ea28bcbbbf95e8a771dbb0238026787b6e62799
Date: Sat, 02 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777754253
