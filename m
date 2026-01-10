Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A02DA759
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768049634; cv=none; b=Jq/Mj1yPCVQPrSGK7fgL0c9jrRdMfmm3L+N4l7Tr0p/d9Vtzm/yZdwsmw6STh1D9C3Tw5rD8ReRYcrVLqLdAEoCqehAEyhB6ak9PAaAroDt0VFRafAUBytnYMgO7w5/a9IlSqTWmuxIsnvw2/qoOvsuqA+001BcxSwZ4N0wA5Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768049634; c=relaxed/simple;
	bh=SFZ2FwuCXSqu2GreuIsSPFeq5BtkZiBSowfpFfCNRqk=;
	h=To:Subject:From:Message-Id:Date; b=GqdgBmYMfC01S8gDbyEeWx6srbOT/p5qsSPJAWPx4JmNkBxTMZDHbbxKvqX+q5jrc4dpLvG3ngQ8Th+XknbbWQFcqbMc9ciXfhRWhlGsD2sS6CuRZDaDnB9vmdeLYrsFzleSYVsNpZEyCYASdA5yDyofTJPYwqtu1lRLGJNTxm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVm5OuDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVm5OuDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6130C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768049633;
	bh=SFZ2FwuCXSqu2GreuIsSPFeq5BtkZiBSowfpFfCNRqk=;
	h=To:Subject:From:Date:From;
	b=jVm5OuDYY5kgu9csB9OdxCgYGjfu4BSAt9Dv/yqmoFT1OHHLk7q+vsJ5aSyFIYs8j
	 VUQb6WnOearESl1/uleCcJPgaBUi5wEEUDO/iKNpIzPUwRZDxNXTzwTeVPMQ1X/Zin
	 KJ9AgKVcihGxJ2z+zsPy8d4fjF3uOEbndPRQbjwsfLRAMQEks3J8s4wcTI2GFm2IaN
	 7XzSSj462EacgXgABqdqbxG8RMthwpA7Ha3VIWXFXYdvxUUz+ulXxW3SvG1t0PMp47
	 uNmMB53bayD6XNQiu7r64GPB+TF8DLOKmMyLGGKHlAtsv6fWRXO+lu1AAERoReprnh
	 zuLuKB3igCBLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92616D277E2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804963357.1767.2579086351129732983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83745a24df44c3c52319811a846d1d2334dbb7dbaa642b1e915f671664fa9f6
Date: Sat, 10 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768049633
