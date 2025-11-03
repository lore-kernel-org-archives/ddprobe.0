Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B71F145355
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762148994; cv=none; b=aA3TjeCXXsIU/L4zUs+oSHVvbqmAnYGWuyvnrZ0FrpBKJYy/n/cbgnIJIKa9sspreIBJ8KY0ElPD5HIS0mQVe20wPeWwgCYNeAw3B8phIPAW5bHWBoN+Fj1E91Fm4l9A8YyGJvTrUO+0B9gA53kEGCR8XguWGfF92YLREhbt7GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762148994; c=relaxed/simple;
	bh=YWTiLLHxkC7i/SQ7mBLraRKz5uNypoZglzngyTR14nY=;
	h=To:Subject:From:Message-Id:Date; b=JhX35bTXNKvXo/TLhgYi9EXERdsOc1laDIdYLDHB4+OB1BWrnPb7ZmGHYa8UfUURqTn3sns0kvfovb+F13dL1ZzUXmGqo3d3kkX4ehuC0G99L1Ng1tETGdob/jK8wsLIbXBpRypDtc5lMgIhL4xYWZsWkWT0Ttidx0Zd11UJXRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/1XjGyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/1XjGyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762148993;
	bh=YWTiLLHxkC7i/SQ7mBLraRKz5uNypoZglzngyTR14nY=;
	h=To:Subject:From:Date:From;
	b=J/1XjGyJE2TXW/qp6OvzJKnOQeHVWSaGhzHc2OoKvlx9CYZ/VVh1/BDMoM9+kTrje
	 +iSaNd7jFvsdciV7Oes+GidEpm1w4zR8xHqnA5Cd2E71ldeMIag/YQqTOQYeaWNKe/
	 tZy/Zt1QDvZBtPb3dgUlyLz8Vd/o1FR9JXLEOkO+IbskuoInVW7J3o/fx77Cho7or8
	 Ka3jn4d+8D7TANtJ+FWeImy9mgLbZZ2wnzVL/2+mShSgyBEaTXE7F1hWFlx8DDM4bx
	 En9a9Np/ESZ3kAj1YqyNW53HSIlHfRpz1DGgqNUJu5OMclRYz6kycvg7i4rjkT9NMi
	 pRAZzNYSyS9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F80CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214899358.2428.14603624854871881385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376599e0383b47a4904e573d64794aee8cbea09c1cfde890d19d896ccae9dade
Date: Mon, 03 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762148993
