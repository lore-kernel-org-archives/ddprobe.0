Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338061C5489
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753423794; cv=none; b=sJc4Sj64HB3W1BAkqalZm87qUfh9wD/8Xkjm9TDx5fB2thg6KdlBgZGpsXzb5IS3RnWfogjepVF9XTIrbCLM7+X++ByqR9Jobyr/mwLcf/HkPScBbMHq3+2lEGDPrambnZePIjKGcfOnDOn3v35fpn1eAMS0wwOAW8SZ7QlfD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753423794; c=relaxed/simple;
	bh=6Qx/Oan64TIpM18XzRLSelA7zKCA0uEA2FSfZZfcDzo=;
	h=To:Subject:From:Message-Id:Date; b=GXkFx3OHbv9xRcjPFssi82GSrF1Er3bSa/RhP9c+kbYjlXqmn/TVweE7KxQH2jl43Yi8qBAsJaCuupRaHo6ZU2/Aihv2QDJiWos9JNvBuiLu1tYTBzpWIKQhBGKSPCAZZubKd+x9TqISHrQ3FTtKFkwJnAyroFz6xcawLPCxpok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0V8TZwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0V8TZwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753423793;
	bh=6Qx/Oan64TIpM18XzRLSelA7zKCA0uEA2FSfZZfcDzo=;
	h=To:Subject:From:Date:From;
	b=S0V8TZwEt7F07Q7/32sxvlFHwxIeT+j9pvsfbTpv1a47uDvf/JavcsRVBJ1RxctYd
	 KV0AjfbOx635n7pTS69lowl2dGjG4AjDbt5lshrrF0hnAfcIRme0vJRFBC/LunLP9L
	 znoIHpEedgeZlkJ+b6KfTrP3uGiU9GRqFhXos6g2M8REtWcFeKVMaQf7Rlcva93VJR
	 kkPYqaFvCCDlQ7KIEh0V5q+V2cu9r8sRvOHLsTaD+SToxxLTNEmR3Q9EXJdn5F8tfc
	 dRdepb1S6SX0gcvNxtS+wtX09cQyR1bpWjfbs7BGVpFhuZmbIuW/tHR3ED3EYF793b
	 HXlFmdMGcU5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92804C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342379358.1636.15901328376820160958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8769577a5c86f35fe7cc928e2d9641bc20f35035662da7d56f87b9a628384328
Date: Fri, 25 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753423793
