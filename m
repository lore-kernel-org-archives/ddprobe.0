Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA4C8E0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743908394; cv=none; b=KciIwCz4M6dgUJO2LPpJpLmQ46owXaSpxiHWCQ27xWDX+s7tvhbLQU0atqlS/kBtNTxnaamTPka4hWjcMr1ECWfSgHc2GXNiopm7S2Xzdt6eHkM6l0BC+3Tsr59pCMtY3s3DNfC61GCmOBMMfYhdKy9XFOBBxX9YmvypWHU/fGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743908394; c=relaxed/simple;
	bh=F+raZznr7HLsFkvFBPsl6xnslnuBxTXiWOTa9jxgwSM=;
	h=To:Subject:From:Message-Id:Date; b=artZwjfrxLMCohDG0XJ7uRnDP3y6OZjpj9tfaLK3BJ6VI24qwYesayQ6AdeBAUVGau10WaXMlCCCi+PyLznmS8pmDtULpWcYEZ3N0MXoGw1NAAf6PIXVjDLFWN22kJ4YTkummPN6qlL7meuL2baSQmYaScQJLe0iatxoAi2Uch0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQGemc+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQGemc+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9343C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743908393;
	bh=F+raZznr7HLsFkvFBPsl6xnslnuBxTXiWOTa9jxgwSM=;
	h=To:Subject:From:Date:From;
	b=KQGemc+T3bdS8p0u/OpV2ONEIseVQLgwUDhPSZ7vO2EDOfBmZ1CsORwy3iRDyYxGS
	 RpeJSIROcRpccAa3xM2aU9nO02QbkVcIxUeKlAeruTSayP8QxEdI/auwPOU3th/3Ie
	 fbZog8QnANjsltBWmZPxuBbt8dspvg+1jBIYxDH1D/V9HeI3S2sMfX5mG8SAUqjwtm
	 F1xcFFwJ/3wGzZkzkbH8KHbw+hiJuD94yAybwPsXyzvlUk+cctJSFdXG81UqEIBXjI
	 W0Q6luQlkCgsmstnu/gPeG6o9MdGlQ78iyxIoqn5+65UvNtKqNChfaYmsNcQDfvtA4
	 TkOgfqBBV7eMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C89DC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390839361.19806.258179892978740985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f07e84e1d22a78302101946a13e657e70e19f1d8c4bc50e1b82badb276d60b
Date: Sun, 06 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743908393
