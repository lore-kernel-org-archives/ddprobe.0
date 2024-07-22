Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB9216CD18
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721662554; cv=none; b=a0HpFbSNhmkCYicqa69h4gelHYavXASbaQKT1af3ipb++dOKCMiXCnt15xipD6wA7Xzm9VYOaOrXuUgLGAv75AAU9sjOFlkgad/wYBy3lx1mXm9lcb0idtWFcNx6npKVh9c4Poo5CCGnTh4U+0upbBjKDAHyF/obwKRz57Jwc48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721662554; c=relaxed/simple;
	bh=WDDcm/3sGn2dkh+WxsvTi3fWHdUO2BscmKt0Z4oFHIU=;
	h=To:Subject:From:Message-Id:Date; b=DtPhIN7lMfufJ9tZLAegq/uATA0ExNMfi/U5Ae3cuoUf0SFg3zsH0D2eCm7i5Kzi3wAfWTVpI0lv1Q04U62/Yjf83FuRhQ+6i035qSMrYBw8rnADgnRAu8lp9kUPHmZHegAhi8q8xxLo89dmiW6yaLkhd0fWgx4IUX5bSPMY6o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca5vJiaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca5vJiaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A734FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721662553;
	bh=WDDcm/3sGn2dkh+WxsvTi3fWHdUO2BscmKt0Z4oFHIU=;
	h=To:Subject:From:Date:From;
	b=Ca5vJiaQd3Ir/y+anTp9Z7xp7LoDoEt0Mn9ZI84c1DwwX0/e5fMGHhqcvytXHmL/k
	 BpOcQnwEuprLeN50ovxWVVyChSQn3owL7opzydaF92kNN0epM9UBXzpvP8yT0fWlym
	 MCB1CgPNcYcG1AstaIsRJqj8AZnhY0vG198WyYaz2Voztb68Xqyt/uo+U54TqSaUpg
	 Rve8Hp1PpV7Wb9UIRn6lxCW0Dc9kpLK9GFttarUlRnTsAnv2ZiPw2m2gVQDiFoK5oB
	 5p0gC3HqlWTpxNdpqDouXQIZbbvYtBqgZIB7VpppY0TKJWDRGEUY3y9sBdBvVHsgtD
	 uoZwHqg0hCZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC3C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166255359.17973.1002711318747637470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fa0a813d17d6d1e9b05c9135b8f08616c901871dca69a9c12fb05a1e42fd3d
Date: Mon, 22 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721662553
