Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF9377543
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785528634; cv=none; b=tCDx53/4uUQHKHaQszCPcTwrbdVP5VvMJX1V3dzPvgewCAI3XhVYMAdlNFe+c9NlJj8RoqRxA3QBJLJsj2k5DfXWnWIznRmmmfjBaYmLMI7gHDWuMF6L770HGPPqxb3VTT7LWSwJuLRlfkfD+ClssUDi7jsp+CTN0hXLXIGXkLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785528634; c=relaxed/simple;
	bh=IufXDJNxBap/mqbgBf+H1UwH8r6I946nGDhhToLyw70=;
	h=To:Subject:From:Message-Id:Date; b=cULgMIcANcy0JvcujrMqAZJhFgbe7WDWPv+NrAE9l8UFuE0IDifR0yZXPofPWIT9A3azc4uQ2ANarJ1/hmaDVKMvwPGHPp18+ijgs/Y/MZPoj3PYk9J3CC25JG/92ohaKMufulUgVDkVmT85ohqqKAFI58lxQXZEA1NgCo7Piho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgCI+/4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgCI+/4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8DDC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785528633;
	bh=IufXDJNxBap/mqbgBf+H1UwH8r6I946nGDhhToLyw70=;
	h=To:Subject:From:Date:From;
	b=RgCI+/4iMngjZVlYWwD7vM+7e9bdLR9TKT1W+kw9I4SRV74sHXGNMtHBAEXzihAXA
	 uvVSn/GWCSb7LEl76HSIDuK7gG+quCnCF2HpLGLf3y1XzWnBTPlqj5SOMpEg9gaLZ6
	 EtRXhBnIdHoU9FjdxI9S8fgO9xEAjx3QMgCpPRGEia9lv91+57sUNE7cNJTIXtucei
	 Lt/6N+Bw0SqNwPV2uM7fg+WuBa8BnmAr7FXfo9vZMs3BpA8puCbJyLPsoNtCH5CvCp
	 BfCql8P0rEvO6dHoOXftVtqPcI9fPgFYDT8A7xQd8XsoPgfrqpNrdwRV+18OytW5VV
	 QLYKWXl7fKctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C63C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552863368.18312.8337771839154551880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeff12213fed8358be915dab349bb84b70bcf6677c9c38c1b90729db6f5ba83b
Date: Fri, 31 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785528633
