Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DFD1C28E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763081394; cv=none; b=Ea7Ey/RaKCtu7wgEOiWEwRZE+nWM+p5vP8NopKOmZk2xe0JqfC0wdcBV52Gfw0TycsnuhiXrXuErZRAp+Yv3DjHy3r/HsMZP7zJnpafqyjBEXcQ2Sjtm5PW4+LIild3LwYRK2EuqCwmYQ89igMUUmafAdLRq4urIz41paGg7KYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763081394; c=relaxed/simple;
	bh=UNZY3YkpITVYv0pokNQjQ7Xbcmk0U04+eGv7nfT2cnY=;
	h=To:Subject:From:Message-Id:Date; b=OLobaUC3+sYC+HSvTWqoVf6Gz/JaCQmmUGZUVzVjyVpqnd/BQmEOaJpVmo1PdeGn/7nvoMBQiGAGluFKQsnQhU4KoGm5n471YNg1Le/lXtAVIyZU4r1SuvBt/F26g6mRnmnS5HgNXFpGKMFoCP95LwymWc9DROx40wiba/TkzT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/qmtCPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/qmtCPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADEC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763081393;
	bh=UNZY3YkpITVYv0pokNQjQ7Xbcmk0U04+eGv7nfT2cnY=;
	h=To:Subject:From:Date:From;
	b=g/qmtCPnAflCZbfa3Mw4xpJXIaKGaV7tMctRzk+oQKvRCq37Izjx1QWRkcvB0xUVw
	 gyKlKu8x2NEuGR+MbfGl5CcRH4pdrBYyykDPlehzT/t6cADe418vEM8Cq0BVRj8BI7
	 eUxglCTL/wPA7mJW8MwE6rI9ht4ITLwrgh0kin8Dmrr2z9mUb6OzBtPXg/fcwckQJF
	 eBOR3D9Vs3TgagYMcWRos+YrWO7XAYxVshweYOOrtWh9cGpu9wXiknp8ltyDOp0K9W
	 CqZCeq3Sz8509ZttSc4ARiXzO4GGcKBqDq1hVQJjZpuHHMkqSXGMwb/u8JCHXC1dFw
	 0QEePPydO90Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F4CD98F7
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308139358.9442.11775723237371193700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd35e01b977de48b3a6b76f1ac002695890079801e294aceaedf9045dffb072
Date: Fri, 14 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763081393
