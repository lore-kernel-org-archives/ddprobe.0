Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111A62C326B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754902794; cv=none; b=BYSWXvAEY2MT1ggtC1+FXy3vpjyjJgXH67YQkgoHaWMoSzpiCBsO5v/bYkUrERGEfh4GywNy0n6+SpypyqREAVcIVP+LRcEu/69z8tyIpPtQksrZiWBQAdju7aHQJQxt3do9Dxa3s3aLG2va+atUIHGxX0cUQEh1qBDDUG/IW1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754902794; c=relaxed/simple;
	bh=ikG/6sJTjrLAK0RVxNHlcRcDm5yZM3mA3vPAoXtVDtk=;
	h=To:Subject:From:Message-Id:Date; b=Z2Otr6xHjwJW5MszBHT1F6m+m5z5xJzIayVV3Of8+FvVwzf91OuNg/pk3uYLf8kORc4dg+Ktdm7AYrRCibg6r0+52hwmqJVQRu952vCZpfUnN35c3PhR6uYDvIY2dmJmygEhie8ZUkqK6XqBWpbrvgKo0SSfoB068MikVeKfAjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldwSzQro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldwSzQro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D20DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754902793;
	bh=ikG/6sJTjrLAK0RVxNHlcRcDm5yZM3mA3vPAoXtVDtk=;
	h=To:Subject:From:Date:From;
	b=ldwSzQroVAqtSMx5snWDpv4NFx+R90fuNoWTqp8ZvSSYj2vfcFURWrZTM3xzaJTcr
	 W2nlCLfkyYsYMp9U33wJOronabLusNqyTfOIWfTo+K4i8A4z9G/87sLVv52CrPi75+
	 D1TZWGw5wd7jQaDhGpfpYxFDRhLokNkfRGBo3xdVXXPZb7FvKAIDxhP7+cmhnrEt9Q
	 jDqwWB3LKgKlFeZv71ah67s1d5mp3ZGt0JSZUDHGRVkZpbGVwTbHJwWOGMRKo6Rg1f
	 dVT307MABoe2TJJYhQn5ja4kLIYSaD4YGfIFqI27/d+LGI6Rwpl90geVC13x9OaZLB
	 zeXpIYfDw71xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F178C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490279357.7048.14311656828088442728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266830f0ee4f583c62be0ccc074cb045c84d9426b4f29063d720548f7a15a985
Date: Mon, 11 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754902793
