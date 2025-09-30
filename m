Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369131BEF7E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759261194; cv=none; b=MMnQ5xT71wTls882M2fPyyuQsGb7HbeTe9CecgQ5FeJeaxTdKXnLPSdLiKTiDkoc2sN9v3fC6mj/Bv+hI4Edovw7AgFeN0MVUWTbmGcCSknzsQXWNcs/575lJGsHHBiZWgoHRI32J6qTI1u34SPBbi0eH2FqpnNO0JqpacyaJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759261194; c=relaxed/simple;
	bh=XXl7B7gIfQAGArBJYJh5Vv6KKbY13M53NBZdSTMXq54=;
	h=To:Subject:From:Message-Id:Date; b=cIm96ECOgF6cAiJo/FStAazK26q0/jTZO9CVq2PtrrM9tpMX+cwvtKc/kaVZqzPv/EupWZdHZlVBf9HN8YY/7zcjACivchZC3EDkYG6y72lGS8sGE6qC1XPQ2M7NsZDveJX71gaTResAmafUgeN6kMEK1QAeo9i8utx/XDA5TPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzX5WzHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzX5WzHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759261193;
	bh=XXl7B7gIfQAGArBJYJh5Vv6KKbY13M53NBZdSTMXq54=;
	h=To:Subject:From:Date:From;
	b=EzX5WzHC/l/Pqx3vmbsqVoeiUFDmAvJmT45R8yxGw6vAzoEZt3NktObhAuRnzxjHy
	 /tQBLe6zDZHudEqVBgjGEij2cEZAAR6PityXgFN3ryNbRZ6GhpBOu6nu9oSFzCHf2k
	 WqtxPyNC8mrs7cNQw+Ycpis9ATGD0y24cUJ0PhvPD3mgTQbyM+V7u6Ts2F5Uugv9m0
	 tntZ9FkMCGu/BP0GJwsutAk1TL/6AYvI7PgbZhkhx3dNpyje0tcjtGKY2pM02+/+iq
	 cdkZMOg70IdtKYMXCqosUvfWGejZgIFgRoklT56fgQuu6eUlJWOxXfgn9Jx4iZ0xZx
	 yXRd+Y9uUWqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE60CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926119358.9377.2979039150666991439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e568041e0975f9d793be8ca3e8a287b8f958e20155d0ba0e91da1cea8a95919
Date: Tue, 30 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759261193
