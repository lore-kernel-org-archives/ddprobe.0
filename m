Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D398381AA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719084143; cv=none; b=rSoeDWqCD/RlCsV8Acpr7ijQv7vnL19TPobopKPVCCGbnCPr68lE2x5o+fCQrU0y6vywWigLn4S16XuBUNdLte+MIHXGrUYYmAFCmZe+w9KmCAoXbPy9fRt2UH3R4n40kx+UbtSw9HtHFuHVo7xEkPDROVcq1dsT+RLf5M6xxk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719084143; c=relaxed/simple;
	bh=I/BL07rX36BeG73ZKwh0zS4wyKRkfhhL3LxVb9258Ms=;
	h=To:Subject:From:Message-Id:Date; b=I6Eg3RA6tEfOxDKawIvpvPX4QNcaTkvN3QDqkvoR63UZwSvp0jQPjJqK77RujkJVyOV4O8D5OMrI5OWu0Sy7h03YpIQQbUa/ZAfQeGAePEHAuB/sOp3IFomV3oqmrLlSKIhe/Gn4+Vt6Kzgjx8fbtB7GqHyEAbSrzF/xKXPuAxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHwz8tFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHwz8tFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49DEC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719084142;
	bh=I/BL07rX36BeG73ZKwh0zS4wyKRkfhhL3LxVb9258Ms=;
	h=To:Subject:From:Date:From;
	b=sHwz8tFoSI0AcVUnLu39v+5peuNpDo3af4JIs0q64Uk3KToQFZLMDsMeJoW/Z/Eot
	 SPybE47nz0uRKUsOSdc2ldPJ0T/gREZYMNE4cJKOFwQj/Yki7IaFyfAerZ8ZSoUp3t
	 BjYTSq4Kqev7IGRHLxXhjIdPqLCYvi0mNZR8c3ITPIJeLgOQoyeXaqFs/iVvEONfHy
	 sNSjTqr5Ni2RPuLMn7eK44tKf7LqDYpwxWQCtGf8gCmohjji9cz8ji86I4nNnob4NK
	 Lbv4zilyMhvC6ey0vnnbZuQXQpUMEqAhzXba96zOjvDYsjcYiCjFFKxtuYNN2Rojzt
	 QGnsrFMg1dm2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC51DC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908414279.17941.10752527913888485751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f2b7d022fe68fbf7dc804353738240494ae11228c43553bad993cdb6f7cc52
Date: Sat, 22 Jun 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719084142
