Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1205935E951
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772907894; cv=none; b=Of7xVLvQ1GgIT7rzPVMg9goY1ZgMKIqOU8OM0gj3v8Fh0RCMi4GPzbiBRa7A6CQgk+1L+4kQvmuK+0E5Pm4aaVKjvXRLKrio7AqcrVkf/vgpFiLxpMmJLyAgoV9Wdr8uou+vMZ095PKN+EWGeUBBqf8Lt+GmZ8n9TytEdeoWNdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772907894; c=relaxed/simple;
	bh=BgJWQQm8IAjVaLowPoBc8mItZveAaO7XDXE7AYajSoE=;
	h=To:Subject:From:Message-Id:Date; b=iI3ejDbksGzXBEpzUKe1iQn9tmofo6XzHFStPZ8NK9EZHMC6jzxd9JyCmcILlTYvbVpSlbHfASuR+B9kDSW5a8ri7EKiqVgHDCsZ8kQPeOqETLoHc7Q8SItzusaSowbGo45ch0B0cQAHaDDhte2kvAuImlBvDOoVAy1TLeZRQ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk14HzPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk14HzPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D5C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772907893;
	bh=BgJWQQm8IAjVaLowPoBc8mItZveAaO7XDXE7AYajSoE=;
	h=To:Subject:From:Date:From;
	b=rk14HzPAH4KjvUX7XOK6pGvqjjsxtYDUv6jLqraDyIpAQy3T3I3iINevfDvwaciMk
	 wb2cXSFSOhedVacImUadJy1+9vEi7x2ap8jIAC6tyUkq3L9tAoxkXyde5HRVPYTOo8
	 0r3ZPfcUPUcVjcxZUIvRke9aNhSx9iNNww0lk5VhEA+G32w7kZwJq4fF+Q2WcJfJOA
	 gOUKcJfnpuKsWKRQWkoGuZSFHsj549yM1+iPuNt2GceLVU2kxGEeWK+dBfEDb+tMYB
	 ozVDIAvay74N+4nKzNpWaZ04i+hRQ3Y3mgCe5YHoHYZqLpAIE3Vjvy2N3TPSIC4oRa
	 FSmdCHVYXcnTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5CF55103
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290789359.15487.11858744292153088679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a58532d0f6255081ae8e62b9af053a36294c4d230f8829e4420ad130e0c3c0f
Date: Sat, 07 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772907893
