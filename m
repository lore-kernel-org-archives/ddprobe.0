Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C61C68F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761025794; cv=none; b=Du5s5GxMh3AOCTI6YfB52cMSwHNRbh/GOHtjpe23NrN2yJNeqUaP47q0Md9FrAGhvNa1+antBF+ckFpUaFDaIB4duUXBaBNOD0LXgrLmKGwX0Tbbv8VntNsa+wL4JX4QFGLaiRqju8wZnNaLCuNKG0Whjgg2dQ8rWDOXDzxk+/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761025794; c=relaxed/simple;
	bh=DGUk7DQg7nIVQMyXg93F1Bozp4HR+xTd7O0XVPrkbKw=;
	h=To:Subject:From:Message-Id:Date; b=GOH5PAeacRcdxpdWnuNtjby2Dj/ZekJrA4kwVEP3OWDvAamCPy5GE37fZJgAcVYrByZ05JgkNudaxkrar1UJC3VybkwZqD2+g0yDq1J2zYil0384GSiZ9tDMTvbztD2xPG+SwGzTMcdQitsUOz+/Mw8+hFptDXbZEbrG2Wz/93A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayGtzHDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayGtzHDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CC9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761025793;
	bh=DGUk7DQg7nIVQMyXg93F1Bozp4HR+xTd7O0XVPrkbKw=;
	h=To:Subject:From:Date:From;
	b=ayGtzHDVrVxqqhwu/01w5XAhYF3yDE4lmJ+lnN/O1VQzoIlU1LDbodgAsZ5GMgMJ3
	 i6hOUkwZWWtYltOLF37kjr9vdAkcfExnNOsFTBClVwScNzoXsxqc3c3AOjkpZbgNPe
	 6H53mRg1pTP5uYqh/cXDY0+Rk0lzZvm2bI/TcbHeO2DoDlm56n+sEUSF98bMhcKE5j
	 dPKBmVG4t89ChhLxwittYgMm7rAh6VEM+/jq3mEyQeoRIBgv7CCzw0TPjHR+Lvj6dP
	 g8U8+Jq9lDPbzbFUqekYRCEFmk0vLcgTSfP0atG1aSVGOWnveFHPs8NSOuJs8f29ks
	 gw15rnnNP3CJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43C1CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102579358.31468.12266120536010027330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d47fed48926d4200f1a619106503ef86b0c518947be61836db82ff0b06d8aae
Date: Tue, 21 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761025793
