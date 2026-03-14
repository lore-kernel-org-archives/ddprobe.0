Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1924536165B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773495294; cv=none; b=aEQigV0J7U8qifpclj6lQJ7AWX5pXBBCyTKE8bXUWSL7qfq0YJ3q7GX4mPppU1N3npQTYORik7OH7kcq+ATzi0e1OPxVGVXJhP0mhyUYtB8g/kQr/Tl9P4rfb+98LQk8zulCOhp5jPV+b64jaTQleVM+mbvA2nTpag/wL9uOjJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773495294; c=relaxed/simple;
	bh=pLgmtPxs166Vcg7bc2wayJBDzU8WzEQXeyazBghYYwc=;
	h=To:Subject:From:Message-Id:Date; b=EEzX+BHH4VZ/YAn8Hxigl8Kql2iiCQP9yLZ7nwxbFKob7gdZrS7ifI/4wKRENLhmWAa9VtltkZERWB5Lr9qrwaGVmFGOk4apXZMZYVIZbQfQGTZuvY+SUCQnZ1a/QJOnQbezWsUiZKx4NYcsKKVVWV64CJvcKYzHluwirXt+rxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYaHH4gQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYaHH4gQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A57C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773495293;
	bh=pLgmtPxs166Vcg7bc2wayJBDzU8WzEQXeyazBghYYwc=;
	h=To:Subject:From:Date:From;
	b=MYaHH4gQhbmfRPYUXkZmA6PxBwXeEkyKcSyZQjPemJFVef05qz/q1JwcWGG+wNdo7
	 kYf/u6xPipJSTa92Hpf1ptIxJ822CSX+LZrj4aKV7j3oHeqM1Qv2GXlETaua6kOE0g
	 Z3oUZR/dO25GOhGGWvTMI89X38Y3ifsDK2MAQRuH2BBgqmuj2a5vmIacB8cWCgt0/4
	 ku4m7QL/FHFVhTlHCfVM5E62ueISbTgM4bWfwZwzgbqicDA54NiPRSHvP74b/IRp0a
	 c5fFk2n3rBRLinlbtSrP6RqJrVUpzyuOhxQoSd5hTEW2tV3+iXO2B8V9NlkOoeBYSF
	 R5H6RNd+0UkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253110706DB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349529358.19015.11781594684396735652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cf61f38c22c06afd3ecaeac4b147fadddbf04b8770c12dcce99d3b663ef654
Date: Sat, 14 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773495293
