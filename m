Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356A7629
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725585354; cv=none; b=Pyo6xNConguiLf2iUN/QZbZgQVPQpB15rrtKEGD+nXjNS1JG76MpxKA1hJTVR4mV0zbIGb/0mqEYY0hHJW43aO34i4yUsa8VrJfy3TIJ4OnIsmBW2wh6KOO5jlhgzfbE2HTEcrMZEN/wdBsmCYMcLkTJf99DaxIbyV0QLQcRSbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725585354; c=relaxed/simple;
	bh=8o+ay3JYKX07Lr0bT9Z1DNYphZ1nwdzRvjMHtkDuUmk=;
	h=To:Subject:From:Message-Id:Date; b=Sj1hoytxmn1gQ8vFIlqbEPQP0I/epGIr1bf+1reDFOpVLojktDJRQHTvG+FUvwhcjHVEnjKi4hLuUI1KBs4/2f+2nHUKS5BFAlwx32dQUdlgiPmNmmtlcLDQE+2jPaRvSH6gC4QxLb3UOAb3v12jyPGiBhMGewGiaHTGv4tsXLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy/Mz2PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy/Mz2PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94BDC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725585353;
	bh=8o+ay3JYKX07Lr0bT9Z1DNYphZ1nwdzRvjMHtkDuUmk=;
	h=To:Subject:From:Date:From;
	b=Vy/Mz2PWVrCy+SloqpMJEEcR0n7RThQ8mMIys7qlA35edpXrrE4oPNuKhjIXEXrVB
	 DZp8JxEtqehfw1qP0zfbWOTFNitUMV3pXKcCRZfFN5cp2m6A7ztpqWU3L2Kh8o4r5N
	 NvnCHy5CpSC4jtyf0Eyu5i8D7bICiypzOcI9m7E4Vsbu/V8ZcLFXSPU1LdC40NI7qz
	 WMQUMYICD96OJEX8oGqe4Tz/HzUbEAY/NzccUp0kEKqkYU0whWJtw0oIzhyL0omdbA
	 k3TsL4/jfDEYWI2GQMNEEH+hvEPxxsguqkq4sDx8plMsQmC0WWwDNDdsixuyRBgA+5
	 LNRvWg1Rh6/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F5BCE7AA5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172558535359.22034.15108987936175457575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edff2d5247a26606e8f33ba9b11d3946f80f1fc19b35e362df0bf3d1e0092d4e
Date: Fri, 06 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725585353
