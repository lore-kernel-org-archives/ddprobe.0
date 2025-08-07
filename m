Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F541DED5C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754560195; cv=none; b=VscUOEJv1hy0mogi3nbaRexlABS5r/MoRYK+KnDH4JTQ+Fq39ifqapenKiK4u46EoUgcpJK2nWPXNzHH/RmCAxc93keCqygDRO/pv0xWsKkMdrv56kvIyhnV6/dZu01LE/iMIsUqMZVNA27mtS0yTJk/1wnlDWyzlX8PSl4N274=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754560195; c=relaxed/simple;
	bh=KwnR0XkebcrSlvrkSOvm0/6WYQNM3grdwq2T3AXD3oo=;
	h=To:Subject:From:Message-Id:Date; b=P1v3LbqITjM80ieD5gAK6UX1IwxPldAEoGANGkIiVjV797ZizSr3MFXQbIsfb73B2tsvNvxZpo5BAOHqi71KtR4WmaiJCdUZLcq98BNNd62n7KvcyN/4VUPlk50FEWS0ETkpUti1O16GYMc8zkanuhWNHs4R7avonKSMofUZVOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ/28yad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ/28yad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AACC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754560193;
	bh=KwnR0XkebcrSlvrkSOvm0/6WYQNM3grdwq2T3AXD3oo=;
	h=To:Subject:From:Date:From;
	b=OJ/28yadqueDWb2TD5I0tnwnXaV81DCtf6luQMJwfdcxYdR5g/D8lDdk7I1F8b2Xu
	 mdx6DaGARmDI0bzADbw/3xfxbDf5995VyLmDvkXdQNoeW0fbMTUu97NXwa0iYkb084
	 CGLeVlgEwrEADSr9TBgntMU3AuGgIcWKWEm6r5YmwzKSzqzzQGZFg1nz9mVCjW36SV
	 9H7XTw3K53crmgc2msNek4S8NxbVe8yrelJF50t3JXEY6l8DsOMiNYEtB9IT6f0mH7
	 88qoQCB/s/UctJNhn1z3uz+e2tj118gtHKIhWjPPy5uCd69Kl09s3fQIN8hvINULni
	 GkJPvJppCWLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93257C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456019357.1410.17831020904719594151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b75ea7e3833c8c4bb5bfb6ce6d001ffe4833113506fda8cd752c0b1ea1a715
Date: Thu, 07 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754560193
