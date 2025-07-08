Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE939298CCD
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751960393; cv=none; b=oTIhrIrEnaN9pDWk1lsuqMtgdDQcQYuyd0VhHpOHW/wcvyOgYbGfYdJycOY0i8sTX/zsG1AjPDRGb+BSvOu+uT/XDWzpMcAgDcB5XgexLI+47kKDCYiMEaDrUNW7YIh+XpWbdrS9QaRofBRo8l5bxCfAFgfJAj51vsMVUEO+EyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751960393; c=relaxed/simple;
	bh=LrQ0l9RMn/uEYIjy6cNrGhUGitgGj2r5/hW7AXiXcwg=;
	h=To:Subject:From:Message-Id:Date; b=SkwgK7qTdUQP2NRb1+M/bvTF4/kScgAC8oNCAsxxWD6ZEZ8KIgF4bSAeNeBekT2RwIfYgvIQcU3EXGc/tsSU56poBTUCW8jug1+N5Pacoj8T4aFdRcDY+6hD358O/RNXUlAVQdt7ExGNZIbvWGp2+e/eB+16T+Dsl3+m3ycA8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZFmGWXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZFmGWXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E112C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751960393;
	bh=LrQ0l9RMn/uEYIjy6cNrGhUGitgGj2r5/hW7AXiXcwg=;
	h=To:Subject:From:Date:From;
	b=CZFmGWXsf+ckyBJdpBK/qTon+Q5tZ4XzRazTCt3fO0rmVe2piCgrTNcJig5wgsfkf
	 OQqABpcRA6rbgKudeBBlMtRVe8kXIJqw38dm++LZQrnLxFuhZSmaXu3LRq+59kzA/G
	 qOZvRec5v6oar24tKQR1CD+q7jSaKSOO4xBDV39MNSf8PJnzn7udkIBJTWyobaJI8A
	 mxHPt8piMv/CJo88ZuY/Uzlff0wOr9bKLQ7FLh5yco1/Y/dREOMmSbcBa6SMzOtixw
	 t/70Z6Ssags0T1k/gwHsDq3/High47UCuSaPHsOB+mDlDPKzxQgwoYnHze/yjKSGah
	 DpMaZR9fHr7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F257C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196039357.23625.494153166266740459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a7dbe24e6bc13a13ef04350450d02ff179336369aec9566436f7aa9e4f9755
Date: Tue, 08 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751960393
