Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD1311C31
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754943594; cv=none; b=QkS/dvR7ImkbM4am94VnYnhfvG4aH+VcvV4vFs8t7IC2u4GTfXpckSTSsUkB2BPI1jfLEOuYc2LF3yU7vYi4A8S8IO4DaP/PI40r4FmJWsacSheB4IutgfaIwVs0lBsnG+NuxC+CBN3fDiaRhn7GZmQ7QxPo0LswVzsVE/1O/UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754943594; c=relaxed/simple;
	bh=UR/1bTR1+f0rauJFaPUmsv2rSrkQzWcwgG0x0xJFzfo=;
	h=To:Subject:From:Message-Id:Date; b=WfCQwmjq4sjEnzdNrrx5Dn3n4qU2Kyq56QltIM8qI0eJTLHvsKS6kU0B1ei0HSnHoEoAtE+NrG7irgHLx/JWPCa9KAKpPaceLmEWrdq6B1qpRr9NfnSi2fk3mwB02f/qN61Rrg1IxmoTE66XQLpue0dpTXduV+1p2QJLdMoaSn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltHZncqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltHZncqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754943593;
	bh=UR/1bTR1+f0rauJFaPUmsv2rSrkQzWcwgG0x0xJFzfo=;
	h=To:Subject:From:Date:From;
	b=ltHZncqYqAzdCW/c630dBKdKUHvgDCG7QxbdYxnOPzvPLKgnwFEzp83nOBZOFKkuI
	 N5InRtPh3czlTvXAeng/jl15OmAuGgUizTWNfGOtfJoV1svXV1WEshlLYH6VjIf9fp
	 Fi+CUtoEkFK1LYFAZJf+Lge0SNL7vcS0pUdHx9jtFA6c1WYlVqeUjfLC/03k7I2wpd
	 9XviSVeLph6ZP4LcX1vBiIlC81w20WmPnB+B9NZLF/g+Ai0gcQ+0E+Lf2XwFM8F/pY
	 Ybr58Iq5RL3ze7GRREUfeiFkrfwyW9B0viQZee1vycWQs8woucK3vpnbVNc7BXDYH2
	 2TS3cpCACGqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD0CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494359357.5740.1271289256266713050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fbe1aad16138acdd8c914a6789a6b8ecb2cfdd81a81754dbf960ab3f495da1
Date: Mon, 11 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754943593
