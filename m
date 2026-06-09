Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05B331EBF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781027734; cv=none; b=Fh3sLMxfwzXEDd7OiRHp/17G77ITcwWOA3W9HfLoTDGKbybcXf1r9+TC3c5x2B1DHEdCPQxtT/2dw22JL5zNJZYBnnK7JRXEqNYCAEfMiuosGobQtXLqNFnPcedTlRonnXEGfLL8N4tySb1kzGpM7VUC34l8zfsu5txoz9otfjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781027734; c=relaxed/simple;
	bh=wtiXhLIS7pxQPYXL6Z0pJwkmEt5AmyHupV5GuscMdls=;
	h=To:Subject:From:Message-Id:Date; b=c3Esl8gYuZhQmIZM+8K6m5+jdoeFvBsM93jUVqyCNNu7aSjO2FwePHzorrVFUQ6I6bgLf2nCZsgvjiiO3V2NGLObs2ocalr4yHJa31l0E3OHtxIF+g4d9FbCafLslhqOjmK5Ba7kM8hO5B2UuGCOdNBWR8h9bkt5xI3cVBYW314=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH2C5zdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH2C5zdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9CFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781027733;
	bh=wtiXhLIS7pxQPYXL6Z0pJwkmEt5AmyHupV5GuscMdls=;
	h=To:Subject:From:Date:From;
	b=BH2C5zdvSzznY+XyMZcqz9Gmf8QLH70fGbDjEcUz8Ol84L4p1pjDfVmVVCBUs+dAt
	 N6BFh2V2DGKJc40sX4F7isQO9ifGhA+zYIp8r3mEt8EMY5Zj2firBK0up1V23dqy6k
	 la9BI+07NsX0Yx53FPfV1x/XSJyt+o0eCam6n5zUoAJdOgSdalEaShf3ca1Np078sb
	 S5eO0/xzA78iw5xUUMxSNoiG/mLNt+fWig6laCxCewsUziGLmRs7jFLzfA9R1FMOCf
	 uKEfMBcBOBO4Ap+q+pf8F25fUnJDDE4G+wobRcCUPCH+KaWV0/st7UQT1XXG0gqEWr
	 wOEEj5BztDY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ABACD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102773371.22344.8908348131985336676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f8b9797571e4e3b02cd883f85dad3884165aa8735b6e1d8369e477497fbafa
Date: Tue, 09 Jun 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781027733
