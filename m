Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B123D7C2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789176034; cv=none; b=E0cgOAMYKUoElkoeaEdLm6jwI4M4pGzezUYOUCmwJecOWrGemFsYjiHQlfdC/BD2oPaJizrVuXGGEyOPpW9o8aHvUNMypWo+JCU3IAMPiU3/XpU0F+U9ah1psni0WG1m4e4mbKjt7RzcPwSSCQCaXgW/1DhJ9+qovGkctdM2WcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789176034; c=relaxed/simple;
	bh=OCjifu9PavOCyNTN4GBLwxCHp+Stoze/qBiKtItYIeg=;
	h=To:Subject:From:Message-Id:Date; b=VHiFH7hiwX9iQg68VossxmthQTXDBML5xsOlzVhEuTna5cyXuDSdzqvYVFQuEhhPOCVTYZ7Rb7Q0tmU0BM2VJLL7mfeByqdzS/VLJ0+Em9+rN8Ifs3KfQEOUrSLFiOzxlxHA0T9awSapA8kOgqi5EG64/bMnplM3Ov9fSRM1ywU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRg5XB7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRg5XB7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC079C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789176033;
	bh=OCjifu9PavOCyNTN4GBLwxCHp+Stoze/qBiKtItYIeg=;
	h=To:Subject:From:Date:From;
	b=MRg5XB7KtoHADP0YqtaaLAvpsAX0/YrzBNOKxNyNy7OSoZ8x6To5C0FpslYiqFGkL
	 01+pwA+nRHvy7UJKE0D5axsBkYLH4zT1vbWr8QOh2VeqUBMd8yIjGNNo0xHO9Z6VYy
	 g68zfaQSdjJAx3AsB73+75+7EaJXyTyezmqt+qx/ly9FZwneiP4tSAphChf/hkydjK
	 0+EKd6wxpmaAuhTYfphSCwfX1YlkD6E4IIg7xaZ2gmtD9SXiJCjYXVGPezRzGlVf8H
	 7CsWrCTNU1idCH5N/tN+RBsuckrmbP4M/RdU+cNh6P9qnFGPjlyp3CK99VTc28uBdt
	 qOUlKKduHLatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B901BC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917603371.29293.14825562770334383483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e7454599e63a8c59d61dc0e8e38bc7e48280d3ae2f05066775ff696ab7d291
Date: Sat, 12 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789176033
