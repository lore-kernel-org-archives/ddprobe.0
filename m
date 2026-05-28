Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DB3426691
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779982954; cv=none; b=p9RzRCQ453o83AnREk2Yb+7Ed3rGQLPLjY3cdmCaSXtD/Vx8ZQK397nVYT3HJAngJetfpHB3AM3S7CYdwF3TfVFv1N6rXWELSER0g1FSoxGdV48NGwdxpisc3CpBelFXmnebiiAAXc3caNM1sFt+6DaXUTRt1REL7FmEl/+xQD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779982954; c=relaxed/simple;
	bh=B+qtTHelBGde3HHocQAmlBAK8bbb4uU2uGfVZ2fXD7o=;
	h=To:Subject:From:Message-Id:Date; b=k3jNFCW8kqo5HfDRONHlQGPyH00NQ2iNBovBcqEzNJwJetzvzY2rsyUqNoNMoRlZupupRPBxYixSKyr2KngQRO2dqIBuuEgwavMuMip2aUR6GYQUm9Jr2ySOEhFyTx/vgw+lJGIV6E+XNMU2SdicjKJD2sYKqkqZNMtLNJkkcv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQt7g8xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQt7g8xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B05C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779982953;
	bh=B+qtTHelBGde3HHocQAmlBAK8bbb4uU2uGfVZ2fXD7o=;
	h=To:Subject:From:Date:From;
	b=LQt7g8xgo6IFAEa598U2oUauslvoNmq2pTbiPyzilbFHgxMXKP/HC9w9AfrNtVXE0
	 ZirXL+4TQwBJA5ibnj9uF8rC88d3fi7jJfSTlccDJFKJ32VBCOVKCEPocEeLSOxfRm
	 sWHp+Bwt0JjahDkBkGwqWlMoliAXdFGKGt3BFMZBMyt8LVhcY+c7D4YPBm4h5Eh7re
	 f3IXa0/59LHoIrN8IjF5wqTwtfHBEIfSoPu9YnhTLhsOLNPLuMhzcAoSWM2hvMASBT
	 kW7A0c+8m+Ol+ZBSbdUr+SNTJq79w33MUBW55ULltzFI8mnQGxrpDUatCqGCgZZg1A
	 WmlmYIo0DNsXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08D3CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998295368.9359.16009915941594533884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61106246c7ed3ccb65ce26a97ecd67fe803c88688477360e4501c3a3614417a
Date: Thu, 28 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779982953
