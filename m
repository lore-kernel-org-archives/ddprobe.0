Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E9A152780
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721739354; cv=none; b=SPG8Iu6GcClvIi89Y/ETisgffIuhX0SRtBv8EXlA/dAGudRy8MYdvrUAqEUUMCqavVAHooIfG0rgj7pGpGw3Itl7f6lrU0eycxJiqf+c+Dd/gWINLzucoyDLJCQywtCOwFW2sl597xWcP5DVJO9M+Iao3K5wbVvmkz4qxxezNFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721739354; c=relaxed/simple;
	bh=EyDIzks7fdByREVOe6iLXrd6LUsHutzhnKZHgdvDuWs=;
	h=To:Subject:From:Message-Id:Date; b=V3yX1UNjvdmNlH780hmRe2jR6AiJ8RBCMAb1t0fx9ub5eDLgwnon62XVBSk9B1/jMrrRLFihDid8C3ImZi2UOOl8YbwOkDMG+/bn+uyjoUretE84/uyCR8vNp9/+PbZjy6cCyGQvh2yiZmjNMRsR2ySrLHx5nWJpeqcJ1AYfPdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMveNKaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMveNKaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8105C4AF0F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721739353;
	bh=EyDIzks7fdByREVOe6iLXrd6LUsHutzhnKZHgdvDuWs=;
	h=To:Subject:From:Date:From;
	b=SMveNKaXhgYqdvO4iLOKJ18FElqKnVPBDK7CZ8te1AKLuzxv3hOpB0qKhW69cMO4C
	 JdzjWFo68EHwUUyxwnq9fsqg4zZUHRM5GgqOd0j6QLriiYLzuLo+PI1FrZTb51RC2Q
	 jcZg4nYnYly/hIXvOn5MLAxvZQtVr3gOTPo2o4MTGLr54m06RsUELvAQrq6LfDoGQB
	 r4ZPbLia0kRf+0yTwTotzO+CqvPnbst4zR0XUGzANZzut+sDCd8ETHaF6OXmxA/oXt
	 2+QORRaS4FxqTHms+rbe0jPnBuAtRh+BgEbGJDrCAWMmcwUPoXwglHXQriAQeDLC3o
	 eko06D92qJqPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B26C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173935358.28472.2310847421585297703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c2ea536bc123b7966f03a615aaa7f30022a552fdbee98ef2f5bb6b9df6bee3
Date: Tue, 23 Jul 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721739353
