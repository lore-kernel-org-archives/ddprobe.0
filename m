Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B518C332
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662274; cv=none; b=lWSxp0pcXVIE6WgG6rfw7CfywfSOuHTrmUey0+9M/SwxGkyjWcOKX9/JP1AAN0Pw5GBVY9Pb8gOzVbEUuoY3nKDbENmJs3dZTgLd6anYYh3XwofEFBo2thx6+PcniPuzI9XRL5yAdwgcwqlvx0gskGWzZdJpFyc4sTqA+iyaKaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662274; c=relaxed/simple;
	bh=Mq9e3badNjTjiOfM8y88EySwZb+a8q6YP0Vd8MOM+64=;
	h=To:Subject:From:Message-Id:Date; b=tIV+av4gmCFhdkxAeVLwwIDG40eW5tvLrV3NHzwC4eID+fvf8uobC5YHRHOll0L7QM0OJ+qUlouv3NZG+degQxgnYuMhq8eKC7u6ohOI/M4lJqKcouyPPuQYhhv2yVeBroO64LvMIb/pIEze0+V9T/lsmwu/ygIXZWiJDV0n7ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRkek6xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRkek6xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37B9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780662273;
	bh=Mq9e3badNjTjiOfM8y88EySwZb+a8q6YP0Vd8MOM+64=;
	h=To:Subject:From:Date:From;
	b=bRkek6xsY4xA9TJMxDIUC83tbcwhUy1sFP8/Z/oRVgEjlS0aC9Y/AeBOVfCugiaYt
	 zwXOH9XjJLc5f5nLCeiH042SgZTPlQxVJFgMfJ2wXZB5ql9I/pMNEZKudI5u77GCRY
	 FQRxVSLgEtoN1zco3Cw8OOKa/vY27t6SayVEZ0pXH2h2GeOo1THLxkkeUnzGAdxdat
	 ZExifKHMSRW/ZV6mi5MO03ySnktt2VK5+5TptWGMKsoUkaiPq28e47DsC1KziYnA7t
	 lpe2G1WG4IL/3Fzvm28HgiGFLeZ+eATPVGm05BZMyucOuUvsugxzvvAoatcThfyKoo
	 rubdtjz+81Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AABCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066227368.21357.4505886797555283539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e310fea57bf32d91e81b7816aa0705c2d11578616af9f1df4b4dcb3d413b187
Date: Fri, 05 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780662273
