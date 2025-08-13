Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215EA25B1DC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755108596; cv=none; b=kL9MbJ7wbyvlwssGbWihiug9EVl+EFLcX5PtGRSzFUXSKAccwBNBknck4bU9yKS2cyT0tA7zUWLl/G68wHLLcHqf0xxq/MoGNNalIFPSOdkTiPGu8398AAgYpWIchFS785lySENn5epcWumN4P3LVT68mithDUSaZ6MSbi3bwUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755108596; c=relaxed/simple;
	bh=RJQncZ3MH5UkHxO+sUQ11o8r8LAGgkAVYoHGGkQ4OIc=;
	h=To:Subject:From:Message-Id:Date; b=Qe/nNzZ2n/jiToilcich06YSPQdi3WAIsTKEwjO3+uut6UsNpsoV68W1DNvGyPG2xCNSHJG0bYAJRO62wqEcXNC2K1xfMV4lJJXeSL9pxlDEo+Py6X+qgeP/TjGdrRNF9A2lyvacSiJkrJ12Hjo/O6LfotIENSnzUjdNnq5MIbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhjjza7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhjjza7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B4C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755108593;
	bh=RJQncZ3MH5UkHxO+sUQ11o8r8LAGgkAVYoHGGkQ4OIc=;
	h=To:Subject:From:Date:From;
	b=Jhjjza7FT+sO3vigRNAEUmiUBEi3U5RfcFsa0kZMnNhBcamL068bk6lHtYgTvMpLQ
	 z2FEVY/GA5VludhZ1e1+AXBz4zB4b/GhrhAskzN8OTBay6qUWP3yfuiWYaFXYX95Qo
	 2ZjYjZYwIf5JBSRub5+XZUPXOfPF6dcETLxRktp+EB+Jf84tF2xnyKVQRrgh4gp0b1
	 K0tS4zklUzNac0nW9gqQGD0NsBl5BCe4fgmRSyiZfAflGu3tcvBKdrrAxSY3gFFwfz
	 1Qpg9ov5nxvXTxb9I4pLjdSCWj3RqW1Apad5SAufQk69xwkfau+kb+MhtCj8akvZuc
	 QnwYfd1pgS0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F062C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510859357.1982.2872861971194195082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bee593b83ebdd8c8c64ca85642480c56f422ed50db232ca4fb117e7777054e
Date: Wed, 13 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755108593
