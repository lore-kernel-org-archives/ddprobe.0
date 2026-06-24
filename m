Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2BB1A5B8C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782338254; cv=none; b=GM3VCJnGX25pAvBir2HjEeYYLQe2lHQv/himf4gCGaE6RHSipjwwEJNdmdX8dZSKWokXHe6CbN3XgXGYY0/q1Kd8fqA8vJ3/xJtrhQE9NHsUshLR2MLXfGTa6U7QNjlk4tiYHYJU+VzGk78lnotqjw5lxzOt9j22LDHrVTaLak0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782338254; c=relaxed/simple;
	bh=N208m7a7kJ1z/R0eHnGqCIwRfs2pWSAH8D/t2EJFcYQ=;
	h=To:Subject:From:Message-Id:Date; b=uOWiqQclY6b9ZDOmAsqU6kV/CwoIf9x04SG/6d7yf55QjuAaDEL/yaIJD1jVUyZTzCneS8Jh167GF0FxSmnIkhEbzeoJqYJJgCllzyzLf9IYTMcGTGayIcNosPrhzKLujTzuAZ4YPEi2r3JB2MA5FpWZzBuFQu6A7B4mVeT8ZiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPBfJwUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPBfJwUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26F53C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782338254;
	bh=N208m7a7kJ1z/R0eHnGqCIwRfs2pWSAH8D/t2EJFcYQ=;
	h=To:Subject:From:Date:From;
	b=RPBfJwUdQxvUGKmp63gwi3Ov2FZQVirDot/ja4Xhf7+7uxkJHWPfuuDXVtALwYGhy
	 FyQGnR+tgGRjdy2KFYSqBDnwsDYT5le46RjszHNGgKpfXg385ux+YLemlH4fsrQdkB
	 3tGp2/9ejYaVi43B1sxSYcjDVbU3Wx5hkQAbyrW/AueTE0aaCryyxkvdZ3KlZeJ6Ie
	 0WLq14Kqg+WkDfoyjgnngil3PZcv7TmmD6b/m8XnBageW/liwba3ek3jiTieFpMRQc
	 x20+Z/F2Has1AC7Hrh5+nTF2ddbweT5W8Ynqe5HKAYsz6n9ofiXtP09eNsJwm9EZZ0
	 zGKxHATY4f/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8559CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233825379.25136.1963686330811549919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747c2ce8a44bb9a9a0b4500196f259080fb244330e05df58473062aa2f1d44ad
Date: Wed, 24 Jun 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782338253
