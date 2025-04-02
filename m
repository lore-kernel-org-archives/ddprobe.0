Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E9D23315C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743577794; cv=none; b=IYqTMZxvAgmbrLPcArf7FJeDdlFDYInBSvIzltTcSZHQzPBpUM6k6cz7qq7npRRODeKXFGTZhqHjMbCZp1Yo1rT5wAeJbZkZ5zIsDxjCJcjy4AnUI9e+VOZCDnDPY5wBpOQazvoZ3X5t2IMJ5R2Thu0NeI0DmsbpkyNuYVEhik0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743577794; c=relaxed/simple;
	bh=WM94TsPelakescnPhn8BXhlb6Qul6w7+kdM1r5Ape0I=;
	h=To:Subject:From:Message-Id:Date; b=F0iaOpoMQbbsy6Owj9UMtGlJ4YuELT1QtwUBlzUBvIdSX97JxvpmkckCcej1bFvoB1osMGtZPex53KQ+1RRDeRd/2H2QdS+y5f0PvUSQV0TyY+j0FE6l9+eTHolGTvOyGQ+IxSz8oqf4SxKabhSbqVmxyTfs+sel9ke64cJuoDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBTtLWVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBTtLWVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE0C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743577793;
	bh=WM94TsPelakescnPhn8BXhlb6Qul6w7+kdM1r5Ape0I=;
	h=To:Subject:From:Date:From;
	b=BBTtLWVmdoGzrOTXS3H1YcBWAepcFwaMW8KpsTSbx/F79rFLird7HpJJnoxp3ySaS
	 7ruL/lvraBsKy8FsNjAhEtfBrfvWTyVzuKIo19BAPrWwR4oFuaGN0sEcFvING3bM/W
	 wUtKssvC1/4dS69hVdwdxPM1ExxZk4cCOKCjDUWXs7DzZCrMUsCcLzecHatGM6m7uF
	 j06jhAavR2tYTbTp3Gslkx8CwiokNlMgx1iZFDvvHpFBarAtzPTwxMLpUI6Opk9nOJ
	 QugNmM7JvOi1MgpMf31uv9mn3oi2RmwYnQe2ldc5SWkybaW/BoOlx+A9skhv4imSCm
	 DiZSXOyuuf95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BFC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357779360.25922.18018459301749952369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3044b9d49ee1e5f535b07dafb3608d321a40dae94f41d71f787ca9563be9bad7
Date: Wed, 02 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743577793
