Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3D4224C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707818296; cv=none; b=ggyHWua6uVirBpL72GI+oSGmcGCuU27s3Akb/iDg+4w3j+wt/nFTFNjnnSmh9BqW9+4aWRstYYlCkzB6wcW91RPY71bg5ndBZzTqKH/ceDWHiWr63Yt/IVAVI3VBB5X9ayIJqsFkSF93DFCSEW2W+LIMp0NyrnJ6y6FRF7mXA0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707818296; c=relaxed/simple;
	bh=BPX6+MBHWKQTzlJ1Ha2N80W28BNGmTF1oX5P8Z0df/8=;
	h=To:Subject:From:Message-Id:Date; b=JXsxrRnllpH5OLplqjtTVUgOcguk89UUQPnV6XFACLb3I+RGj7g5mKg83YQXWShYvg4og+9SRb8vloLHmYHci1ZJwxJ7cevtAAFF0krdVf5+cVYCGDBYoA9BVyvBDkc59jqQSTyUtMI4VtWYOFfN5vboNF/x4mbIyj4xfOH38gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC23J1En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC23J1En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716BEC43394
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707818296;
	bh=BPX6+MBHWKQTzlJ1Ha2N80W28BNGmTF1oX5P8Z0df/8=;
	h=To:Subject:From:Date:From;
	b=DC23J1EnOMnR9eJAi0xTaDOqPK9N74HyP3mndFJfJotz8p6+MMEiEC/ejwP8VdHq+
	 sGhK/O8tf44AKJ3LSQFeH6gfv+VamgLbp8C8IejE1yYn+mYlBxx0u41pCTMrQB+Msw
	 KizSvPmf6wq5O0DnuGAizn29bQDmTlA4XeX49B5F5MsMEQGQbUSsVM9agGk9b87oyM
	 HUZ7Hjh54Rr1h4jS9Xv3CGS6ssp3/yZrzRaUEI8wVqyJdoVXoXC9V/B/X5Ah8Gv3Vv
	 Mq2/FlmFjfPL16MYByM0PctO52T1rEMnZkUlknHEo1cRX4ChAdn19P/snthHCgjRg7
	 dcP6fi6JjaLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B218C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781829636.8569.8642675177611209998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b197b0eb8163e4e03f003939a6deb77b7745963f9d621dfd50ce42807db7e420
Date: Tue, 13 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707818296
