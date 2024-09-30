Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47019341F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727709954; cv=none; b=Rsk5T8KpSftZiFPyuPoLlVxbWNjk4JQYddifkbfjS39GZvp4nf5bzesBZ4uHKCKE/WCrKw6g4ZLUbRwUnhpTyIvTDgyqwjw1hES5V8YYDaHNpspb1FFH9FSM8q/GFru890KNSSyV7uYkZ0iXKImVQ8YTGSIYb/Gw0TllGOfzrkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727709954; c=relaxed/simple;
	bh=4MI9yn4TocpiWr3ewjzmI69hSS5toyN8d5EAUDS43Nc=;
	h=To:Subject:From:Message-Id:Date; b=I0SwzFL+WzDIv/rMQLB+2C0ubs+N1hYw9PNXLS4N3Kl/IzH+1ZX87wZXdWQh72va6IyGUZLVreGlb7vpImmvnvqMt0tL2gb1X96T6S9zoBFAZUFZiJJBFTZRjHDQ5xSVV4PhlsghHA1+siXC/JMqGVJ7Y6yN+0R5nxcpY7G1Lhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1D8uJmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1D8uJmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAD9C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727709953;
	bh=4MI9yn4TocpiWr3ewjzmI69hSS5toyN8d5EAUDS43Nc=;
	h=To:Subject:From:Date:From;
	b=G1D8uJmLlVmMkFlrC5m+f9e7GJGibIEW/k25NFLrzhjmLFikVPVONvhEnSc3Hpoem
	 ovV2olWnz1qXyPs6mKxW9xf4FTtsoR/0oaJwiPLkyWCO2CAOCfVfDp7s/0m4jg3p/n
	 VoBXDaGnlze2nW6P7W6Ny3zo3AwD+II8JpyLZoOYMUztT0DmOai/1uk3+bebCg+GpP
	 fXIwGFJogidW0OjuSHvw8g1DPOggjhj8dj84IktK9Eg5Pju3QUdE6AdFex/AKkhY1I
	 sY69CXUaY2S/FcBmrCs+OSlU/MNfN94Tk62Re6bu8jQG1qzdd/oBCUrexid8+BNvIx
	 gwHh9tNWTv3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BBBCE835C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770995361.3539.15404323464312481447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85918f1714143f948ace229bdf73f9cf5b0a0146e5b66aba0a527e2961a0447
Date: Mon, 30 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727709953
