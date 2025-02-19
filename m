Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412392586FC
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740005934; cv=none; b=uOlvxoiFca17eSomgzYjRK9gL+FJ+vgq4b2adbm3VslJY07MRgTjnmFAK88WxgcgZdwf0k2K+9UgxFtgJPKG3qHB8d6OSZP4Lxdv2RFOkt0hsmbtUVH6hqyURZKtB4yyFL6IHnBLBYnAP3FkOt0GPICya9Yxfj+k7tQXRmmmPfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740005934; c=relaxed/simple;
	bh=smT6WMXTiVCIVSc4UQuIHBRwaOwi0L7ItIyLQjsU9ZA=;
	h=To:Subject:From:Message-Id:Date; b=oZdfMERo41v9apiziaJSqiqmCZ0x7eLonzOsHyLKFm52ddQl2xDZZlE95zRfn9c0RVvc9xyorKD90UCySy7qMLJc4emk7/WQGXm67TdSvrS35qbW/R7o6d9sgc9JDS7QaZj/E9FgRz1d3m1H9emQLeRBR72MrhPZLlZBIqVjk7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/4QTYb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/4QTYb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B1C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740005933;
	bh=smT6WMXTiVCIVSc4UQuIHBRwaOwi0L7ItIyLQjsU9ZA=;
	h=To:Subject:From:Date:From;
	b=g/4QTYb8WyRGEZwKZBfN6kLiUI4WLyNH2817XxnvvETOMzNwk1ub1w7bqEdH/fKJ0
	 Dx9UUsC51BtpWE8640oXNAndi/UmsBsd8b5mRunfxAMiqpHv++TEDqOacoDgSSXfuV
	 6vhsoTE0unCxW1GI/hJoW8pCYj9ZdxReI5Cy+M/LLiwhwbv5rjfUz/rktFD5tLvoYb
	 f6tzafppbDdfEZmPUUStM7zlyHk37AyPqaRbG93ffVXLlExZcL86dxTxrgf+JXh53d
	 5rWdCxA5E5SCZji8CMJMuufqP37lboI9daJGrk9B1i/MTh0Efw8ysYWNhXc6s1ZMG0
	 WQyld4dXpahNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91104C021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000593357.32316.10092455980627277317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966a1d5ba21918909224fba3cd041ded27da2ed8678381a3c23584e1f2a70f64
Date: Wed, 19 Feb 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740005933
