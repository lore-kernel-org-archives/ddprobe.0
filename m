Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B9285C8B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761080994; cv=none; b=VJyLI0Hyys/nq0kIpdAN8RQNf8UyC5WKFdaPJMxu5e/jsX6qwf5zcX3us/bsOZJSiLCDNRUfcJuuVbSe6PYbYQeUI5vztReawcI9q167UsyCmaYG7tw1++nryhZI7naT6aMWl66kKOyOiTL6HSDv+Enh3vE7HGR/OR4UZVka84Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761080994; c=relaxed/simple;
	bh=axhxHEO6NFwxWX8wF9BwNQYg/s/+764Baz/HyPoRfks=;
	h=To:Subject:From:Message-Id:Date; b=p9KV3ZSwAald20O/h16m9as4B7FEEz+nocNZSb3G6hN5qz61XOSuU4jM6fXoZaoLiFfKT18LzBgohkYnoCXAe+T2bI3gcNvzlwwLyTqtxQlzY2d8Qn6u27df6Rsq850D7goNPgz7hE6pO9dk1ofmlvSzRaqWRxXGCy5FoWVgVeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t95CTPEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t95CTPEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5695C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761080993;
	bh=axhxHEO6NFwxWX8wF9BwNQYg/s/+764Baz/HyPoRfks=;
	h=To:Subject:From:Date:From;
	b=t95CTPElwh/U7fAUi46KkbhM2Ji1PfwK/ydgV8BiZVIwZ6vV2VPslPL9wRX3VWz3g
	 6B/qgtVLoeIZfUR26yaBMQnL5iF+xp0b8me0pkGuc++C/mrPHIhh38hOoPS7q6BDvk
	 Uq3A1e6nfNMT17q1Y/WSZj0bdjGkZFt/ldu3KByyUNRVFfa96keTwnEaMYhZznwPU4
	 80Awq10G36fr9F2VUqIjFD8l0BqQB5ntXDU58gvUhyNDIVc4x3dnDaKHG4n2B+SJ6V
	 cKOh1dRuZs0s49hUX8j1P7C8XrItbq3fe3TF1ct9RJup3JgXD1JygaS0em3yk0st1W
	 bvlWPOGytpR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3FCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108099358.13591.7500016486022771539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec1a8fd940434464fba2b0ea9fb7e45614321309289ba836311765cdbfe4603
Date: Tue, 21 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761080993
