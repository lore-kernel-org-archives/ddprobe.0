Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFAA3C1091
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783775914; cv=none; b=mxAUHaZaqr+8yiWFyII5g9bKGGseKwEFx0xWORFabT1TLgd8YIgRXl/0tKrUpVDYYId8Zxd4HZ4fnnuwsGfdfmM6Oq7TKBvbDntbf7OIEaN9X6rI9F6NsGbLTb9EO5mMH6EvKVNS9fpRL2wpzZDnShZDaesT5M1PsvK2locNhqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783775914; c=relaxed/simple;
	bh=U3KgFP8gmcVIo179unBV8nuku/T3418YXZwx0L7e5e4=;
	h=To:Subject:From:Message-Id:Date; b=J1MQXQdAHswI8LgbmH4B5i7w6TkD8nGqFx5+UZ7QopHQk0akhbq7yWnkobjdpyYhXH1T6bEM01u5eoW8wKTePywIHXDCSq9fp1jY5iNZRgOIa+FUc2kgqz91E3QX/lUnY6dvPJXqlaNEnYJogBdZDremo62TsMR4Ds16Q1+4Zk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYw9S/Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYw9S/Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1692C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783775913;
	bh=U3KgFP8gmcVIo179unBV8nuku/T3418YXZwx0L7e5e4=;
	h=To:Subject:From:Date:From;
	b=kYw9S/OgunqHa4bGgEmas1belSpPZS8Ni8qpWpD7KunPwGI6fkBj8QlXHickjnDNW
	 booHG3NH2LkJDJEPevuyTNuvKg2sZ7uRO1yq23IdjTB32xYkaHUgtFODaDs3/dlRAA
	 RRTopeL7gEhyVQWRIVP8MUd/6gi2moABQ1YSI8VisQRVRPC8wL+WdbgMke384kgs1C
	 0D7HmG+P1bPp4zTFawBIYdVyLRtlgUpWCclp0INscyL3/f6HuREqoh7wwKPjA/jk/K
	 LmoBdUXy98Rw0Y5DpNn9V4UvIZwXZfVoF5j50TWJduBEkcNR/9I3ii3lfqytGR20Uz
	 38g2MpddJ2WEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377591368.10555.16834367119080689924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8d92f337dfaf7bec88a5f5cfec030c269ffa06ad3651a00a8d50788acbfb0b
Date: Sat, 11 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783775913
