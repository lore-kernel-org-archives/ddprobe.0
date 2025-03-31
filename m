Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ADC86347
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743448196; cv=none; b=h0NUhcBTnq077ZN0iBhwfMboM+44PuklYY4QJ4zWpCkWj+OrKL3CSRpJyff6cBH5idKb/hYu6DgyGMUdciwYVxfeFKneXOM2WRYRFFmGuk8dz2OsTVAayNPFCcBly4TmAi0bIsqez793tUCNb+QV/LQ0MPpKmuSEAxmRGUO7dmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743448196; c=relaxed/simple;
	bh=jeRJsypWkpVwucS4WsEpvGIV4jFvy0Nh2P5AoQ71aGE=;
	h=To:Subject:From:Message-Id:Date; b=GDkaADq12wk6aSpiqCump0Aqe1RUgU+FDwbbYfwH6m3jWlwNPU9gmMaoV+La2sG5TF9vOSE8I9jTuXFn7/9p/4lilA9ZM+aiSOawhYCTI6bKzemFH59AE0zvgvxl+HwkOOWGPiWoMaTvNXZE8NGNuVk0y2r8kCQLWOACV3VS4gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+aPGhef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+aPGhef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F19C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743448193;
	bh=jeRJsypWkpVwucS4WsEpvGIV4jFvy0Nh2P5AoQ71aGE=;
	h=To:Subject:From:Date:From;
	b=A+aPGhefcbhUuUP+sQMjf6JfM171g5vWIwoIJS3HsZij8T5XidRIf2g7u64BeO9F0
	 pukCK29EWLiLDXtdsbMfqkiPvshiukwxgltwpF24EXCVzvds3sU/i/mribwGzJkxiN
	 K/AxYohGqvZyIVOJJq3G0FO38ia3aZuSBhxMnXc49zHRQ0rtri3F2Pbmig13B3/PL6
	 aPCqqgYu8ypC+e8cZJfgqk/XI253PyOgaLybtPrcKBW3wpI+v4WiHOhBavzMrW5nE6
	 1XTuXSNL9EAUK9rAZSaimw1iujL0X8/WdAT4OLxQpuoLdjj5mlMMF4NeY0CjMFkrW2
	 i8nlywfonV6XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D7C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344819359.27204.5983670357866169868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7d8ce60171e26f6e9ceefc5142624a41daaa506dc3c6f9af2b2d947050c6ba
Date: Mon, 31 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743448193
