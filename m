Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D12476CD2
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789551035; cv=none; b=riaASPvd/6+v/MnjynnFKEZ+5Vbg1mjmLulh1Ij0bhpf7WjOVx5CZKlQLXJi/pSJQMK65O2gazo8QsptOF21wmAplkaSMCx6lCLcTpFxyxZAt8jhn0yDFUmUEneRAH0zAGwdjnaAEI0YCmrP8HSAi5KXrJj/VS/FejvGHU4daVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789551035; c=relaxed/simple;
	bh=xUuQ0ZDBbFoDfaB+GU3PY74l8GZefgoHOhuF+9x8t+U=;
	h=To:Subject:From:Message-Id:Date; b=mp/Hu712SkHyY1AOPDQQXzPg3WcbL+TZZNyzC3+xajAQf3BlJL7ldpLW0lfdpkpZIjFxrARhD2DWgvlTvGzIC1P9YLGz0JdckU+HzC4cnEf98lcgHbYqUEXCe84YOLEkVdgOewJJwmGTBQmDs9VSBNYXto0DRS1XOzhVrRsPdRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT7AFQK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT7AFQK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA55AC2BCFC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789551033;
	bh=xUuQ0ZDBbFoDfaB+GU3PY74l8GZefgoHOhuF+9x8t+U=;
	h=To:Subject:From:Date:From;
	b=YT7AFQK/cSwtxpnB8hlaUcXRrEuvaBgSP9Fo4CsLy+8tOmbQpG5shtBc0vknWDdIo
	 KTM/4R+DV/eAX+nk/AN/bHbluSoN+b+WNcZXDYlT/fHWHXeOIBrR2xDQamffKAMnRx
	 s67fqtktDjRy4NJZGTVaAWCMzyHYD3CotoQx7hpeeYxbojkG3heZfRN2QoRAexmzqj
	 c+Hi9bjqmeGwrDxc8XOfFv7oiuFX3FkOQLM/PL6k3IbmkwDEi97AtS+2d6E3iv/gm4
	 xwfx/fKz48GP7Yf+7ApcEDwfqxCNPBh/4f7+dNkJvdloRmo5vKdQqNVFwz4aghhOvH
	 j5NzI1XVciigQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58DC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955103368.21522.12003783906208998881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae10ab8496ce35080757dafcf7967dea91faac77b81b2c5499b3d1d15bd4eaa3
Date: Wed, 16 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789551033
