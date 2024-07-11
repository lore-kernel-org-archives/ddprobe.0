Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425751662FE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720709243; cv=none; b=DYaTBB1TleNN9FavGmi8J2Vd767Rosnc1AHp6G82+eyBk/2BcxvmnxvqcSeR4ZJ0/Z1crPhd+VRdLleAYD6XVnYNhb5fJy1JizdcXqAlBKmtjl7j92ImKvTjQNV3Pfb4QXLhbGs1banrRr3m/nX6lkXc/VcERuRds2c3xlRIuys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720709243; c=relaxed/simple;
	bh=LNZmZau4cO7g0G8ve3/dzdd/O9V65ohs8sxt66xc+g0=;
	h=To:Subject:From:Message-Id:Date; b=ZUT9+kzimsCwtRRlA88LXduDHq8qu+03qDw27NECWxGf2/QcvhMeSN8OMaHfR26erbPVTmK1gFnqMlF6AsDA2eVqnnGiZPh8Gcmp7J+9KdaUdbASHu4VKGDwy0hZBaX2A1SEIciLhSlfGWjKpzh9SRIexI/OcOV8RBquncnjMcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnYk4GwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnYk4GwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0C2C32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720709242;
	bh=LNZmZau4cO7g0G8ve3/dzdd/O9V65ohs8sxt66xc+g0=;
	h=To:Subject:From:Date:From;
	b=SnYk4GwUzJccH1/LorFIjX9cM2G6ubPIC50z1t87eh5WhBWXAZVv+cC5eZnYsJkyb
	 sKgBt3X0itHAZ3bFK9DPv5SkHu1A2u4E+SpbKzMA5eGNAiOJv/D5nC1OB0ZSa8R0Vw
	 CSKqD+r6JnpgBDAONkvZ59avRf8eN/fZRsEWy0mZmVCLp2B4aYkIBAX/+1dHiffPAu
	 PDmnDqhaMRKUx4o62t8jbITmGHQRWoWxviYEfpSnXrV1w8uQ6hJFVp+iXKP17PBZ4n
	 dCg4cJNKX1Dkz88BmH3dWBU0wawKgqTmiLm7KMGAbMcavqc9R/uBc/afIi3vVHbweI
	 Ifhqw7Xmb4CBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C560FC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070924279.14058.9834364659342012767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f8c1917c0a1df49aa01033c4a10cb218d90b08b3f1e778427ba41f766b19f1
Date: Thu, 11 Jul 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720709242
