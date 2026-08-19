Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9477478
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787116834; cv=none; b=iM+pU1VxS9hk876dUCneoUSbcvZrsHwHpm9x4KGVFALhzMjRm83OiKlmG9M8h7ZZD35bC5GiyhG2Wt/4PtXNIWAOwDsbbEApAptrwh2p1wuPwu3xMwcSo5Qu0DaMyytlFzzNqzkHQYTbv2wLJyuX84pwj5tWy+F98vQ7TTeoXmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787116834; c=relaxed/simple;
	bh=LT+ax3cdByFhcv7sIJAjCUJad2kQBJAI/x4o2pidkS8=;
	h=To:Subject:From:Message-Id:Date; b=rFs8JOZAkFSckO55Y+qJOL4nXreSYiNNGLR/4B3mtX0AQT/ta1vjW8Kv4GOwa1lDs9NRYW0IezjKGAwl3+qSqEz14pPjuCSeMEDis7r0jg3nwovDtH7T7+TaRp3FcsBt9vH0nW0JhCiAk/6/Ge1X5jRwsIcg+po3zgr8j54CFS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdrttNOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdrttNOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F9CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787116833;
	bh=LT+ax3cdByFhcv7sIJAjCUJad2kQBJAI/x4o2pidkS8=;
	h=To:Subject:From:Date:From;
	b=ZdrttNOAld6sdiV24JfMet26nXvIJCpZTTDIF9xuPaSG2+BEAU4ah5G+Gy+TTFzWe
	 2T/SK7269VwLZWUrJKbh4FluZQmpfO5pf0VnJUaIwPzE04PnpTucbla0gY+1XmQRSK
	 PelhZyMyZS0aKMo0rF37XGB2c1NFi4Gbde03K8Q0R76aqz6m57HtkSo/ZdZ95/4JeK
	 ecvFKPZBdiAtVwjWAUiokcE3kGbBTjGcsXpGgPE6I1WfuoyIGlY1aYrs4k/edbEual
	 Wsv3LBQ1D74A0j71+/kQVVqVsQYzSPBW7X/eiDhCWgXKJpHfzp8L/ctERvr2QhIFm2
	 3ed7CGZKvXe1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF5DC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711683373.3110.12414283904144996525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822a7f5397a54bfe038bf7e5536ad1733c8ca8d5872b60ee7b2c6058fc270e93
Date: Wed, 19 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787116833
