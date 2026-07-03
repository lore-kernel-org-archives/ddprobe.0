Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368001C5F27
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783040914; cv=none; b=Ap4MUCQ6t2Rva6X+Xob4kmZvfAHDNuRDVM7Vr01nFLP8pDwoXATbSRhNK9DFG5jexuUYUj74C0U6Gn9C/yDzhtaK46bMnMcqMek9UzedNLVej/GYVZqCm5tbcKySkfyR7QM3dZcqBqDCvP/NyEuYrqwzXMCpQVtbuKNEocOlIbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783040914; c=relaxed/simple;
	bh=F13GBjcbeZoZJsTLz4Qdn0eJ3fGS4G5DCCTEz7s6IJw=;
	h=To:Subject:From:Message-Id:Date; b=Mb1MsTmt1zgpdfNbHUzUS9VekuJtx/J1JigFJ1qepbFE+CmN3djbdyzrvFPlZ9tYIXfXVj0YkGuu+e4Aq4NzONJoEEBqHNJ43Jqth/LCzA1REUCbTGYaDzYPLIi33d+jHUCjqCqQDLEZGwcBykg0osQms+x7ikbaRMvmV+dVZs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isBg6Znr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isBg6Znr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD950C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783040913;
	bh=F13GBjcbeZoZJsTLz4Qdn0eJ3fGS4G5DCCTEz7s6IJw=;
	h=To:Subject:From:Date:From;
	b=isBg6Znrz22xfXHq5ckNfvVVGeEO8f/yFwcdxJIKvXe9LruDo9JEUIzwVED/Xk5Gu
	 y0w4jGUhXe00U0GG5raNLJVoOo6F6d1J9l4AZ8VmArOsd2VXBJVr1IQnJcX8YCI6rt
	 biotJKJW2hBQKIOQnNHFkmaeJRjY+xutyxiUe/i6nnwEaPIUycoH8Gy3tJGaxMHEtd
	 0lVu6NdrKZV1iouT9rpwOEIhvNRZ6LVCdnf6w1JlquxNCOPYqPA5KPkr4+manUh5+R
	 x1Bx0yuez4Bpz3xI5cQB+g8wLPsmI7z4qKP/zVkvB+QeVI4Dw0u0dHlXHZZxtxkNgr
	 sDVhABuce/5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304091368.9154.7156283112897473857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd63fd9bd0ec8ba1229c30b72b731e230dc145e9ff5bc0a40779ffe7bbcd4b3
Date: Fri, 03 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783040913
