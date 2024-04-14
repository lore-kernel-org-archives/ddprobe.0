Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161F29B0
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713118763; cv=none; b=qoY5wKEZNUQOPegwgu/DBtnIvUV/b5XHqYaNZxIqXBLQfMVaMdDaqZ9TF9+KVLAhWkOAhf2hKZF89RKAsW7wWzT47h7/N/HXsgdAuncs2UnuvYkt5FLQvOJZ/Y4Ajk/6aMFv5bSPj/d+w5bn4E+vb0Eniv/V5owTyVzUWgMDsrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713118763; c=relaxed/simple;
	bh=y5rkvz95Yey98mizP1mY5TlYglUXw6F2kA+3Cxd30iQ=;
	h=To:Subject:From:Message-Id:Date; b=t3GWYQjc2Mq/Btlt9rQAIJMlJmaepSE3LMg/3/hiD+j/WY/fibfS2JSc+l6lmgi0niqkIdA+TctNj1Uv1UyblOmdSLrJOilwKZbj7wgqdq89dwsdi/QQyUsLryTrrgfk8FGvnTv+leTR2jncF0A2f3tp+wWnch9pPEdp0UDPUHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru380gAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru380gAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17F8C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713118762;
	bh=y5rkvz95Yey98mizP1mY5TlYglUXw6F2kA+3Cxd30iQ=;
	h=To:Subject:From:Date:From;
	b=Ru380gAkAQn73l+HlQdBjG/dgw0KxFZZ2drwf+UlGhKDi21b8op979jKHwwwKtaga
	 AknElSbVNlA7Ya51WU7W9ZXjKzROEkgkd4pvB3Km4sdnFtYUdOECo8gvYVt/n8ehzL
	 fbkGOJiVAUQPNrOievjfWWRWoPPcM3zgdMyL5epibxvSEb/F2VEIGUi65j/OkgaCO6
	 +4LSdn+94GhrbjRKMA9QqIWOOIGsvZAMLhJO6ectwQGDfmyNIcGQLOTb/ONsg9v0yQ
	 89mUUAiqek8N2zfHJl0XeZWteX1Fllh6XT3hexD6WqgRNDDaM/KWANMPBRdRVjXVV1
	 dT2e+w9oGK5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD638C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311876275.4314.6392705465097264497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3717617f9b27b6fd4c89cc16dada029bb8df75b4e0c9989f872cbe9e7bc3e43
Date: Sun, 14 Apr 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713118762
