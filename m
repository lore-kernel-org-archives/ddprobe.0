Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BC455C338
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792090834; cv=none; b=nBLpkRFTgru80OhSpVrzYMd5awWHUCCuQsTeLo8KDFkd/iwCcalWOgLH1cNNmXXj7Y4bLPqlTPXtt4CNPTSEFYKsD3njvquC86/Wk4zte6bX5hpOQF2KJWLL+0xCUIkbH2l4EZl0PKJSknHxTbAlN7R6HNJZfmG7gMsrxvuZjD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792090834; c=relaxed/simple;
	bh=ywNPF9MpGh6HXPcExaGd3u6NxrT6lDQac9tZt+lRPP0=;
	h=To:Subject:From:Message-Id:Date; b=Krmc/77J4a3khViPzYIFnW60q8VXwqOriNx4lntJLnVkyPJB9QDQrZ7X7XTpuRau6++S00WVfUDBy9m/t8c4XIp6nt5KhjtlaSCIB4sigBKB45YUBlI7xVx4MrfWaJ5YGNPXl72qLsXiKNBeCovUHi43JcVd4uUzs4acGNAiidc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2SIP6Fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2SIP6Fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D359FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792090833;
	bh=ywNPF9MpGh6HXPcExaGd3u6NxrT6lDQac9tZt+lRPP0=;
	h=To:Subject:From:Date:From;
	b=f2SIP6FpHEseTwwZe87D+COFliI58YlC6/sRBDhJlNDha/TpXingdaoH+asBd0GS3
	 Ljlqx8cjXGW1TlCGbDVUuQ7l5JiZOgdyupYYM/3sfCfKISgyFxj1kkblUTTBhQfkYR
	 hBh3gWazP87/vng3y1K3h/weWQae6xFOgRKzrI25ZnJSg0maGwuvgHBjb8WTAIRnq6
	 QIE20IYDOugf9j6ZpVIe2a/N2sJjDwoVZKfO+p1gevlEB/F3j84MDCvkkL/j8tyVbu
	 EdZFpRS1dKTYgiLJW7tyciKcoAQfJCQxPg/cVe9isH+obeFsQhaRL5JCQ5cMIBijZ+
	 4cnw/fW6iquBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE42CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209083370.30638.12947703782972016206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cbefe4003edf6ba5f01d762aba569c409c15fcd540e49b0d0713c9d4b22d81
Date: Thu, 15 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792090833
