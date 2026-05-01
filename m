Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EFE3126CA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777639054; cv=none; b=tGvT0UiTIm+qMpiqs7zU8GKQTyHhw4tjUGYxc0x9f+Ve6Sc5y4L1TQQMlEgU/5IzmE3ZJgs1nwy2rR7pnBrXtUOlPTX0dW4uloEM9PKa/M5XSWW1MBpaGxhg6M/vAuv7smFcAjbn55PDXeLk6z3XNL3UIbRxP6LDPLd8/LYe3kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777639054; c=relaxed/simple;
	bh=KSIkRvzPnM9WHB2atEUaoiKThd9QmbmsahNCv1ZMDd0=;
	h=To:Subject:From:Message-Id:Date; b=OlU6qYUs7DWDdFkgdxawZhopMUDPLkNsN7hz50jaHUjJ2OY6MtqzBbrjNQc5f4LtDnRIxfQMG+HezKFVSi4c3WmyFJSjhTkI4uDNtDHh/SYqnmx6jxr2aYZcIYu26qxgQhJTilG5k+IzsQBBfoT3q2/F/SZ1TkOOYtyq4lpH2yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezqmJ+wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezqmJ+wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C17C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777639053;
	bh=KSIkRvzPnM9WHB2atEUaoiKThd9QmbmsahNCv1ZMDd0=;
	h=To:Subject:From:Date:From;
	b=ezqmJ+wym+I0qPv7RO8+ai49cR9ZPG8WSkj49TEQzj9xKtXmCHXxHTIDIcJGpBdRC
	 kZSTcUDVtedfIfbkrRKOq8P+USMgKJwZQElDC4IXllP16sZjwbgFmlQkavjOoy5VZ8
	 pyCXJOk/giho2fsGqmpVrrb/IvMi/52We12oLCCSN4cvU+WyRixvN22CsUeomWdS69
	 HO33//+CxEYr0Fq6FszEF1eo/XeTh21KpRxoWQsGd5dq4rHUL1Yp8o0fOfRStPspye
	 Xe7IJB5Y4q8tuo/qVnVtuqsjn3EVifQCEIz6IuJexljK1488FmnkRXemZ9R9AgYrW0
	 X9BpB5UQG9Hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5FCD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763905368.12700.9925307366345339092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb49eb1f11ae6206e89872cdac7186c9ad190fc470c1eb320d6b79f0d46080cc
Date: Fri, 01 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777639053
