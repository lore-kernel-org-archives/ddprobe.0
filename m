Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF72D528
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747016994; cv=none; b=jgU2x/wuDfnytrSyuQB5DplaHrmg+VmqJTQAzdDKmIS+Gf4PsSe8/n82QES9WZGHJdYpOafpdvGrXmka/hZS8VybM67asnltElGzGSlwV7Oofqfd2xhad+tz70cvwKx7QoZ6s3nWSAqPxvgkOukR2UuHBqw6WAsMDQWVJLgLB40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747016994; c=relaxed/simple;
	bh=UHcEMYyPA0bnfiPgWiblBnWA7oFTWpCmPhVJZXqe048=;
	h=To:Subject:From:Message-Id:Date; b=Xqj+MAEche2fA2D8nQDRWaWp6ki24PYB2Qku0+PQOin6V3O62r1yw6JzaLJQgtWg7EUKaUneYelEcSgevg+3N3K2ME7nXbbD0lW6rEjMuHvXdSBqL25UWsb6i6TFyOZc4SO4QjvXji0nh84TpR2/dyYz4TUbazH++Fu196enMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJrtmv5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJrtmv5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5645C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747016993;
	bh=UHcEMYyPA0bnfiPgWiblBnWA7oFTWpCmPhVJZXqe048=;
	h=To:Subject:From:Date:From;
	b=MJrtmv5Mr16DTsvCBAXZRcnDGH9FBrEQ3fstmjIYv+fV0Y7tovJ1m0i24z4K4Stb6
	 cZRW12/HOu8eUlPmjB61MLjm9udGIoxjI3WDi+r/TllE++pq2ynJMocTmHH40IR9oZ
	 kgsVW2qyAr3R4sn/sZuE4wYpM6XVIEyvruJWTVeqR8+m6wE0sxINgQ1KiKiZQuT88X
	 KsepZlLDPOcNk+PHucA+11SjUsRnnHDVxTaLoy5lU1FeivGSsNLDkbeTfMx4A8xItc
	 Gn3ZNjZF8ta4WbBRiIdi+d8CxytQuNuuJtrpe6cLI8keQYRFV7sWRI8YqRzJo3EFMb
	 VxlS8mvQRxuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E32C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701699357.3753.12958068994970611702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecd0135ac0e9c5330d2907664b510e1b2df13a21acc347391ad407f2faed65d
Date: Mon, 12 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747016993
