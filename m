Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3FE21146C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771245294; cv=none; b=QG3NQa7UYVAPvWdjrwTR784WW8DFQMeW/X4tYnTJCOuBxTlBRknckPKkMJKJu3W5Yvm3JPR1MhwqkagDNNmel6buWgNQ9fj/shsqgNlDhpxQT8EUIbkNLm8EGZa6XMjrmU2SF0IzlB383Bh+cF0D2nTalOFdaTmqaJAJcXVKfcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771245294; c=relaxed/simple;
	bh=I+O4McpgxC1rxIWpDYnPlDnSM6hM90USg/u0qmShJBs=;
	h=To:Subject:From:Message-Id:Date; b=Ns/d1FE3YQS+MO1Ney9EsJ54wcpxJT2ZkBoZ+4CCfbNVDSulkx8sXJGZ+G2LR3Bc2b5FuLo0rl9gelgHoaL/2LO4n4COBgpmX61e0Bk6x5RFHPTCrlyXQCwXcq+j8ylV0hgV8gLCaurSwZkj+MQGR5FA77fYpAquAnjt4nRW5DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVBpceVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVBpceVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5766C19423
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771245293;
	bh=I+O4McpgxC1rxIWpDYnPlDnSM6hM90USg/u0qmShJBs=;
	h=To:Subject:From:Date:From;
	b=kVBpceVnUttwRMqY/QNwNxLAQ/k+YtHHe34+9Xi2gos+iC/LiX0b60YIRKJOf3bnV
	 pTaxos5/uvhPr9zzuWYW5Q5wjY7Bmp2KE8ZmsTQPCInfyN137R05An/MKuj5qZZG+d
	 GD4m4r4Dp9IZLDZU8rVU2gXSFVSxhAU7CXxiBrFTiQE3DBF7oYHzapKVRpB2rageS8
	 0GMgbcq8Xf/z7LeH8gDopRPUQG9s0EAPb7jWhXy0TBtF86d/X9DKZk90cWl4xl5IsV
	 Zm2rDx/JrE/itI9PtjohU0E6rBYrh2rBRVzXWJIuAPrHHyb/USheMKb0mnNm8j7gc+
	 HUK+vLr+C884g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A131DE7BDB6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124529360.7316.7090516576342886260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1913dbaffc4a75ced166df39de3a01bbe08335beecf9a5c3af50b8ab7c2093
Date: Mon, 16 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771245293
