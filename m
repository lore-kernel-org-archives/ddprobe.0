Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA2F42C4F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786133434; cv=none; b=kcdLIRTvyYeuG0F4Ac5cAflB08BzsivJXnktbKrXF//moOJ98k721BeTxbeNP/Ufd0YAburQaAftgwI4xJOY1ScEdVy1tnX+25YdUD68rZHDBTzERIL87wy9irGnKieviZ/juHEX427ihXH+3Ka+sFhvaKtWd5Ll+wrNEpMg0Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786133434; c=relaxed/simple;
	bh=PGjrxVeWLzE49SnEg0jf0zszAXICZ1XuV2Ov5sMCmKQ=;
	h=To:Subject:From:Message-Id:Date; b=rsrNrHO/ApyGq4H2Oia9MuLCFqUIERLZhQfUM10V/gcuEC8lPnrBQ55DuqdJEFUKfdQm78c+CH7Da6EX0PrJoUFyM/bWa2jL9O+6zCF3vZgI6BLiKhyBODUnMiApa95dEHKeYkMZVECgL/FM2f1Y702GAaHTR/zq4+pu4J88iwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqCXr7Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqCXr7Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D409EC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786133433;
	bh=PGjrxVeWLzE49SnEg0jf0zszAXICZ1XuV2Ov5sMCmKQ=;
	h=To:Subject:From:Date:From;
	b=gqCXr7Lw4dRKWJgwTTp9DzapoKsQf3I0qHh6q5y7tHq1N1IsWaVcoYw5WvTABsdI7
	 TWvY4PJ+9gLDOQseyhP9PQNdJ7/FX1+c+GDv4WAL29XlSnH4LMCgE2K9kEVk2RXX/s
	 P+ub6oC/uVgmoscdh9T7iFjf9pQLo+ZnNQ5xrS7bLafSL/0D/PSULR7T/YOKTYB2NZ
	 6ipmqi4QygksJjEL1EBF5VDGJ1HrvczprMvQAbBGFRy2cS5Tl72x6G0DAZ5svBQShm
	 FT5UdVHdT5AHAxGryiaatZMr52wn+ZBZdCPRhzAwdXE3mRiEKmbOk4iXiZpnbdyVXg
	 nGE2zBIiTbQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF040C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613343370.4901.4312625502530010524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bba76c5af826a93281f2994835da29e6b79b7c859e6aef098712853b967c4fc
Date: Fri, 07 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786133433
