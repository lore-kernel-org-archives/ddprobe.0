Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A308480
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718660303; cv=none; b=r2TACyHpicJ4F+CjKMGhTSijcPhCgcUbl3i4jm5UKxq4cOcrtjJuBZdCEVKsFZGlT4UqZfQvfmsepCG/r1RpABw57BGmcK9JadrFbw+r4rwaeMr+xmLnYku0J1aJg1hRUXT7luD8oRwUUUt2dajFNJJZ+RY/oaP6rBjLuyjE5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718660303; c=relaxed/simple;
	bh=CKbZ8362Pguc4LjkLnNkMiSwRCAvrmATrlPNgsl1vyk=;
	h=To:Subject:From:Message-Id:Date; b=dLvbk70XTE6QfE+bJCetfdK+/abSoZOVB3TeXJO/FepkkcU8wJPMQShxIVoNi4a2H/1SZH5KvCZxjvoKgmF7ot4bP9QhxqsQL9pxmMCHDho4hKebRnjkNekgXevP7+28+np2WRcDoGIYJybl6S0L0NSqHWen2H2wUFGoYS9XnlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk4VKeyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk4VKeyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC836C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718660303;
	bh=CKbZ8362Pguc4LjkLnNkMiSwRCAvrmATrlPNgsl1vyk=;
	h=To:Subject:From:Date:From;
	b=Gk4VKeyPC9uD+uHZQ3/tiUnuHjpXc3vBzfNJc7g2Av67PzAWkaBdcIZJRx+y+kf+5
	 qEguYIFshjRoxCHgPYA+ncC5AE/dPocTl28IupnimEWWB8whfkIMJ70ILefh8x4kaf
	 0DUWfZYwBXEEJnH9e8xm9v2rZ8XBaX0bzOM/LvEPcRUBLv7UhEAgVmTZhUSgovsz14
	 jytYZujVPktwrKTk35hdS0+cBcAM4SEdYxcrp6SB8QV6DuSniuCoc4EPV2DpDX4gBv
	 IcOjRRDUXLCdombSGrfGfXpm8Nw/qpa+6iU6I48YZOamWm8tHmCZ+3B71FYOL+OQoh
	 MbZ2JX9Tia2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50CAC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866030282.5031.11072634310872691461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41836fc1e3e754d75bf4a6749459cdd56bf4ec3aaa31e7ff893bded70247087
Date: Mon, 17 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718660302
