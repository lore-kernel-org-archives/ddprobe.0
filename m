Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C53C17
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771494; cv=none; b=gZna48e1jCA/8H0EcpPyeKxpXgBaLKd2VEthvUkRwkg/F6Mb6nFJ7hkUvgJ5TjZF4/A/DDuksxhq+lI0FeynujYq9vZYIUZPVZqkfpuNtaxtafq85ss/pv+X4v59zSE6xVWxrkpobqNGDSYKtyxjLnlKTJPbGw0LT2iQNghxaLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771494; c=relaxed/simple;
	bh=5lT7UWQc7M1ruf7WJsyxpLBskRhhzZytbnDmO8S1Sw4=;
	h=To:Subject:From:Message-Id:Date; b=g+nufEJ/pdALKFf2t6nHugTeNuvSYt6Q6pitbnWm4p5+Xqz5XpM5ayOygR5qxGDw0Eabr/HC7f9HPWwQ3Lk2ZxVhGhSqVevhST0t/QdVEqd7DDIfGiLbFJEzDDpQ2GABuFEzGLXsjtwPOwVazFyb777A8+7swOaOdSjXLgESHy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHIWmB92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHIWmB92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80FFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771771493;
	bh=5lT7UWQc7M1ruf7WJsyxpLBskRhhzZytbnDmO8S1Sw4=;
	h=To:Subject:From:Date:From;
	b=QHIWmB92+D6F2hlpWbz/oq9mAVUtqycHcLikFjJjmdj/II1I5umTZ3a4sLJG06+gt
	 yZRFmT6xWfbyp2PeeucIf9ZHwwDpxUTUJSmiIUqo0HIx18OkM6ptNTRjWGfaezFPdt
	 5RuF6ObsH4HlurosshAK3C9dccmgsCWWDWkmLV6WMIOhBD0OPiPWok4WWQSVnEvuzj
	 gpqh7uf+ElCflksPP8OLUxN7Ox/6dQRDWvj7gIxdZ1WEW0VlzEaR3Pr5YMkCr0ZL/l
	 LQRRHAGvbnBLWbwF+gqrVfBWotDL27zuHtErRMAn3SJnkRYrum9lp+R347gYesvk04
	 ouEN4mBHVC4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9658BC6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177149358.730.9289355395585059273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea250a9b6a18d58a5ab137c66f9f8b83455de2a3f3d59d4728ebd9f2fafe60cd
Date: Sun, 22 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771771493
