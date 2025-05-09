Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D7128F524
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788394; cv=none; b=Vb6rOic83X9QvpaaeBWx4lZnquFHiNljCaFLiGrki9T12bSvoRrWRxdp3sYvcnu84Abc8dwA52cf6dYM7MAOYuT0xcqFMwUP9pUipsk3UHIw/86+30X5R2akTtGA1pKtlqU5eomOcSGrgrCFf1nHshnI+jVjUghIpcOQoi32Awo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788394; c=relaxed/simple;
	bh=Czh9F61eRb+Hvik/Dbbvj//M3eg2je9/kukZ8HPdkc8=;
	h=To:Subject:From:Message-Id:Date; b=WlP3iU1wJBt6Wq4yx1KZsgoHPmzgjxK5K9lbYMjOpAAA5XrJSm/mFlGBfsYYf388RPbljfp0Xa8078Px1w2U5vHkPI3M5yBk6VhSeA4Mw/LRTWziYKWBxtkyXct2xX/oKe8r5cXIcaWB22QOhBcOS+PmxP9fazYzk++GKiclT5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b48hE0r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b48hE0r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34AC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746788393;
	bh=Czh9F61eRb+Hvik/Dbbvj//M3eg2je9/kukZ8HPdkc8=;
	h=To:Subject:From:Date:From;
	b=b48hE0r//ptaTNWvseBPVyndgK2xc5rOZjOfjodIzFo7VC8pr1uPp4U+0Sqd+P+u+
	 TSGKiDULJ9Vdz1nEs9G/wgXqY2Hv9G9mX1o6nNiYW42BO6GG68tjIbpLnoGPLBaQhI
	 3Zl8rv/iwaINEh/efESw/VC+eBvdXQcKusZtO7j3DaXR17DhLSVAiGClIn8X3JmR1O
	 Nu+mQwTAABmyf0yyQwbyDjiihZOnnerSHbvYALmiUjB8K1rY/AxiY61pkxx9uD53/n
	 cafsbosddG4xQ0TxnzGtjuHhAHuFnxFGpQu6hCKl7PD0UslU+tdkUEX8s6TLHGaLe4
	 nC/7C+1yJRLwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF44C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678839357.1561.4579180200251409495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10523778a7ea67723b9620b47e4fc5df38c14923b6899bfd58c35a058463f9d
Date: Fri, 09 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746788393
