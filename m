Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3100C1DF748
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779517354; cv=none; b=hPAk1W+4Rbd1KG2ThMA3D3+9x+GCh4PfEIZ9iABYJqRuAkpK5SP/TxgoUM24NTbme+dhVC9VNEyde2Dut6KdDCFY2DqbRtjQQt8V3jKMZzah752/M9W7vAfaJ46JmUULj9+DxTOzZ57gisH1ehL/ggT7KWQDBUlYr6/eUCa+o1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779517354; c=relaxed/simple;
	bh=r5oGEPuxwkZGbL+6mXQwUPtgnIeMUvybC6ZrxR75j6k=;
	h=To:Subject:From:Message-Id:Date; b=Wra7B4j48XZ3Qevk7WMeOw1uQltLJpW6oGiQ9+i59mboTXIXg9ss8zkBCupPTLe1BObaWMRKZxvKGJbi1VnE4F/bQ8T+lw3AwPEKr3r2qH3N+cVhcRt4lWUnqkr5nFhLbdNahdWayqmmeujWjIJgTiAv50F7+OiTDQCIUdPdlzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqII9jqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqII9jqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5E4C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779517353;
	bh=r5oGEPuxwkZGbL+6mXQwUPtgnIeMUvybC6ZrxR75j6k=;
	h=To:Subject:From:Date:From;
	b=eqII9jqiNSYO3uCTOBd61eTNMHEiRFTvmnsMZthBoccduLL6rQSICzTqWalCmUfCq
	 PQoMmHQ/UglsQWvLtx6tFOklV/Vgs5lswNjClAkhC7Z3rY6vko0ljqRWt+kgFckeZQ
	 CtP2DYCwlu/o7EoSdvN+YyLQsMiqFOQiHwwVHiHc/lmECr9h2/pQdB9g0lVgKkEZZ1
	 b55ROcYCK2lvpupMcL/37/6cZPI2aznIhJ2clDtDFWp3aZXLBu7sUjZyfzsWGtwcED
	 Xa9Dn6PWrpflSjVb5XqL/7+9I+5k2yPXzELgGQBLoLSQzE9fPRRYHZ2Zndhyz99VaT
	 p4uj18rC4vihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8786CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951735368.1729.13225921400980608806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2776e8047992387e7851ad5e69f0aecfc1a47c140c8c6742bc40ba735bfc5b27
Date: Sat, 23 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779517353
