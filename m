Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28E1DE3A4
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741819134; cv=none; b=uGUp5FkX16Au5NU0g4OiK2y48uZiVyQembDL+rFsL9FeR7RmHr4TM7QEx39KgXmgqRd3zl2db9JCSXv0ZvD0ImydSmkIvwOI57/7rKSvukOUQ7VA6wGO5ZGECMW8ZM+tVCW/yuVc+80OX/AltgLlIJSidbMoOaHsozWnS9oXpCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741819134; c=relaxed/simple;
	bh=2jws24vYcL4K/Lllar6HOktqiJjeuL8jsJzYegmAKhM=;
	h=To:Subject:From:Message-Id:Date; b=qv/CR+JteTqBU4nXfRr2vhsQqGWbIXhfawJwNT++5dp0B7t22t1L9P8xWhfqFqXplqiyzPz3sBOFjYydeBl1lN/4pxtq/eGjRW+UO/kd+kyKg59jzmZ6sXlVS0g8irSW/VxJySB18u2AVxZmXAzxvRWlcRVVjPnlKgdL9vCn9sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxJ3pzZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxJ3pzZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741819133;
	bh=2jws24vYcL4K/Lllar6HOktqiJjeuL8jsJzYegmAKhM=;
	h=To:Subject:From:Date:From;
	b=WxJ3pzZDVrPuD2REzWyfaa1d9rWRdvsnvYnp/oYKMVKY6Gs487bb2CdculZaRurki
	 +GsA/r868ftOLurMdQrNuHQlYYc84wjuJevn24sFJxql9mmMmAagZubdaSdv1WzQf5
	 nLGDWuCA3R0n++I6YJyoTk4aQ+HNyM5/q+h91hUPElb/BqNpPvmksbEmJi51shTWtl
	 1xKNvmzNWRYFnxzrxu1LycQitOHd0yrrP5AyIhSeBAADJzqJmELaUYTQlxifBgV4GM
	 H4hsuQE+tJRGiMpTGiwOdXiQXiruaDGAH2y9u3mmHdTEUAohfHVWOGW53LAicXuxho
	 af45VfBYdgl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D72C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181913358.14734.2683712922072630221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e404917fe3e116a1fc15e176a804f2f6410983ba485f9b2155fd48f40a44de
Date: Wed, 12 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741819133
