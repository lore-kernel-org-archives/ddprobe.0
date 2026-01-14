Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159A318B0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768364634; cv=none; b=Vw82noF/co/DWRfbellSbAee2ufUy7JtNDqNxmE1xyuigcGwoRSOI4ggOxq7MHYuLLGJcrUjsx/nebxEedaFlrRVdWcZ6Y3epVGj5OEnAGeyj7URkAPQKs5AGwVjVvQCUETtPW4RF1NTFXtS8GV+s2V4tK5JTQRJ0ptb80Xhaog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768364634; c=relaxed/simple;
	bh=fX2OArl4xfhIFEPFLTxhLxZ4A3vzTdcZMT1YyAkxR08=;
	h=To:Subject:From:Message-Id:Date; b=DyLNF/Lc2+TUm7hHFIIvXH06EUQWWgU+wbi7VjFoa0FeVPbLH9uINfEEBbmPBoLNeLURk6Pp0Gh9v61dwPH4H7DNIZ6kFMiVRhL2Gvi8G2j4ihRs6YP0mrkDJU64iUYzUY5Wjgo/jt9UHXip0Dm4CDVpv5O5CgT2e8UioMCL2so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2MmwlUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2MmwlUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D18C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768364633;
	bh=fX2OArl4xfhIFEPFLTxhLxZ4A3vzTdcZMT1YyAkxR08=;
	h=To:Subject:From:Date:From;
	b=S2MmwlUayAQdeWPsTuLwrlhdbc3odQ0xBu2C3mH8gnow5MtOdq4iA0NfBa7C0OP3H
	 0rrrwtZuslucwcQkHH4cARs3IvKsG0g3tmJxg1jPfR+2LL7pbeoJRDr+MvE79Y4t62
	 tnatcR4BvalTm5sU3sjR+nDtAIoe9fgeA1cRobU9K9E5Mk4ItjQgT0tU1lktj5pDwK
	 74KR1MKjpfI+TQ3FpY2yz1KVfQODmZHEmr1wjcWBsrdGzbPbOUPUt3cO1yVN9ZgpaG
	 AS8cKolDMoVos3Z/ZCWchAT1TPlbMTSv8KrAqwLR5bDjWlf5E42+aefpm5cCVXpcaR
	 um1YFdug17K5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A9D31A10
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836463359.15909.14187136314129398820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83090d1b4e8a6ed53a02872742121708f98bdc139eb1ae11675cda3ee9f4f702
Date: Wed, 14 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768364633
