Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFB4135A54
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717481123; cv=none; b=J/m1D7vAYkf/VW3vlMBuSL8PMDOyA/e0GvxJ4px1tWrSvZeysT5TyJ6nUqyWL7JLZDWHnCKkS5QJPW9wNZrMpPXA/J0C/7YwkdplOhd7myIn52mKd+EWGCwapUILtGXJy10gRzK5TWasbqlsjCFc/cAKm3MZHO47GKQ6OG8SVzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717481123; c=relaxed/simple;
	bh=gl3Qgr6h47GlmUB+xw11x3dvSgAoTeGx4IvPy9tLscs=;
	h=To:Subject:From:Message-Id:Date; b=iO1wK7ao1m4jKcPPUMeBF0JYwtD+nUFnTyAh4AdhcmlcdFnwc6yMdl0So6bxdaGphtLl672VAlkq1Eb2HNx+/CsVjVxrKCjuZsGtc6VDGpcxEOs5VJQWD4YPE0Zb3wDinCVBE0mzqO4AITjVWfn34/W49CaAZUGJ62cwMKynGCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1hUnnOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1hUnnOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF345C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717481122;
	bh=gl3Qgr6h47GlmUB+xw11x3dvSgAoTeGx4IvPy9tLscs=;
	h=To:Subject:From:Date:From;
	b=c1hUnnOK0XaFmF/iKnYFd3yM9E/96Ne4eNOEk9nTkjlEmwfxOXuC3u70bRHj9/LQN
	 KVRR5jxN4tMfNrK1xPn5/3ophMgpF1yqnnZKTL0hYNMZ5o0UMw31hBpYZvtRc1dZxd
	 7jX9aSPK437hyIrUpOLswuYD50HZ9AxaYvI+5frEKl3mjG4hOHecdgQgTN3YW5TX45
	 v1Q+MkztbuhYH/gfIMvOiHsCeTOnPCJUQ3BliUtY0rraSpViEmzBhHrLPJzri2C+pD
	 icYoLe11wSqRYRb35W9V1soYO6rCq+prTleK0OInqudlRX4GwXSZrgHPg6C1pkNeAf
	 4gVGBBQCmJeNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87E8C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748112280.32443.16111343609703044404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3e0f8c07df34c8a4635fdbee875713f48df3596e4b4d977f5e9dc97ad75584
Date: Tue, 04 Jun 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717481122
