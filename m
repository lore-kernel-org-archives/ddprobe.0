Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E92A55
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764711174; cv=none; b=qFvq7yNzbftQqJttyqj1RdUZ2Cdb3elOV3qLQUNmdSFRhYvRBFL1I1/v6ZdnJBAuWQxZsYHGLeMl3O1zTX0RLQO9RQvE8b3LUMqEOmh0dUjf9mxUMbIoildIdiDUWbZwnC33UzNim7AQrEL2TAADG8QuJlMIO/hi+YylCmLYQ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764711174; c=relaxed/simple;
	bh=Aya48UOaLeWB3cGhC3pDDAna1x1jBlsW+EEhBSztbSk=;
	h=To:Subject:From:Message-Id:Date; b=LkFvKoVtNzU4JzCq12HhZBdBSFWyJhl2k+Ie566hVLhaWV2fAL0mHse1Mf8Vde2CE2zNxV300SNbAv6XMz7C//A4Ye539t5tz3QTX4t35HHKT1AOCtySxWgIprAGXJOPDO0MmckXE9OOU4oewnJWwyX92vGSO/AREWB0aCxSLK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfK30Yd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfK30Yd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D15C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764711173;
	bh=Aya48UOaLeWB3cGhC3pDDAna1x1jBlsW+EEhBSztbSk=;
	h=To:Subject:From:Date:From;
	b=nfK30Yd75fQTMjuhB5WCTQ1JBLYS5UUjBeAXOH6hMsoj7YZ2vMCI8Kp6p5enMhH6s
	 pWFIur+XIcj0K0S4kBX23zblX1t+LxHrs77sxYVWX/mTTIXNzL+RaCHGtlQUZZYa/B
	 Y4xkXKYaflEehH3ir0dZxpiRzmngepteRkNS1UBMyG2qbuoP/Ya3ggXEV7qGe/yQA+
	 gkE4e63cfbydvt+ICY/gtfPsG853phFcm3BFkEVhVnI416eYEP7WeBsHBfbguLI/vB
	 MLx6UbNPbZUtz17W6MiR4mf1JclRNeiB3eCkwf9MmfucbIcSY8aBcJdXn1og1SMknU
	 C36+eFiZsDg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92634D116F5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471117359.23913.6667052647804067988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66e3d4be09f4e41a01d35258f2eb2c814b7d3fd3e93ed4cd49f94553ac29503
Date: Tue, 02 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764711173
