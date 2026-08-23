Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F1F35F60A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787477435; cv=none; b=CCE1yfwIw6LXRqpOVHIG1v4mGE3mQl+wajgpl5859KSeujce5zA5MNPlonaZRfrMoXcmlW2l1St2CuPozmury5YpC4QDjwzB9OUd3+M6g6Eq870qtVZjct74ddITqXn9u7LCi66z7S8dmMX6qiFFdbV54UQr7X2262YrFbi3EhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787477435; c=relaxed/simple;
	bh=Njtggksfn67hWFztGDtaacDLeo4rzd6GFNJkhq4n5uA=;
	h=To:Subject:From:Message-Id:Date; b=J0gy2AJrmD/fc4pkJMXLDUrgBaBTefoFeojC9pQcHCrIDMiO9CRoER/X4rhAsoyBY96x24PMYAoelUMET/Cy2uLyi5TIn4pBTjtcqJL8YgeyEEDAc4EF35Mrhdg+nsuVOtDYFRlPCtzK8nHFNwXJx6NJxlOO0w7YV73XtQvkD0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUUxr7JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUUxr7JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5830C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787477433;
	bh=Njtggksfn67hWFztGDtaacDLeo4rzd6GFNJkhq4n5uA=;
	h=To:Subject:From:Date:From;
	b=XUUxr7JTDzyqsJaVNNnO9/v7nTTr/ddLkSA7a71VLp8S+YCIc0GMvF9KjldVWX/mX
	 +3/HLpze2/2YsgD9kIsJpphU6bkonh97yy/opsad8UY25ekEgp3ATEqDE2ng6285Gh
	 8fliZMJadgvDHVrkx5DNeKptmCP4S/dluzMO4KHu3IB3L8rOtLOVd3KXnsok/iqRvt
	 kLeSqZApSWp2YOF0iZs/vJjie3H6urx/SWsQq2ho4J1DOH/ejDv8ZEXSCYL72Q+b5n
	 iR8+oLnhfTFUH/5latq7rwvIrO6+36zbbK23ltA/KHe/evt3TpgjhIkZddjzVezwAU
	 5opQ4mmcMKcKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2504C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747743371.29961.2904678862695208641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b632213f4af005e94ac4beb35a1676712c13c05d99a5de9d920a9c4d3ab0023e
Date: Sun, 23 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787477433
