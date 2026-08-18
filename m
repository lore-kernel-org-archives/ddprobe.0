Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE0C3E44F3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787077834; cv=none; b=DmTb5EgKfx27ucxI6OqgOpJnveP/W5Eu6r0tMqFSZQ6yqpinWGN9iZOw2PMEFfZrATLv0T8m5+K2f2kz1acPltBA5cL+yRBmtDehuHwBvWUKXD/9QJoKlW3QCq9ONHER2g+/TQ7lNlla7OedIzcFOg+pM1ckBIlDEXIesgqaA7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787077834; c=relaxed/simple;
	bh=EnhDgUsgTvFgm9BuMNxfB9oreOQ3idGxLaWtZqC+LEk=;
	h=To:Subject:From:Message-Id:Date; b=AuG8mp0cXyZe8cb+5lPFyyNuXmayYGh6bagsLVvvqth6zsb/77x6juSPA2VlFihwC9OZvNZQWS5sEuAoW5vxkIwSrSLCEYn0Y8tq/b1fB+s/m9jWyeZJp+7gJqGs6Se4HBVQLdN6paFg+EHIpr2+Cai5wygLJCpRS2E+8UozQ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSekmrjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSekmrjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FDEC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787077833;
	bh=EnhDgUsgTvFgm9BuMNxfB9oreOQ3idGxLaWtZqC+LEk=;
	h=To:Subject:From:Date:From;
	b=mSekmrjHTAMWtzWJJYq21EFdk3E9AcM/ICki0V+CkjUuxxOR+qjBgJZgfJsnQmKDB
	 UgPS2q5DnZvsXGNRiw/Gf4NEzqz1RZwFbeiVWT0pcVanFWNTT2c8SHxHcffVJoMXDs
	 hJ+j/tFohA51Jn0EhvBySE43PrzVq37AXBYdgMwwBhWkb5b90ovj4zRxxBu89ABetV
	 tMgEoASdGQsvErZe7fYNUSWC3jFq5JuSdp5XGc59QhKkTEt4lcKZON6PUd2auj2BxX
	 O1LpPMMR3wV1+iQY9ABV8rjljQC974Z1aXsbEdwpvyuDsmF0+xIc/MA9PmmpPJxLCn
	 SqDlRgcIeXGbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5F3C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707783369.20413.10758978926678564543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2125dee7015728c8157cd7742cb365c8583f9c7ca09ca8c0894c65b5c9170d
Date: Tue, 18 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787077833
