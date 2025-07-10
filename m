Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698B6A29
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752106194; cv=none; b=akVK5BRdavtDj6rzGKcG3aaH20Hk+sjAzlfUTRtVfAEkSKZ9s5rjhzJSJ3q20dE2tTowp+ceheMoab8m2tkqnkDpHlJrMK153fPMUEJw9znK5GmMTDDU2JXHxSa1tf/kMpWB4ejiVcjcCw/llPdd0BfQevyZ3j/8OrGXOLXVsnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752106194; c=relaxed/simple;
	bh=pWROOHfnKho+halL1af8gXYcM3tIwgUA0mvhT1eJSMU=;
	h=To:Subject:From:Message-Id:Date; b=PpzuFF6Jt0F5IGF+4QLVYGuc71SWTcRfbVdi/K904s4/To8WK4NuHqo6EJjKKAdzRVBpZI9MkJWbCsYljSi/sBYhdhSWP0Wuo2+71e75m6Z3tHy2No1ZjDm7nE/nBj9kHKNZ3ki0IZPjNDm+hdefVDcqhwACpaKsmVVhiNpNbgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgJWr/uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgJWr/uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E0C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752106193;
	bh=pWROOHfnKho+halL1af8gXYcM3tIwgUA0mvhT1eJSMU=;
	h=To:Subject:From:Date:From;
	b=AgJWr/uw3y7SdPNvbl8MsNfTYPGLl5CrP3LD/fT+BeL+DD2ZjT7m+LvYOty8ZvZ22
	 dTL4+cLCDyi35AJ5IUG3WcNLIECnJsfn2KCb7olml9IpuIlY5vQgTZ/kOD4H2OanXC
	 u3h+s3F3goiNdkKj+jXTb44V5MYPSiBoYRt13tZodQagMTGjJVT1BmRQGzyRP+4DSn
	 m5bDspgAW0YNC9le/p7ssaw3kET4+tw9l2fE84Ir8tmuCZtBSHNnNw2QL9A7qSiZnK
	 hUTdxV8u7wNkGjA8YAxPYF/aJdvnd2Z9UqQyYH9pBOGn+UXQA1U1OD5sjZqb2AQg9h
	 6KSG1Zv7oB9DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F01C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210619357.17128.5362501306549500528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db864530d8ffac0065918ba2c0ffe899d00e46c396041592cb6d6d09147b37f
Date: Thu, 10 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752106193
