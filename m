Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5AA36309B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780477474; cv=none; b=emyF1CCSjCBmCqMo4Qe6ek/P2pf00b7rJQ2vDILk2RQ0Z9MrMNvFoIe07xMs8klyCk9udY+OYz2eTyR3fezj0v1qGXFLVD4C15IzC30zNVJBaid2xoVm8OEWUjAwMu4O8kWhbJacY+qQiy9c+TuBbHnlb5iupLdVowpo3+c7KBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780477474; c=relaxed/simple;
	bh=stFU06arzTCLPZytWFn0QkVORgjV74pAuOHl2DDKBgs=;
	h=To:Subject:From:Message-Id:Date; b=N0k2hVytfsPyaZzulUJwitlU8+nGWHuG2ODBqID+9KPc5cHexaLJ8czLzhEE/wamHzUOeYAccA2lpo0/A2W+AfaNVo2zUmgjrADgJ/49eQ1JYFRt5o/JnYv5UMvmBLdvUJvMfBjVy5NKOcgbF0MK7KqD9RM/8aBuMrCtXI0udKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAwtqsBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAwtqsBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C17C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780477473;
	bh=stFU06arzTCLPZytWFn0QkVORgjV74pAuOHl2DDKBgs=;
	h=To:Subject:From:Date:From;
	b=pAwtqsBIN8Dvuv+oPWE5e2FuLeiSVMU6CFQi2E4PxDU1d0U2pS4NFbFb2qnAFv92H
	 UzyUY0hjfzGTexuHyPjmxt13HfEP5hInV9n0Rl5xFpnwYPTiNiC5dCQhMYhv/CQeqS
	 fkyPp3ctWa2CBVTk+KJPCgRRKK7brdeC/hTxEueANuZQrpEype75hpg/AdOgUBWtYo
	 tsOYe0QrQb4Ey5m19+KXGYv1RDNqMRJK3gRzUcZX7bIAX1lM8ViOp1ML8u27KDtEpQ
	 haUIzj+F/h9yzIW8FwnktM0dFPTmHX1a/tQkyyZ1CwYKvQELTyhgP7XJy3zMgamFi1
	 XnHYwiqn5Lpfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B08CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047747368.15230.5893968471031464479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178d87b7a3e523dc22592a23f046e83aa6073892bcf27b6edef736bb97770673
Date: Wed, 03 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780477473
