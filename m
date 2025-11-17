Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD671E1DE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763343114; cv=none; b=S1asFAqNArinDXQTnbB/mvyZ9VweQQVaY3lTBNBabhlwBoldFv+u/pAMVGMm4uipfT8uu4mxf1s89imJfXv0WOP2TvVZ4+K4VvRxxTiGyuelepFEfNEdMhW8lzsdmRWMyUbp66G8q281hoNv5AT6ZL4C8xENnWJMYAP+S6ovZTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763343114; c=relaxed/simple;
	bh=oOSg1giRoPfFEZB+FSteS0nlTHw7NX9+iz4yb0tesG8=;
	h=To:Subject:From:Message-Id:Date; b=jCWkouDVVf4VbrQufdc8rRfoAzGaJn6f77pNrzYY6A1l1+sFY5q4MDZaXAKD8dLJc5YbJqcaA6WGapgH8FBJOVhuM2baRvfZehFwzPOyJ3k/oqUjsiGPLb+fywbbzoWCTr0Qy4fKpbqiuJxfelHsImXxmN8LyouiMogx6VbS7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueuZyBTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueuZyBTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B2AC19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763343113;
	bh=oOSg1giRoPfFEZB+FSteS0nlTHw7NX9+iz4yb0tesG8=;
	h=To:Subject:From:Date:From;
	b=ueuZyBTdpO41aoDjNmhju6tM+C58qWeFSBP5OwvIExX7kqCg79K3mdykFtqklIn+e
	 lqpWKiymrbKUuzN3DTDiY/MVHpKIOTFhRayl5ZxY52p8dytjaI6x2RAaA2FMslNlw0
	 l0FMR9b0+gNS+RkpDjF7HgoBsuKQcXlVfL2C8rYCdIP0n+WgI+fyxwF03wMFSSTS3e
	 0V3PlB7IsqVDTaASJ//dWCYmugF15YHwv72EQ42TIjHERwkG9wxkIoyOsIvLWDEsZ5
	 8hwbqqI7VkR07IqUToY6a63h0SbSFUdDccDHTMkVKk0lHjrURGf8bVSrKbW0XqfTBU
	 /2pjGIbN94wxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C34CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334311363.6861.17696809638668831900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72546921d8f0cb9be34734ea171d93cf3c270eb5c44b599a74ef6f4c2ec9c430
Date: Mon, 17 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763343113
