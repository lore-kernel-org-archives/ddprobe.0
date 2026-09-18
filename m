Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374B47DFBD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789755034; cv=none; b=RhlsvnWXg7VTSc1LrF6sk8DyPvMeeE9A70F4urUi5qU/KS1NI2GVJIqYv2c/bkYkUvjLn5ffyAFialSGS/4th0qQGqf4NhplBJxOZh9dgWO6WM67vhxE9CgYs6xNk2D+tyjLzgZuoLmRjk6hY8gmjDcSKsOBh3brb7acK2TYWFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789755034; c=relaxed/simple;
	bh=1G5lRLH4uzQB6qwfxI9u0JR1UBFnxYZgXmtTsc0kZjc=;
	h=To:Subject:From:Message-Id:Date; b=hcLIrSYiwayVO41lERBfBol12a3AITcv2uq/Rl6YPI1e77wb56AKK71FdU7ofPfvLvFcHYlhmKHqcn7OUIDflw1azuKAA5c1DiOxfKXfryClOFhtXatt+BFxu6L8SPoNyVJwoBMNlSu+jtIAvBSiQNljcsjYQVc7Ni7V+Xr2Tas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7/Rb2rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7/Rb2rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D197AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789755033;
	bh=1G5lRLH4uzQB6qwfxI9u0JR1UBFnxYZgXmtTsc0kZjc=;
	h=To:Subject:From:Date:From;
	b=D7/Rb2rIUFXQbK/PQ55xOeFXToAJyqu1jJmknWSEa/qZ1lqRDotNwYZOWDWBHtXNL
	 CdXA8cxwRbFh+56i70neLnbeB1sD8RMg73hQ0ZW9E2aYS9ZqzRHPGW2HrMpYyVZuJ5
	 Y97U5LoHGMyGbvFTKLhAnAxxAHfbkbfOGapEWwOzEZAsvTeeDT8qeXUu+cmVc+VuE7
	 0IwgRQ5y4kphg955zVJ82pNaQrAOligAnTpMnj5VS+xIplhhMYuKS0lQAJB+DQSELK
	 l90gUkENXpAAAlNyP2KlPh1il05S5xd7jrfpL35o4VDQz7qWhQ9XM4lHsYEx51dcAX
	 CAKUX14HCxhpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E3C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975503369.16347.3312179106138300374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fcaec1c1da0efff49eb2c5a04f0ca7ace49fce9f2844bc51d092a07bc68ffd
Date: Fri, 18 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789755033
