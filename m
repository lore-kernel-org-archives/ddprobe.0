Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500782FD7B1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789510234; cv=none; b=u1tla7x+t+loUO2gQc0Aq6V+Ll8C6vT0dRXjH2KE1lzsxwIR9SROcATni+Do6UUFgDBTFztPxQLhn23BobTiFmzs+6FybGy2zJmJmW4+2hfWhkg/5G/R3NqpY7rHqImEf9tyU02zjjjFfviwrot0SIjSC9cqRFBq/lX3L4Hujw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789510234; c=relaxed/simple;
	bh=eDTJiXiSqkNxFBfTwpAis2VO3XKE8FUbH31NP2Mer0E=;
	h=To:Subject:From:Message-Id:Date; b=Sx3Rh0hhgs/FMfceAdvSv4ynKv5WixNU66ZUViENyvU3qBHOVwNoIvgRya8lW5VlKobdh+c5zs2F+GhRVA/+aeKUK5H+rr3rPFmJxfHDf8wTYuUTBNoNtQhcr+m//VubOljUoI0PhQ4AjT7iUqLgqGfUGrxz8NcRtvqrLk/a55c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6S7onA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6S7onA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F31C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789510233;
	bh=eDTJiXiSqkNxFBfTwpAis2VO3XKE8FUbH31NP2Mer0E=;
	h=To:Subject:From:Date:From;
	b=W6S7onA+IZTn9URKIqkmSLjI9R8qnI0JJ2BM2YNmoaSNvlkSiPe8hoakoBtpSZYdh
	 1u6tbROeK6CPYd3RAhEDVcSrEJ2VxTXMSI3qL8k0snYxTmdsCIXiePGNR35+vyYMGE
	 2sHramWsnRoUHC/zVvDVh47KConGyIvTh2X4eFYEGoBI3UnzybLH64lHMR8E36+Oie
	 zcmjXBSx2lTxijPLqTs/AzcNjaeWmQatnKiEOtq8t4FBpHDOzuhD/lq+gvUMHMi6dr
	 DY6EBVGWKyjk/WU7CN5Ktyoq1x+X8YDJNdIj4f2gEm3PWLU8YMsGoVdagb00IELtnA
	 6Mm1D+Dgszjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C2FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951023368.5332.3722288216053973548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d49bacf7cea38275433ca9276f647de8bdf3c47b49294da4d0c56543130c90e
Date: Tue, 15 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789510233
