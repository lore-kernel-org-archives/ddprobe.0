Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4CC230BE9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759886994; cv=none; b=ondwJ0ey5rujaBeWdB9nHSMV6u3RvWRgCw7JfB7HuCjeOtr1EBdFwZ4AliXIJXiPBz6rWHfBDEpAnyjqHkvcPB39HIN8LF4udqWLIhE8xPoga0bc2Mkzwsx5A65z2JyvEroTuzUStcfSkj4+htD3GZLRunFUZG48tf3y2ftVX3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759886994; c=relaxed/simple;
	bh=XpQtZUJVH2NhXShmTu9ZmFYsODu39+TPEc4NgB4wQrU=;
	h=To:Subject:From:Message-Id:Date; b=RlzCx0YTU49tXeW/aN+RFiU0lKh73mE8Sy5Yji0FOgp+x8Kn0a6nVmi9ja7ctyvOEdwMgVfaxIjhmK8X2t/9EFo5+PeNOUz+PgliWSTM2ZW/TygwdTkBjKMO1rpb4/+FzGPChT/7Wbohf8LSjZzdh75hQqm3ubZJ3UndSh+ATc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3lMpyL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3lMpyL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759886993;
	bh=XpQtZUJVH2NhXShmTu9ZmFYsODu39+TPEc4NgB4wQrU=;
	h=To:Subject:From:Date:From;
	b=D3lMpyL156eC7dFMLINxzSAQiJfG79vq0NebicZ0cx/XbqecSQgpnpVJHPC/PkTcO
	 eu0/Ooz70JqHhnC2r4o/2SYFun2rxFnp3yGZOBruNFYQ2ufE4RGLRskKXsZEsFz3ya
	 dN1y5HPg8sfPX+lB7/P19GCB4ghPi9QjALrqAMgs5woB1GhoIvbBlr9mxDNKY7F6hW
	 X/yJtJD8PZ4HXOlaLu/hXk6wRXC4zF67Q5Y1vaeRvMcuZdXwi4t4NFfCE6HazcYSCb
	 +v4vzE3XqOEUiMVdZCZyj1q37djeOvdQ0jioxIO8NsVMjA4or4lCTN+MoqpXauH+yu
	 VUqH6qIV5VwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF6CCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988699358.27596.6434685776105912051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d06e8e83b35fdb9d309d2049c064240682ad4d19cc6321649fc18fd0d4a979
Date: Wed, 08 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759886993
