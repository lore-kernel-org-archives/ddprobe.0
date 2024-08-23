Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11507185B79
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724409354; cv=none; b=fZqkGN+TG9pop0n+KOArAyLZevzFWruvcz5OaK2AFK/9GKUnHy7G64wcDDh6Ksf9x/kRDozUkqyymQ+LZ5ESt8hdlaKmFvBE4qiakSXVIdi3J4hydzc3qvEhEv544ohCuYZVTU7qCMe1vcw0KMdg9aZEAJHhEgze3dobXSD2KiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724409354; c=relaxed/simple;
	bh=jlfIIus0kweBzGGyk1yvrywdkDPO6EaLfDLQ4JfvYqo=;
	h=To:Subject:From:Message-Id:Date; b=cxQ8IcW1fU1GKSCbWXFoz0zzocQGWKx4U81Dw6qVFEoOhh2ifNlPeeUv2Oq6uBF2e18b0aCOoPSOwXkt/peIW8wBjEzJCn47TdA2ELsWTiWK17qW7d2UoYBM0Kus8mPYvEXlXA3Ur+HtuNe1hmwZamkpi3dWcsAqrPZiVr+SmNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv4KkKfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv4KkKfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B06C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724409353;
	bh=jlfIIus0kweBzGGyk1yvrywdkDPO6EaLfDLQ4JfvYqo=;
	h=To:Subject:From:Date:From;
	b=Zv4KkKfzvWCraK3h9zefHjTD3U0cE908FH/5bQRbEcluliW+7Wswn5sHHP9oWUqK/
	 FwQDd09GRzkJsghIeet7uVuXNFLozObLjgBwmhatinkG/q29MjcgYWfEHDaZZHXL7U
	 hyQezApzUqvW+vk54F/p5CfJ1zuTVuDWIkzCa4WeKwbHH1JwvF7zFaVT1YZUsNNVbT
	 XjeWCXJF647b5/LFfK2wmfsNdN/fhMmCcIp0tYmbt7UES5CunqMaEY8mfrXoYFsy8Z
	 ssS7ZYRyLjt+HKvib25GBnnDVsTGEUHCKE23Ug7DqQTI1xqYkQiifm5UxY9t7S3tRX
	 /fDbvBJr6NE/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B9DC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440935361.5142.385187014335923647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fed4f161927a19be76a1e0b2bc557ef6a8fef1593ce98eeaa7137b997372c6
Date: Fri, 23 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724409353
