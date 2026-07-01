Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D9234D385
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782869914; cv=none; b=cfuUENyhbE4hhOjyN1YZfebYJ9C1E8tyw+Qgu4YUsOpoQE8b53AinnxG+IA6HhF5affw09kuYsbiU+vuGIREaEinC2IUvBpgAQUSKIa7jqXij2pj5ad7W1ZfijWu4WvFgf0imRCeDlDgaywfjP6FLiORwfR6s+ytJSyFPhY1fcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782869914; c=relaxed/simple;
	bh=FCL0jTrA5aZ1zl7hDFyQ+vqy0Yb0krvK7f191phchpM=;
	h=To:Subject:From:Message-Id:Date; b=ICfD8sI4TQoK0GF314RrWNwZWQKaVhYFkuu06K7td2VsyJgO1QCxEeASKq9g/yrgxC74sl0N9Y/r5FYspsxscP9L7zOgOqY4wqNdG7Jr41yxx7VnMVzePHj/sgk5oveMLb4JpHoGaxWD0Phjf/XzvQIF/J8L4X7MDwBoMOFONJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsxdXIOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsxdXIOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11C0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782869913;
	bh=FCL0jTrA5aZ1zl7hDFyQ+vqy0Yb0krvK7f191phchpM=;
	h=To:Subject:From:Date:From;
	b=WsxdXIOEn3Xq/0SCupJXbGtY74SQnSLm1TyxFmfPqV4fTQ/Lyr/YRC2wmudK2kRdR
	 F462RccoUoHsuy8pKmKdfms+G76ogeQ0ZhRmv0LDov8kbDtaqHVJxKMWLuFdWD7NcW
	 1HE/tjY2eLAVZo9N+OW/a+Y9WBHFUeWJJF+dppLNS7Jy+BVdGTUA4NeU62dRRsAmmx
	 EGFP7+2adosjOvxOugBESlyUgzB75cCOISVaAFypBU7yZC+ZcFiBMd8htPJQloBHt3
	 imv95mNaXHvaHGmQkZ3yN/U0kiAo4/7c8Xip9o5S6twPoczPdUTpt9A/GRYZ3Ed2bm
	 IHC8jAQT3GZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB0C43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286991368.1836.7629351930693036433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612bfeb43bd3b5527689ab31a77812d84d670595f892e6f72f48322350a3c1ce
Date: Wed, 01 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782869913
