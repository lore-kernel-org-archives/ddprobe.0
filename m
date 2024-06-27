Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5670D1A2FC3
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719531863; cv=none; b=J1c/1B7XxY+Uf57xbBsf8X6OMOo8Hx42zMo4hu3HQGvrY7JRcjBQ5AnzRojwLWZk7DS88AqnVTsOkPbRb4owpokymp95O2EySy0LHCdEnGP2YIDrMM/9DJb26ynBTIRSZJ9zo2rAt0HySrBgE+/QVRgLb0buUF15feRCinqeueo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719531863; c=relaxed/simple;
	bh=AN7UMeaaBHGsZuTYWuXQFY3SRjT9LZHutbPbtsgoodI=;
	h=To:Subject:From:Message-Id:Date; b=AaRNLTkdUJsXd7ouYymr4hinkacSGILk2wMj4fJkwXGZpEfUuaLjUVyLERM1lk1oXqNsd2ySCArRj/QcaupnDHYz8V3u4HfkfYIFyIBbz4TcthnNBuXavdyDLLx0Eh/fXwJgeb6mL1dEHwUt1FTqBReO6reVx8VKcq0XIoheTy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRBfwY9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRBfwY9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719531862;
	bh=AN7UMeaaBHGsZuTYWuXQFY3SRjT9LZHutbPbtsgoodI=;
	h=To:Subject:From:Date:From;
	b=MRBfwY9C7iVigGUa/XKwF3nGMIlSYEuBNIaMh/1SMTGfUUyB2JFhUB3C/CwnrMj4H
	 RdjRu5zuZzzRwBtSXlbXYJ60fBuepw/E1ANgFmgVqaVLtARxqJtjZSPNkLAJdviFIU
	 bceOgHfDGyLzl27qiHqH6NECPu5iCGh17/nXJPZmA2nYQ7xfYb+4jnZsX0Jeur5GIL
	 I0q0PhESR2ndgkoQCN2R/Lq525GSew2i3ve4Y0mq+l11ojPAz28fP8M4RiLo0Oxpki
	 VmynGfhe/pl/bxCmY8PNb5zgiSwppy3R/qzVa3f1xTH0xDH0viUXkkuIR8u2K5ISTC
	 0mTuhnE50B6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C60C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953186277.28737.17938912462535994714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bc0d76b49b0e7e677b8b905779c2fe206d9e527433e3a5d75f6216931f9e2e
Date: Thu, 27 Jun 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719531862
