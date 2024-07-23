Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3714F132
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721732754; cv=none; b=amE/vkP8ZZ3JvdgUEghYvpxTbTTJl1RGaACScfv28GlDUis+8UFSco5WVfieRm/TTiUBfu/s3nR/j0BQ+o+ioNPPQOS+/NNGXF7XzC4ITJRaA9EJB4VsD5V4mXY3pzc1qOoa5U84D3aHzSlY4cp4Q7qfKb2iKEiOrQ0vZjDecAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721732754; c=relaxed/simple;
	bh=Dh5A9i26OSHi5eU2qfqoIXDcNbdGD7PRwI72wMfeM98=;
	h=To:Subject:From:Message-Id:Date; b=GgRixVpY/60FURXR50MBl6omKg5zzvAp6EMazeJ2xnvQGJnAyHTIsQneTeUWIY+YWovRQeZlk59sPh8YFk18kDo+MS+Rv2gNhRezVoAgm1fkas09IFtwJoP+BeHooGgr6uY1BnBUsmRczP3PjEP8tPFcM1ondEW1NzgQiUwB1t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPOKIIvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPOKIIvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77ABC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721732753;
	bh=Dh5A9i26OSHi5eU2qfqoIXDcNbdGD7PRwI72wMfeM98=;
	h=To:Subject:From:Date:From;
	b=MPOKIIvHNHsUzmB3xuz+JLTZYxg3MxLCmXldaMantbQDOSOrwAg31VViAF5wEhtBO
	 Ddmyi/3T3X/wOyHyelFWG9ZgMA3e/4oywD0L/BvRieoOe47utfSu4W04sf42rhZsDN
	 5KccUVCzESVHT/NDKLJ8/sFDUjZT7gIaEN4ffigcJhPnTsVPLOhZrFYHLVqxEKA8gW
	 gjzud7Pu5bbwDdl0b2urIhMDMQl/3gGCsYL1beY/p6U6vfdSNFQFtghaoukXXFEUef
	 WQOsIhbNzJgvJRnfk9C5sxJ646uGh/tSH93K4NJeANo8979ROkWIR97NyIXDFqkR9j
	 fxNq0/dIUi96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173275358.12679.14626731357209751294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b88f90504c6ef298de6252d6a061fd8edf7398486fa27850896380604e4d481
Date: Tue, 23 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721732753
