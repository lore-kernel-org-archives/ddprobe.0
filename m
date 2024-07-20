Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69F1EB40
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721497554; cv=none; b=rRisBug7rhrxAadUg2n9iMPW4DQh8ye1IN44cKzMCQQ2SQ6rLpY/N4hUq3bsp8UCy/nrWPIYAqqYkUFTcw4zCOwQagJgv2kx7z5AnrzNXgP80r9C0HRAVjwsI4VI6oKBUPE5GRFQOc+hngMoDSo4yF43Lil8EqmcJenE23niCAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721497554; c=relaxed/simple;
	bh=qWtEWNd3Y3LWRvPhQthLNf2lDTgOzTJfkR5qbk2pdLY=;
	h=To:Subject:From:Message-Id:Date; b=AOtHhXxBNlP/sAPjxbrmeDOiEWSHD2P/bdUxoMmpJjy/ZL9vbpwfKg3ggnLtUPO4zONNtWcLiyMi6sGML25DxmxdC7O8brt5j3VwWbXQjddFeCSNVW9D2d3HTKNzm34np7bF4xcyyZQ0GHpNC8c8ouge73Hurjb0ghSSpZ2QeGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RztL3FHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RztL3FHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA693C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721497553;
	bh=qWtEWNd3Y3LWRvPhQthLNf2lDTgOzTJfkR5qbk2pdLY=;
	h=To:Subject:From:Date:From;
	b=RztL3FHYgunGRInbdP91XKNVmcUV+EMBJes67AlKnlqvz6dTtHxafPpcXwTZxaWfF
	 ORPtG6JABRzlaejcn5SNOS3vPPiQN63uRsIGOxkasgzX2VHnEesAMfArKFMrYEoOwC
	 ETh0pIieWmv5pQwmKuoGGdW7XliPVBAWSLK3ubZwsRH4p2bGN0oOm6fIrE7FyrsZKj
	 tY8lj4b/f1RX1+FF736H5r1JJl7Vz3SuhMJyyr0ZEE6LOMGsNOVG2bJlITpQ/7cV6K
	 SbigEsBE6VIG4i1IL4mkaGBfle/Vskplpi+u2HzMo69zeUyalMuyIxIbpAR82xp36b
	 Jprj729m/u/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FF8C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149755362.22950.7425063395159634296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346cfa4d920b5d4a91d0d7e56b742be3b04dbff4cc666d7bbf0d5bd3dc973844
Date: Sat, 20 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721497553
