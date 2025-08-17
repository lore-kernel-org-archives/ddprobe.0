Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1896C224234
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755423594; cv=none; b=F5edgeoeGS8/+odxXuhNTZPPyKkoAE1RqqOkZPAJqxqaKB9T7TIPTcOJftgHlWOMbs4ZWdRYYcDV2jZlE3XiCW4jiYrXSITEurqTDr+rDY+w87gMM62IiOQY6CpWXDGdnnhr26e1lDFSsVeMDoE0AGcZ3rWG7sdHvfrpTfzG1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755423594; c=relaxed/simple;
	bh=Cabw1+avPzc2wi3cdiggHCUee5JUhuPuT1yb1mRxzr4=;
	h=To:Subject:From:Message-Id:Date; b=c5mzhMD53PIFoL+cwfPUqb5rAv6eIEdNtsBkjOK48FRoAmD1XJHKQBLeDk1lbn3WLm6uRxOFd6ZrUdyBziRMsLSMD9FVgJC8h+S5UwA3FP9kwhCepLEIckGwzUwx0UzGsYL2j59EyrImSeCarQOl5ZhcrQmkPPSEVzCfBVcQOa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBiA6ZcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBiA6ZcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEBEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755423593;
	bh=Cabw1+avPzc2wi3cdiggHCUee5JUhuPuT1yb1mRxzr4=;
	h=To:Subject:From:Date:From;
	b=TBiA6ZcMjASEmBGMxDLMP8mQa1A21Y7u1U5voyobxr+LZHzQPdlSXmLVeDt6JB2/G
	 Af57FtScvIKqAI8rWJofrTCsDXJlgndgevi7OEM5QSyKRxxavQuODt1JJanC5H38V1
	 aY+yFRrhwZXM5Qfs2bRmSv4FLJL/1vbCnHBneL2kOCKF8kbmh5jnvLLLROxOmYLsYR
	 zzCkmCA3VfcoLhJNNDDZlfldN0xOfoJBnW3fshfQUs/4Zs9aD6UI6J/nOCyYsDzrV2
	 EokzjuX+ZUHDLjlJzGVX8xbIXKCin6mn0cevm3KhCsy1FLsxUlw/zp5QQ+PeWtSpvR
	 /S/XsVDy8duqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA58CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542359358.2555.10941902078588626817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2eb58fbc1d12e78878b4aa1c3ffb5b9c294f991866e944f255ec297701ce85f
Date: Sun, 17 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755423593
