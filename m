Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18732416D13
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780683874; cv=none; b=OUmnOD40xIFQyVRSXg1HL200O9dzWkNE1s6P6en+7EJn4/WG+yFF3vIDdy7Ys+eyEAEystnK3lgdsuqEp/secQ2bgMXMTCn5JQHNivGpDrBtnhRKJEz/l50NsDhEmNbJDuRTDjLJ7zscxS7WHurTJJlfkSsbklanBBrle8L0bjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780683874; c=relaxed/simple;
	bh=6O/6e0din3xhErZXM4EadSlpERKQkiZ/jhX7OlbfWx0=;
	h=To:Subject:From:Message-Id:Date; b=Jv0McHxeLUoGAa4r4LdvZ/3CougPamUEZs5DorS1mYA1YbrxHtCNnaUV1mHQEPc4k+A2BNDrUSKF2EV9Z6cPGloo+afpSYgo8sw4w0Iab/jC7u7W41FqgIEXxCcUVncHdkgFMDP4WhezBysVUzM/ny4IcSwyr4uTG2waLDq9X1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEvs7ihx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEvs7ihx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC006C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780683873;
	bh=6O/6e0din3xhErZXM4EadSlpERKQkiZ/jhX7OlbfWx0=;
	h=To:Subject:From:Date:From;
	b=jEvs7ihxJ8bscuVgSvEkNJJKNDnWlFPZLP4EKH2Xoa9J/NdtlKs9ON25TPj55pylw
	 barNWYhoBNugM6Ou9ZVcV8XOY7YuR0zdonrGE5astO0y+qt9k595wM9DsNyRPjgCxR
	 MmVfkAix98R0UzMGulc70o4E9+7c6gUn/xMrAIap56AbpyvDwfa/ASAwfBmcdoQhV6
	 CkC3Qj1yHksb+aQXeccnE3gXBan28USKoXu0ohXvsiKanjbco5YQ/DrR9WwjwP12pz
	 /nUFGxdoSifo4onAbp7tjY9KcC9PuJmncN3RSBDIMa2dX5Ov6swrfiS7XtN+QqQEpJ
	 CppfG68fGP09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC486CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068387369.1561.11452422020831202392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6022750cc1e5cf4a09971d1295c6e2a87147716574a2c85f662a217c582476fd
Date: Fri, 05 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780683873
