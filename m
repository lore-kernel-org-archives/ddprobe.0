Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9C176ADE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765413774; cv=none; b=dZDaF7J3DcvViO91jqWqZcOuutkQmfz0sAl/Px5QUCh87gJWRzvNSLV5zFt9dCzvfvMPVq3yfWIkYCWzFaPaIRJtzK38F2LVx5bU8bVDTV/YYWJKFW0lVJXsLPapLMKMmdKINb29QEdQEnHXYMUC9To+domnDLCQczs1aWUhBDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765413774; c=relaxed/simple;
	bh=O6Oq3HiLU0rVTl9Hip+T7EIU8w147ha/9L1tpm3iGxA=;
	h=To:Subject:From:Message-Id:Date; b=EZ/gOw1FlzUsHGenvGU9+28pxuInSnFw5qoFiL0ixlklxrCyBg1eqBolxLFu21/LneToPE70A4wj4dooxB9YOC90mMMM/oTEj8QvruLxk42WKn42f7ukY4U0ntyPzLNDrOI7GlyWiqjIP2Gfom74RdXEfJScuHGwlss6g8Jc13o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNYJkRtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNYJkRtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EDFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765413773;
	bh=O6Oq3HiLU0rVTl9Hip+T7EIU8w147ha/9L1tpm3iGxA=;
	h=To:Subject:From:Date:From;
	b=PNYJkRtuf0pSvHxjY1BQftLqk+gV4EKcIC9uc0i2SgssJ334qGk/Bfs5iy6Ne1Ngv
	 rz75VLNgCalnVtlrnr4wKMkM2T5WXeFKPnW0mC1wrGyBCNcwH1tkqULAnTCf8FNX6b
	 NjqURVya92YskdRVpj1AeA2Jh5LtOQ0H1If60vml2Z5bMNql7PMP9mVsxH7XafxTYk
	 88zbtvX5OuwbFl/UpXkCWrAmFBUHRJCYg2Wd4fqtDgxklPOKIp9/0kkdv6BzwBZw23
	 viGvRLxcPCulKcxOfIrOmHQvNH1CCwW5PCSrErREQt+yftPrMeAXKbGz8Aq6LQblzO
	 ddbTDLXh2DxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBE2D3E784
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541377360.9444.10969170493830388214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10df4fd0ddad3039b066c463faed92dcd3186e7077e3db51dd09d88d35363baa
Date: Thu, 11 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765413773
