Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECDD10A3C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708778897; cv=none; b=R8hL06+KBIfpgN+3MCeBBA2IUwnNkNhu4U/93bVbL40wEntbZbOsV6sUHC90g8V0LzUeQd2GmlqovBoWNqAVX/PDoJ9z/SxolDAqDSu/75IBq292SKQq26qUJYsmUGe1Jene04dH3XfM0CuZqvFPkTLeEKzRoRexMKhpcXjtkXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708778897; c=relaxed/simple;
	bh=u1sOammQpfDZvMB6xzb1/x5imViLJ8MJQhVWxGMR0Ko=;
	h=To:Subject:From:Message-Id:Date; b=o82gnX4L0n/2FNkA9FKEtY6Vx/FnyjNf71pH8xmHcCCQdxD8CZ5+p9K1Sz8zMhRLwALCya/FtAKIaQw2BatpaeaN58IXEHkzP3G7dZ/igOvsZ/N8mPXVxmJxrZaBUqSW62KfMzmwvJ79m9+PW3nVsTWDWWstxbwWXmCSjpIv41k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqGfUcl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqGfUcl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85AC0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708778896;
	bh=u1sOammQpfDZvMB6xzb1/x5imViLJ8MJQhVWxGMR0Ko=;
	h=To:Subject:From:Date:From;
	b=DqGfUcl7fCGogyN5WWRaFIpOoGjJRHS+Vozpu+JyCr8x7en2sg2rzsdZAH98yWzwr
	 fBCgYu6XUs33i2IFH5I26EJy0gY5mKtGo1ZWpLxgo9B1xNDYBxKiBKFljPrFsmYm8W
	 dVTZgFX5OxZ4unc4ip6RQJSkENoTlcKisknBR4ezae3Cvkqo134C2yffY/+4xy+64O
	 T0wkv55Yxw2s4JYNoIpuGVyFFcsAzSiE2PUcZqXWpBDfXltIkSwxm52eEp+Rwe64Tt
	 Aq9VB56U65vxmWEqCOeKu9lw7sQwsaOqR0H9FDbOHnYm06D/Jl+nLcv7UJ1/1i7bBD
	 iURhhrCOFTvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A895C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170877889640.6515.13304378510006246163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515696acde0a557fb415a435baea4ab354163c68cb15945df44a83b494609481
Date: Sat, 24 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708778896
