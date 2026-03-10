Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FBF2D7DD4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773155094; cv=none; b=AAthvBr+RkOIz7OzDHYMAMH4oLzsqmuHzAUgy2pAjpQmXiAdDcWqsN+Dtgfvzxstf7GgkLYkNfpXABeqosFsq+HVBJxF2KRAUUBwnJkhKP0ZEaqH4zMr/YBA4QnU9qasOycDwgifKKeHLBgHvDS11Ycnx7pdygEbu4DR+qfrxVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773155094; c=relaxed/simple;
	bh=NgsIzOqH+Xb84GuH6IytIHjo1fucPzTQUdaAUraEmIY=;
	h=To:Subject:From:Message-Id:Date; b=ucsKXLYFEGFyN3+cBGO3cQuJ09LVBmq4SXI05acNcR7FmI2WUwpg/j0P7CHNI8EGG0ZHSekxDpkPAuHgGN9bT+QCafZRFMIRmwWguGrxn6gqlKdJlK0wSoQPS98eXYRgSeMKWQysnD8cqQikSU7XWrO65N3siEvUsQqR1rnSMFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBJBmadT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBJBmadT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0369C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773155093;
	bh=NgsIzOqH+Xb84GuH6IytIHjo1fucPzTQUdaAUraEmIY=;
	h=To:Subject:From:Date:From;
	b=eBJBmadTIFxiV7tDZoW7Euj7tU4dkGHGiei3nLQmVJlJbWw16woFiyzv7G9YAmc+9
	 P5nhsOxJKmtygF+Ap0x3eX4l6/dNNGA4sTSkGpJs4skt8OgYIlgJGdQaIHKMBaVXH/
	 tuXZ0fOv7eyIGXZm4YFxa80IdMes+8t2MdJqlonaZzkL5FdOwEEHxCOX5V8nVwBUgb
	 qdRd+FAv5h7EmroP/ZKfaCv3V8xTFSyg/cjWlGZEYOfXIARf7RaWnG8pNACbtaZZcg
	 5gMlL//YAQy4QrkYYo3w71tRqcivAOBYrSKDfAQE7Q6JorNxJ8brrW08WVyhZXawen
	 MhhUH8D8Oj1Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CFEB1060
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315509358.832.8465579816565749254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f57dc1f816b01f3ac55366f17afcf8df29d5e8ca39fc4706c22a503f09c543e
Date: Tue, 10 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773155093
