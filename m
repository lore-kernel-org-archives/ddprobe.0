Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476AF31B814
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766759034; cv=none; b=IH8kPGmmfrsd0CfyW4xeW9lm+sKfDjzMz/1hyttfWCdmqIFSLDmnXPeXkdvbuoL7CCCKBRUnt+0bsrI2QpiBve85jB1RM6nXAc/zY5E69nD99XwnWNXrX8A0zrn8di6TT+cKRnU9pHMXPze0QnVbXXXc1XTk8icmbbn4bB8in34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766759034; c=relaxed/simple;
	bh=Ewgkuzlbs3/XY27wKzB42JjTEuXzRAqjK2rbhJnyGKM=;
	h=To:Subject:From:Message-Id:Date; b=HEDfq3uc5BPUNepQmWCGabs/KJl00e/JHnGBd0tmjM158Ty1DmtA50RHtCL+a2X/kZXO6XPsfsU9DitkTef5vULf5PMLKKrjSeS5aFynwgQawHElH+WPWCgCB0l5YRVf/9dAQi+roa0+Osebnl2gSisFHCbGo3heLFD5whaiCik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws4kBAN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws4kBAN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766759033;
	bh=Ewgkuzlbs3/XY27wKzB42JjTEuXzRAqjK2rbhJnyGKM=;
	h=To:Subject:From:Date:From;
	b=Ws4kBAN4LI4e7u4PKQOUNtaQXQXFT3R+dKrd8M/8gEHwG1Yl2Qb19qnPPbv2h+Zpu
	 t8li39K+eCVzerXYl4U6j5v7BLBDgXLPZxTBu8/i/4khBj2nK8iBWHH4Zt09ViqE4K
	 jU+rrDD3TWCIHf4hSNQ56g7CpZW+OFCEvXYmUHKa6BUVjbRiSOdlAA4ZhYU4UvuGs6
	 gXk7fAujunlz2bbNbZd/kiOpE3OK4W0NKc8ZBA53C8dy43TGXimZOLT7gg92h3ntt9
	 1CBVGQiFq6A3+bDsgRxMcjNuvVaLk1nLj+3wKUYkdy17acIQR+aeuEIfB0GPqbK5Pg
	 pLemSLt8EFM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B0E8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675903359.26240.15289541807822772689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ccf054ddbe5614e47b2a0b16a35644d915f929df414a9a15133a84a2f31732
Date: Fri, 26 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766759033
