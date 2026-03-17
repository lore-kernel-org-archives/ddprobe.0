Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0632F378812
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773765294; cv=none; b=DKo100KHQ1fgm5ckPClz2meMM8MH67lvBrA4ZTdIQeNOSwvfeGyrIndOVHQ/QngmaI4jzY55IXMEyzfJ1M5iExVBKMP8GwlYFR9UvMm/srNdnKRuUnlC/hiYXSEJihN/ONgom0wJKRN57z59UBsMcCMjK8+fRDmDK9GpUltgFvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773765294; c=relaxed/simple;
	bh=BICbLVizRyJPGAXAs6OAq8ElV3VLrLacokXvTmofimc=;
	h=To:Subject:From:Message-Id:Date; b=MBEZfk+oJDLtcasz+ylfIgxYTPce1Z97F1LM8M2OfJ7IjIliLRK6uChlYEPmurmip1ka5gqJEPSTtyx+nzTd1DOp6coDWuotrJcVLPvdLuZMEfXGZ1/yZhegjbiFaYTni7mH31hFNtd/JCo0biK171+OtX78uqF7lgG/BnIGAtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdYXOkdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdYXOkdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2141C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773765293;
	bh=BICbLVizRyJPGAXAs6OAq8ElV3VLrLacokXvTmofimc=;
	h=To:Subject:From:Date:From;
	b=KdYXOkdLgxk2nGkFbqZso7IV43sFQJeLgL4gw/czkd35l/hPOYuG+IplQZB4oxh+D
	 Xje/h36xHRR6lbJJGQdTH94wdBNz6AvIlPLx1dH+PxxTdsrljqjULdmHwItPZqP8pI
	 twZpKtFmhOz01s0af2LuiJxE7DtuxLTe6ckYA1TsGnsGXHj4duKJXpqYHs+HMwgupE
	 Tue24aWKtsBtRzx4k5ml1MrsuD6AtJ7O+N5Vk5B/kZQCSwimAVA2xWSMs30HxnIW7r
	 IpOKib3kZv13DETgonZ+LeOFP3ELyME59+K1mUvAw2Uz59d0R8iAgPTgT46rK/kdgE
	 eM0143fqpnWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034EFED9EC
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376529358.3165.16205802871019465177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4b9e2193ab1513d9e94d72ad086e064759ff19485da14f304449d60d84709b
Date: Tue, 17 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773765293
