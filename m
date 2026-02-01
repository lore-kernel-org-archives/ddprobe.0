Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260454A3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769928234; cv=none; b=FrTUCpTYT7cA580uy1zJPbZhWcrShKV8qptol/8BQSn0DT2ssAg9/XIc3ni9BjeIcgv6Iy3/G7K4/270zJwSXPRdDNXcgYAIrYrvQutMWXpga3YQyt72viezJ2xNTCKoxCeNeWxBEPI3Hnhr92YwA0k94eXONmdniP0v6oTpSZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769928234; c=relaxed/simple;
	bh=fMxt8HuN+kRoDg70G81v8DMr+1oqCYtm1lhZl6FGicA=;
	h=To:Subject:From:Message-Id:Date; b=M0I0VMhM2I1wWdpi40iGJ/zEhI7q+4nvshkKvBoBwCgP6gSmGJCP8H/oyi9XGU3+a3pt5wbnizpKR4SYmIeTMJNiPOA30B7d9AZaVsm+mxZbNr64P710SIgMnbdleGSRcJiqlFakfIcLjNMNpdd6P1KDIPgALKNefMW2dK5xHFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrmEtROJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrmEtROJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769928233;
	bh=fMxt8HuN+kRoDg70G81v8DMr+1oqCYtm1lhZl6FGicA=;
	h=To:Subject:From:Date:From;
	b=lrmEtROJc5/WM5zNvGLwmX513YJnbkD2LKTlsQh8o9IGoH43ggnJFuhboArRFvUAJ
	 htOWjgr0miihfn3DixbCC16LalTZFZguF5SpkV9HyOMnr759B1Cdi5Lf9r+GWKHsQP
	 bNyHNStURuza0ysK0iiBGGGd5692Nfarye22XkyeebZpcAk80R6HlTPLW6+R87deWN
	 8HB+dz1B8zyLcjRyWVe7CWvBHYVC5VivAUYkkEMj8HUod1Iem4L0XZKew2baG9nb85
	 cNnlBEmKJ4WU7BXzFm76EoDOPq3zcsYTRbwC4GaFz7wAhlKrxQ9Xddq51vIMUBotNI
	 G+3vfwa94YfoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94601E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992823357.10221.10360765994608285976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03207b81b2404b73e3649a64e9a7fe0ef94228b06bdf4d251fb15db2bf3b909d
Date: Sun, 01 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769928233
