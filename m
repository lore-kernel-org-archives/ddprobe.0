Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A4944CF40
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788779434; cv=none; b=NbNcL+AvZg9OOLJlOdXaWl7wlzHw5+19W/YrZMYlYtDEMNl/Y9fwmHuAyOb7uzlH6EPxD8I6Cz//GhVMXWfT2920A58YDRxmmNLHslL7hKvlhQjJ4S0wBTa6dYZlEQp5gVeZ8AWqT4ZAmHQxQTboM1gY8Pt4CEeUjxjTjLMjqEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788779434; c=relaxed/simple;
	bh=QOSrNiFATNF+s+WVS1yAWooOQQ7PkhIo4pWHQGOfFyU=;
	h=To:Subject:From:Message-Id:Date; b=BWAxVyKmIfUB5S+O2fiYojse3qgOgj3k+KVu71I4EtaaB6+mo5w87jRzkLQb694eabGqlLwclEk7XoKkApsSHcYDK7pzNzxbIXSQaNKhPK1goqdc70qCXBfIb0XUAvS1SwvnGUSWfQfxcO0jCRzlfFw703tgjwEOg6sLc+qTdKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPsJ6umR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPsJ6umR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED07C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788779433;
	bh=QOSrNiFATNF+s+WVS1yAWooOQQ7PkhIo4pWHQGOfFyU=;
	h=To:Subject:From:Date:From;
	b=pPsJ6umRcC2d/cyL1I740WcaAf96fIC4m1Gzb3i0pGVYxLghLGJGoKM63RUD7gsla
	 HKeIi8wQoKsSVirbjmIPdJPFYZ/NWGASLIkEW+3YTc5Ny4R2aC84SqYOcr70IIbV6q
	 00BJ6NNNRXvERoSlHXNo5PEiRLTSVO5YU8dew99EsKhwFiD/HMn7cV/DO2Q/jUyOHU
	 bN4yMTfieXfLMZZjlPllwdalgaNflgJ+idRlMkgo1HERpLjBAmQlvT36/NJHBwncKm
	 trcfWODMr7aJajcHx/s7HKq3RS8AQxm0DdoUpTvXW1QgyEG6hWiNdDrVl4XzdlJ4A+
	 A3k5DWKnzvDZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DADC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877943373.7615.10485621368572077795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbb43129d3b57246ce8ebf7f866c1e7a173908921b1dab63fa8fa08991a0f94
Date: Mon, 07 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788779433
