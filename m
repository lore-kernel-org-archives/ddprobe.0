Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261F02264A3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750114194; cv=none; b=HugDadSH2o698FJLM2gH4X1jsszNJ1Wxuv+RzhuUn9/0G8PIV50kXMrkodLIHL8WVMfVA5GzuL8RzXn6LB9UBagH2V+/K3/b/yyFeUYb7oeNqnQIv/ns7gtExjwEOv6Is5cwKnpLYISR8edVN3ZqzbCiMz8wh6rR7kYpG4G1afI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750114194; c=relaxed/simple;
	bh=cCz/t4DiPE6AtIlz3S0Fyh+X5ih31L1SpeWQL/sXGIQ=;
	h=To:Subject:From:Message-Id:Date; b=eq9JyJupMVJdNAoKbP9l6I/ZcFtk2ryGutcTdysfm1BW5ZIevvpeDVUH1tu+JdD6pK8P7JOt5Fx6VKNEpFkCc6O+b8TxoMrZfHKy0qSZORmQ7aGiNJYH17V/bPUHl76MoJ/MwNpkkDLL9clEBk8YyMXhlTwCMBXHbfDbNeKBlyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkm3bUl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkm3bUl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D97C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750114193;
	bh=cCz/t4DiPE6AtIlz3S0Fyh+X5ih31L1SpeWQL/sXGIQ=;
	h=To:Subject:From:Date:From;
	b=jkm3bUl+Nr94iTNsntgFwzsDKFuGXW4Oruog0r11NL69+JWS31oURGnQxGmpPvUAP
	 EX9XFuO8jbxf0fzcRhs35eyDyWYBi81pxhbB9qJG7PHpE3iHs0fQbjEUw8gC5qtVOh
	 KPWJ0IFhc4Q5H1VKtZRxk8vfvPsz8V0R7oDnCWdMuV16HgLoC6O+0v/FMF3Nkd91AX
	 5PsW3/oOa4XTM1vMcX03Xq4bQrnybJ9m4CQd5flCQVRe6IJm0zf+W9So3GDmxlfLVz
	 zdIMXtn0Yf2YUj5B6IvT9vYJ/SNkZpQAKXKVFQr0n/tXthKQ2P2O86IomcPU9XIQIf
	 0w2TaOKqg0hVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F1C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011419359.11868.7521859323432748192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc8b879f7aa2776fe1f189c556ba767bc922b8b7ae85d5c204a11d8470646fb
Date: Mon, 16 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750114193
