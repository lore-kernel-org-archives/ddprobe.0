Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279DA3E0C6F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779178834; cv=none; b=t4wqX5VyIpm5qVPLgMsEjrzOog7lG1D4HXwTDEGnMiM+5iGF/NGoyGYNTmC5aGJaiZtpjXJ5KBb98x7QneeT3ujEh78JWcK0ecLmqk5pkxhSYywRWqZU6BXZCZqjALEwd4V9HpemvV3ecj2eiUp2XKAyV4k3aR8QG4IgTXfwTYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779178834; c=relaxed/simple;
	bh=CwBWKj7MznD+UipSnTB+O87de56iasoyvh18Lz9siLM=;
	h=To:Subject:From:Message-Id:Date; b=C8Y40udsXTsZv1I89iu9GC0gDWOSURrpvxvr8NhmOu5z+M8ef/LOA1b3Y1YWZijIDGTPyc0VYYkYDLJXdsj23k7E64fdCL8If3Xy7219QTriOv1ADf5t299ku1YDnKQzSS/UJDkKnEAqCk+HRHpX39mKNOIjsOeP+Kk8M56cMN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teGg5HZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teGg5HZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF107C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779178833;
	bh=CwBWKj7MznD+UipSnTB+O87de56iasoyvh18Lz9siLM=;
	h=To:Subject:From:Date:From;
	b=teGg5HZkM9CrknbAg9n8HnrbaNJk6U5N9q9D5/qqREJrpqMgaaqiJe0Is4sogxuvM
	 Nv3u1YighgaJfBQlET32nbfB3QWiDYK7FgZ12AtXwUd0LPfwjCacP4agvVx84BY3g0
	 NZIrt39t+/r6I2ztBCDjUMkogKXNv+bwiNFAl8XFU9YtOqlRKBAKC3fiErVwL0FxbX
	 Q1fD9qiTnkZrbJ6lhAk2Tg9av0/Erm86Z9kL6EtSoPd4KPisOHW1/BO3dPuB2Ju13h
	 vxmSqa6S96W3bNPb4wgcO3tXxQLW3wLHgDVGzXT1FuBKbyc1CWT8VV7uHF+9rh9PAK
	 K4PV49BxoobjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD0CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917883371.23009.15993230391689564460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d41eb9a3260d4048bfe51ad6875977174599fc0d2243bd3f599898b94e50146
Date: Tue, 19 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779178833
