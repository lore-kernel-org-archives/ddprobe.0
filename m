Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3683713E03A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736714154; cv=none; b=tUXSqPZ48/++XlJ7RBrBJjy88taKEXA9BMK/sq/4gWtxP6yDDwUZLAGuT6zyrGCHjzD6D/gfHrbL7ZXqC384DWh9veNJtVSonNf0U7BNo4w3YxVGvCJqi9R/kkJz5yMa02x2SZbw8YUW7QLqeW6rEJE3f/7XJcpI1JdF2m94A80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736714154; c=relaxed/simple;
	bh=uiskNnBeblcFuZV44e1++DycrPCmDGBxFPp6ZNDjg3k=;
	h=To:Subject:From:Message-Id:Date; b=DRdyG1kH3928/hj/pHf0pFVjF8PthCiWAv9aJmtJ05EgFzaDUwCTyjDQ1D9LJp6gEuUeB5dMGlZYCT2cCNahhwptJOaufgudH3ssmqkEzvtOBQwYCbnsVPqMzn1t7naXWEYqi+FSfffOCfh32LqyaRAJxZLx9HB5o8QGDUtG+RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbTL1nyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbTL1nyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22DBC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736714153;
	bh=uiskNnBeblcFuZV44e1++DycrPCmDGBxFPp6ZNDjg3k=;
	h=To:Subject:From:Date:From;
	b=mbTL1nyrPzmbqLM7MT5uYoeT1FhRbfBcPXroP5TcaK2DfmbyGvKXN9IKkXw8CBppf
	 5WeiE1ON9v82e9mdve6/k/82Xsnt957+2dOypijIKSgADixBKe/MmtQu26yG02MF3D
	 luYE2t9/YcPoKTSYeebMiStFlPad5WtaSW3ixjAKPNXlSkBdsrhoCwtybFnWlvwjyy
	 9bb/PRbApEHaEotGy7SoLSJbPjr+Y88TYUiD8euCzDRQ9RzVhEWu0wdstVPgESpQZQ
	 5pCRYQiMd+Tp72zzNCfTKK05jTq4VKrl7D9SifTZniLLZNHdk1un00Dt7A1kcfGqCP
	 /wrGU8tDJ8NdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF23E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671415361.10818.3136622727943709010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26cf0ed36b570a30acd33ca8c43958cded8e664378058293fd399a4592a1912
Date: Sun, 12 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736714153
