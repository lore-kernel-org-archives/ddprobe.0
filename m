Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BB2480DF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787311234; cv=none; b=D3pDjJPk6IQZs61US2+PN7s3YFZU6mtxvmt2t+ySXF1ZVdZVucTapo0E7orSw4isuKL8lfuzrRKWd+EjrF1yjRzka+vS+KRBFNbzj5l+dTuIMa7ADpgkmbt7kcQ6T+uPdiGoqZ32IQ/kHYwQ0oR2QLD7DwoMzJfAqpluVZng6a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787311234; c=relaxed/simple;
	bh=5wEv9mLh+XbWB2jb0KQ5cT38jlGDQ0qAV2CMilFiVOY=;
	h=To:Subject:From:Message-Id:Date; b=lym4A6/Ok/nx+fcdAYryTtyscCC/zcBa3Ma19H8cQLr6VlI3nzE0G0IE1UzgbOjxkJphCPOiKqIzF+7nxRm3T+speS4yM/YP9KDmQuOsPO8AXq8xzM9L9x1QoMRF76ewjxNXPrKzkHFm/Ap2YuCbF2IL+VqU4T2NqcavFEdj/kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6C19lFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6C19lFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC066C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787311233;
	bh=5wEv9mLh+XbWB2jb0KQ5cT38jlGDQ0qAV2CMilFiVOY=;
	h=To:Subject:From:Date:From;
	b=h6C19lFnA5cWzJa8T17CSwoAOULq5Lx15fKdGT79VTC3I8TIgeYfWvdO65FFYctjL
	 wY49qcsEs823WbfRNckW+e1dGF2Hejq1QzAphnB6stexeQYNdHOoWQrCQKANpDJwFF
	 A3BAwfgxZPCq4LQN2W4qomfNMMi58oow9PaOH3aWt+LWYq3aVqbD/cemXzv4/1suyV
	 1l4DARO19qaV5P8NQ7bifYRj+etdjrSxMsO882tTeLSYhFZoYYpKMztgNCX/YRv90I
	 S1k1O2IQ8iQR1Ws/Z4fnPTGDfyCnbrn2/ZfdjtViB4b7To24KDzgGCr5gMhJ3w0LrK
	 L4TDLqCrspNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83BEC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731123374.16481.18316172984872377913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafc5718ed3659089fa0fdf644774f92b9efedf2a05b193fb35355e876897366
Date: Fri, 21 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787311233
