Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25439367
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732688154; cv=none; b=msq0kAwv6pB5LT55tTjM5QrZBES4/AK+bRaYbQYuOp/3aBwcMcafTDX+fGQP9ZKGaMOvt8hviCA79FqafShkAzs7FlQERKySmfKfUTEgcEXt4Y90auqNBtP0JVpiae6/c7p902kSccCwWiL0/UXlZNQCXzuxnDBTt2sdr72NxuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732688154; c=relaxed/simple;
	bh=dIVkan1MiqHkeuYUvuXjQfH3qv2Ru1FubyLto7yxFqA=;
	h=To:Subject:From:Message-Id:Date; b=Vy9El7Xy1bZoJJ08CHUJWC479sg4qgczYUh7jEszpowll+WtrHghnNgweemL2mmwpAjiETOTmlMCMrxkdUppf9+xbokcohdISSLWHGN9TtUicldnIMttwQwp7d07KwADwkOUZQghkgtrRjZl5WeKnt+6HXjiors6GL4IKo4wZxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mseFCDVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mseFCDVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBB9C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732688153;
	bh=dIVkan1MiqHkeuYUvuXjQfH3qv2Ru1FubyLto7yxFqA=;
	h=To:Subject:From:Date:From;
	b=mseFCDVcJEWNSdYMHUom6Km0nWU7b2GolGwOYQPJC+M9oHvze+fA0N+ThYqd1wfY5
	 is7QFhumv8WrQzSb6I7T9NwOp+BHqrPZc6cXk0zIxux7R4PlqJn+KqkWCDGw99LsjM
	 zLuQ4VKHSqjGYWh7dYhPzoCvL1QhyVeavC2Yr1MUZ76mQ4pVvaMwRqOuwq/N/twg85
	 GHuyUMD3DkIERuYwguZ8xWWvFAyxE86B/QyrUUNyeA25shDLlyInGQZSSR6Ln+Npjh
	 hYOP2p8b3ydRThj6gYqise+OoeVUmSz6+025ck4mtWPEZkKiea6PdFFHSTttqsUXqN
	 SghAhz4z5ykuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF28D609A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268815363.14649.11625562280883792769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24ae9f9fb54ff11a0597702cd919e27ce4756ef16e93702194fa78eeeab8ce1
Date: Wed, 27 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732688153
