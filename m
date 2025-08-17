Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B59F367
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755401994; cv=none; b=DPLdvpIvKOaaBaDFpUEQ08clFYUgY45KDmGA8N4fDKjJVw/fhHtFdORCHqB8T81es7TuzP4A9CTp1DtnpxQo9MrSHTCzCez71F3a37XmsRTA2lcI4OdrpXPDkW7Q7k5xq9XfKZR6jpKhvT4dx2ArFoEGcxAsVDFXTv2xV1XLUBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755401994; c=relaxed/simple;
	bh=UcHmvKOqN/fbxNpzRa/rCoubSoEWveHRGvAlZC50aGc=;
	h=To:Subject:From:Message-Id:Date; b=SqVbYQRtefHTM8sohInggxA0nxNBAYjaxmU+qyLXLlFOC/pjXtx2ivxxORyvT1Ol7HD5Yt4qhwk16/qu6UoDpCCGDFIaDDQL1Rb5FxmnpLDirahnk7+o5YiN6s/bQfVpEr6vD8/9ORlMqkUTRjD+/uqF0bgsl9hzJKdRBlGRUdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am1LtFiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am1LtFiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755401993;
	bh=UcHmvKOqN/fbxNpzRa/rCoubSoEWveHRGvAlZC50aGc=;
	h=To:Subject:From:Date:From;
	b=am1LtFiFOrMBPXGYD7URj5s4HM+vuSe8+/rN1MW1m5vPrCIsWETecekvb94wzLPTH
	 e50qMQfUoDOoWMvASlrfFwV9cnSmdWLvIp0MKB6SFIWYO6ezWfnQumFLXWBAnZzOcJ
	 V2r+h8OikdF9UirAEwyxKEWYV68Vwo4l8UkXnuM2P6GzrVvcaMPztrg6H2UvKfT5Xw
	 5KWwRWBsZbeuaGfbkICXPY5UA9M1XHkpAFS9D5S+/p+4Ip6mQXqriK1/osFQ0/HS34
	 MCHg5I8MDiP2KTqZa1RieK6bGtxNkLPohVgkJrFQOzd83kJdrXvCVOSJid5VdV44C0
	 wiYLFzqb1bSvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F8CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540199357.16621.1650578224147802962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5458bf07a0fd6be84d4ea14aa13b47af369943216162f42e13f54cc7870acb71
Date: Sun, 17 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755401993
