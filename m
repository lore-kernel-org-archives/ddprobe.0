Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21418613C
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710977297; cv=none; b=YjURYq8ZX+fJ5xj/x7GKjQyafklvNqBgDCTuZRScWql09zNxG6XyPbzf5h+/ryxzGGrF43/d4Rpald+pXkXJf4lmek1viNOH//AzZSn7oVeoHWPTiu3lLclLRl4XTGGHQz1fxg0j/+sLzFmnWLmh1kt+yxtk7dLv2n2VynfeAWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710977297; c=relaxed/simple;
	bh=vjOltjIV3GDuROjZR7pDKuLEbHAxVK4fYrQOMlqy5n8=;
	h=To:Subject:From:Message-Id:Date; b=rBosY4v3aiitxWkoPxDGi+5ojNgoumwQTUBiLZp60f84r6hK+E6FMnnAqZdOaij432biaWlgZRo3sYYz83UH6Q0F/Zy1Vz+rP/WP4dpUoN36As24qaBx0GHSlNqm/spkgHdC2sB4ylIBN37+wXsjPjjTuN70OzI/Q5dbUi+CaZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMQdk9Qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMQdk9Qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B0AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710977296;
	bh=vjOltjIV3GDuROjZR7pDKuLEbHAxVK4fYrQOMlqy5n8=;
	h=To:Subject:From:Date:From;
	b=vMQdk9QfULCgSnE8GCegknE2/SfHoeL1xbTzNiaiGa2QNWXeNTB7v/IokvN5RKm5W
	 4KW1MrU2UvW/QPAndfF1qYyvlo6buyxqfpKWfinuY9kuxu9KEs81pwQzhD9i+okNpj
	 jSSJhnDqvDC4F6UwLIB7VOl1N+Kwm7ti5qAY0nkj2l+x6XG9lY9qOir49xfEx0FKZp
	 OaLGnqEMeeM8czlhMZfuM9tsmd0jeiSTpl9Yp6R3JYj6tlokUfBiRfD8kE90bJN/9K
	 StRnjHIKAgszhm/wzyciPetN7OAPfYN8ORhf9WFR8w3c2reiq3rtcPN2xQvN7YhOsR
	 JK9Tg2m94MNeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64953C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171097729637.2180.1896468754286409514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5132b969693579dd99791f0a15a25b11ac0625dde0790d1234bfbd01783913df
Date: Wed, 20 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710977296
