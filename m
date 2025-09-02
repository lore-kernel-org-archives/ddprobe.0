Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AAB31B138
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756828793; cv=none; b=MFAFJ36cDln1aVZS4/cB4ueG7qk2yoU7aBDUN4M8x284itqmRPGHEnZOWyYnXn/ATLhIvyfAINe/JUhjKL5xLlEbCQOr4dJeLE7NvEfQtfE+v8WXGjqkUI0xxSWdpMoCL2hjTfoh0yENKbHD1GwDB/LdjAXgTn5ohZ3lx7v1LLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756828793; c=relaxed/simple;
	bh=qiuZ9cdlZISM+4NvvpTS/EP3jN5pp8kW54lNFlE3GaI=;
	h=To:Subject:From:Message-Id:Date; b=DsWHTroDdaDtL2Y7bWEds+d1WXp2HbgM+nQnEu+9kvlQ/huLqXCUCUXEb4HEJrBH4MAxYM3orfMMpCVZuj0bvnr4H041xL4wy9luEA9r5CtHEw9/47N6tevMryoNXIxICZw7qb48feU6xoycut1MwlGpaj/DHkDWJvnLyZlrirw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amU0rJAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amU0rJAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756828793;
	bh=qiuZ9cdlZISM+4NvvpTS/EP3jN5pp8kW54lNFlE3GaI=;
	h=To:Subject:From:Date:From;
	b=amU0rJAxbtdnYfUo8mjxDcBn4mtLzw6ybKGdVLZMSApFdtJVl3ZvhMzfGKFMa9/qk
	 +SUZ5j6BFViwUcejnB66KahIRp0yy6sQ43pxLpJzB3fyXGI2JeTOUzTEt6TTt2UU7m
	 Zi6d/xDXNyGEwYn3zKa55C6EX4JI3vO0/AVWjSQpzmW8Hi9bQDcXf8JWNzcCP6V4Rm
	 JDXPBIdp3TPUJF2sZ9xrMD1F2+mr76lwf1/4UZ7GWaohVvLN2gHa25cYcAyS9yCsep
	 yT2r9tsSssYOOakD97op90ILwfjXafacX9vgRY4rbUSW0ZyIoKTMJnjNYdX6x6TunK
	 bQ4mCtc8C6ElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF04CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682879358.21652.8554626258915236028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9b6800650ab693254921301549d3078726f1a4c8524b00fc303129f22d18a1
Date: Tue, 02 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756828793
