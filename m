Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215EA21ABC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750377594; cv=none; b=X/q+yr61fGgtgXVPjOatDmUbAHBih+nmix/q2hyzPSmkWgds+z91Z4OTTUo68mjRlu2ZYNbpSohJM9EC3GdfqkL5VPEhxR8rlj4yjWX9n+ElTSuMxym/Hil6hjn6dykVKvKorftWTq2kjLlSq9xo/Hb2ECpactkYMvd+vi614ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750377594; c=relaxed/simple;
	bh=GdHaXqC5RnDjm1IQoLmyJxACoxMrv63MmLw9+OzLdwY=;
	h=To:Subject:From:Message-Id:Date; b=FZZkbJQInyQPszLQmcS+xp4GDkqgjLgHKAVBrVYs1+vGRn1xnkLXhj+KFOG0REb8QQyR6Ek7jodpO5c4wrmM/BnyOmK1f2xBdu1o0ptwIz4e809NJIqtPReEQ/KfHREHqxezTycNd/TGjtrFchTRbBFwrqhL9VpgzyrNMmwj2Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjSHUX3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjSHUX3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750377593;
	bh=GdHaXqC5RnDjm1IQoLmyJxACoxMrv63MmLw9+OzLdwY=;
	h=To:Subject:From:Date:From;
	b=OjSHUX3v3tq9aJK2XhAOwFsVu5D1RyyLBJGelZKzE2H1BbT0Yew1acgQHM3ko49f5
	 jAiOgw3O3njLNltefY4wgmLEA4SrWyhs/1eF6PoIj0stl9RKtCqOxtIqXQGnQIC3cS
	 LHai48TI/iYHiDuEu74/WdU8K+VOnKp7Hv42KJv1vROfIOCsNbG21drjEdn48FGeTB
	 3683Rg+TrtytWCQXcxkQFham5qTrR2thQ3CnxfG0gXjD0OQfpoOEcro9m8S/4n1LZH
	 u3SsVM9Q3OMMzluIAbE9qu6f3hUkEghjdtw5r0SiIiJQGRDZzI1ICw80vw/riwPz3Q
	 bikiz5x4vho8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125BC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037759357.20323.8503065548992535100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0212ff08cc0939f29ffc4fe648b8705691518b81ca0608b290f8cda54f9322fe
Date: Thu, 19 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750377593
