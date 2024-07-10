Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABFF5E093
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720637243; cv=none; b=OzYyt0evaCgSQGV8nP/UHzrRlLDyu/iFmbL/iupfrdaX4nkRnYIAhuRFIyw6W9CMtF8fP42mAHO8DKCdWX5/+pTD/ofJWgG19ck1ziSd1igmXhFn90Ryw+7tjmcb3Tw0rCw3IjKUaJmDuhXFiAdTeiXFlFDnG+ceaQd1knUz9vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720637243; c=relaxed/simple;
	bh=ut6hhGLTBWkM/zLMCQcjjFHMlCCNXL3pOxGbhEnL2oY=;
	h=To:Subject:From:Message-Id:Date; b=O0bv/K7IoEu6nerYs9VQpnRPZh1jgFu7yulG32LjJrI7dnFRTzqgP+R5s6DAU5dXmWbnPY59xmUrRhd/T8AD5HKVTASKew01mDlRXik4MXr14UXG0/1VzI8xBExqrWN2SytavVs4bSY8RX+DTQXabjjeFLMongFlKZETWJZ9qhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tknjgocn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tknjgocn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF39AC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720637242;
	bh=ut6hhGLTBWkM/zLMCQcjjFHMlCCNXL3pOxGbhEnL2oY=;
	h=To:Subject:From:Date:From;
	b=TknjgocnvVZSv/2kBQDRfHItl08FPrnRDtdzuzgxg+Dfwe9twR8LNR1mr/NkyNppI
	 UHAaOJCOLwMZFAbdMur5wMKQKoyHXRdlpfv4jt1CT1rH9vWyaGR7mcvRKudmr7bS/G
	 EpxKxIH5fgfKUA/ySZCZG+3efJnptA8hzctMpe8hbOdSyUloMT7vfgvwjkiXftxZNe
	 0WWXILb5x29xWcZdaqEzjbED5OZ85O6eg6PDl6WQ8ewK1DB4yu7M4w6GFWCtmrON2H
	 w4hAmrrAkoT8cZpc1eNQBsekVF+QEDd//6wLmVbEuN5Ns9xdRlvAwwZ3ZW25+uc+m+
	 iHLX3rh9t4qXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD38FC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063724279.17548.1162143686390848198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bc33770142b025150af38f6cd47b88f3e52513ea258e10d1f3418f7287c0fe
Date: Wed, 10 Jul 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720637242
