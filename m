Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449EC20E6F0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737636954; cv=none; b=ikbzc1b2wzZKYKJZLod7WNNX1gggS0caAMdIAz3KOVkH0MCvHyZ9hxhg0kUbv+vMzvpavhwQj6jhpCqjQ1Fbtzvm2z+xjtMX24h59zhAQcxF9KJacDLo5haegoKPmYNoHXx307lwfmhBMeMt3mVcJVApSKqMHim33hORUhg4Dm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737636954; c=relaxed/simple;
	bh=clM+KSZLZAlhKykp32pNhZ6DdRwKH9AKwUo9g5gc7rw=;
	h=To:Subject:From:Message-Id:Date; b=fbo1fSy1Iw6mhoeXapbB4bthcK3rUJtrmuQYBN5ZWFXxwRGO2DIKu7GytJ6/IAl0AbewYM6j4N5qn0WZ5OqyYApTE/etpvM9fhjc6v7q9oAxkIhZHLDqp5qhcgOadCBWfDBDaaeHjPO+Hdxdf5qNkyDEiZeGI1OIBeUYlyFebzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoqujSEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoqujSEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21EC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737636953;
	bh=clM+KSZLZAlhKykp32pNhZ6DdRwKH9AKwUo9g5gc7rw=;
	h=To:Subject:From:Date:From;
	b=CoqujSEn/pLLh3vEAv8/6+D6Xow6qkiYpqoKjf7tYyWl+Br39+y/W1r0iYbkqLjMG
	 4eDBP9CkbZyjpX9rqSPnPt/xx0U51B2jd8bdqadc+LOV/XDsqzpvAMbVok4OzQjk32
	 il10efH6Vf0bWZdd99x4hAsyhIcpPRvV55dGE/JvfYCKokOPLSz8fUlJ0+N5aPSW1a
	 DmIt8s6ZHmpiJ2siBKUiSgHmsBciTUsg+FGDsAVg4cMEsgQsZsNQoNki58IGoGdZDe
	 sDTMPKpnxyu2GffxPcNC6O3ruRndM7fDX7o0+AiGmX0ZVmcqE/QkUbxJ+/mhpy9xZo
	 1EDfPlYU/PPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D0C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763695357.16123.14525090604919906395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4605773f9151195b279912fdaef306017acb64ee1e339342f889b41e82756a90
Date: Thu, 23 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737636953
