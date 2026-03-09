Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2164236CDE0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773093294; cv=none; b=WMQNKNyNChucQYfGVf8j+NiPKYrNi+xOTwgRhxvEMSZIKCI2yFo2iosS2lFxxfMfsukSzX8/z/GpgJ1oFXA7MdO+qr5PzvMvDW1UhDGLGcySOsSzYgDYCNGJPT0CXKhp3DrkEMYNG5r3w6euIRPz/I5BtyIspWVtUZtWGybM5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773093294; c=relaxed/simple;
	bh=59yAi/6Dz8QvwnkArytC686JFDnP9GeSvLgAf6UkXaE=;
	h=To:Subject:From:Message-Id:Date; b=EYyVOAry6F6ul3pRdecnEhOoAfTPKqbJ12otrEbLj74Cfs5efkymZophjyxSGN7ap5AcUmYiP+Gsd3oUksACyR4wxsL1/nVIVP5Djtik4vHdIjqI1fhjmOQi9sOkRqxiB8SQ6YrxMyd1PUlOsE3ic+J+1SiIc/XNlo2iZnwr4SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcXWX9Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcXWX9Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15B3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773093293;
	bh=59yAi/6Dz8QvwnkArytC686JFDnP9GeSvLgAf6UkXaE=;
	h=To:Subject:From:Date:From;
	b=BcXWX9VxBKEAT7lSFq7H4VgHiobHZQ4sx1uzHSaPRWxA+3AT9pTPKPvZHRL1BcyQ4
	 qaw/lb9jcmmtyhs5ih2GKYe1rZz8pbXOyNXEiNoOw3X3Iuq9kL9BUeSHnbbOyqsTCW
	 DKUWi/ospKrHn48sYcmaze/FzAGLCLO5cy4UlUS2CpvNMJ93tvjEA95HNxRQYc+YCc
	 QSFWeSCW9wdi/EJhDsebKtFrCmVZYCLNmTwo7d/jncz+PTtiYKr/0SYXFUW3c5hRyN
	 G/OgWuJUwwFIfika7VsVHoVZjgcOrVgJpb+E4Kd/n4ZIHjDaMTNz2W+U+IS5731pYo
	 jy6YORUTaeUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDDBFCA195
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309329363.24334.2475155274387930260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6ad33ef29e28ac44306f759749ac083232244911242b389a34ca9933c3bd2e
Date: Mon, 09 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773093293
