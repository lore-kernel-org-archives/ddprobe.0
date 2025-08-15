Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2C51A317D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755296994; cv=none; b=BtUDOsOiANqMiX0ZxniQ17svjCSiwXUzsC6qqrXQAaYq4Ne+DJiknTgYzNPC8w4PVdoW4NAM1R1RTDDwHptJj4kvbv22viCnobiqkTNrSJWkTNOmEzw86qhXOgqLq/lQC2HMMGSS+Obk5Q4Rv3Ihhv6cwVp7/ZnDoX7yqGXWNBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755296994; c=relaxed/simple;
	bh=0vmv2/cYMXAR5lbdRv11MfObyJ1X69tvixIsXRXtNo8=;
	h=To:Subject:From:Message-Id:Date; b=TgUjBkFuupExcME9wyBe/BRwV04Tn3Ob6mwJtKx9XbAlBVkigtV66D3jEQ2FaKJU8ycFjXKZ9lKsvmOi2mwKqyH9xuF10jO/ZB+jpP36jyVwdsIyblE5MdmHk76uy9iNQjeFN8AOdaNISNvgHmOAhaHRrXHRgpci1ui9qDeiFxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwgdHfaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwgdHfaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF8AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755296993;
	bh=0vmv2/cYMXAR5lbdRv11MfObyJ1X69tvixIsXRXtNo8=;
	h=To:Subject:From:Date:From;
	b=hwgdHfaUhSFIB9fAHL1DBAtm/y32LTEYVe1QvkRlq2ryOKZQo3HbXDjQrNPYl5aYk
	 KKKf6YD9S7n6pwukoKLplT3t3Xrbik7bYuhZHQEMP1mVC1UXbNtx+F7Qaqw10BTUre
	 EQl4MLL8/Bs08tS0HiC0ARfkpSg4YBwFpYayr5U4LXGc0wjCwPhZlQP/bWbBztL00n
	 L0o/UF4F5zWuO6X5aUql0ab439Rr33GOrZL9zebehoByKkeIrKI88y9mnoHzv2Ulbh
	 k72a2WY6GoDPOrJzl/odTCDITvzR0VRYUrTQtL1LIIwALqUXi0cKGR3ap+Z/lMXX0+
	 EaMzbldoD1zBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2CCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529699357.31629.16984039497502318751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcc9bb58f7fe6da1f1d0a5920f7dad029afe6c542ea49f80bf53efecd96b40e
Date: Fri, 15 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755296993
