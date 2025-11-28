Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DACE32D0C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764336174; cv=none; b=SaJkqYNH+u2qlix57sIv1rNH/AU3MXR0vKd7Le5gom7tAOEMUaJUQH/OgWY0iOWPXQbrE0MyU84TPuQ7RDnkyB6pIzUZZTQfkMG1/f/psnWw8IVlikxIwyLtt0rVdQTZ3/PDUNbpvQWHZOjlU+uPebAoY0rK39RJlyXk31iBql4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764336174; c=relaxed/simple;
	bh=BcKvRUwqZ+CDW/hnopn4ULe6G9X6Cj1HmhwlL5BYHxs=;
	h=To:Subject:From:Message-Id:Date; b=EcLg0aqtuEhHcPxJc5/kOqcgGo+utJYL//djZk1aIc8Hfiys3Eh0ovD3dsHB8rMR9DuPW1vDm8N1oPRzlMvDU+kB33NcJrokWZXrW3/dqCoAOozX9Bd7qCBoKswHw1X/2/TmkfLW1jJwj60GRnzZQz/jNbXkT3wJt52HKMZzL7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLRDZeys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLRDZeys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F385C116D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764336173;
	bh=BcKvRUwqZ+CDW/hnopn4ULe6G9X6Cj1HmhwlL5BYHxs=;
	h=To:Subject:From:Date:From;
	b=kLRDZeysmOxHcWdZ5IWWl71frdYdVLQRbav6b9YQ+193npSntf7VyGhGOGpGRdpuL
	 PSgA6wy0/sABDgTSygwBcPeoFT/L9DAwIRaKRhyrbTOkGE1lpIpjCWXaNUqjqOW+iG
	 nP3tu0cPpLaimhCrBDDGKNNlmMkxaYkEYHzmdEER9CmTXVQ3u5jZgA5dlyvlT0J05O
	 dq3rk55ohNZqfHvgJYzFqmBBLRRHquLeUUhhl7FdFCDWmN0m6MuscaYGmwludNS13H
	 MUtHF/erKvPuHJgbE7TCXMi2ULoFSMCZtYxdXRk/QiLctUnbZZqfwflsVl7mMnOqub
	 H+wN+2NltJGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6BCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433617358.16816.15395112564553401704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfaa27e961eea33f80039435f955c26944deb07650e11624e4d595e22c7f929b
Date: Fri, 28 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764336173
