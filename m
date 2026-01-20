Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0200E374176
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768892035; cv=none; b=he5CXsPlmNwGWTVzb8EfOpaL1J5b/GRonqUpiBZcdDthwmKtJo97JKv8bc4equiDC7QVcP/ay5ULgJN84d9X8S2IZfYoG1tkG+96AVddSaajIJDsZq8AiMShPBwJnPAhQHSRfiFW2CQ9f0xpN5oJNk04tJwF9LQ9HmCdvpsU0ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768892035; c=relaxed/simple;
	bh=VD1dxJwRDN0qXtFPAGbCu4d2027mYS4YIbECOHfohBI=;
	h=To:Subject:From:Message-Id:Date; b=iWUQycL5STfoVDmBPmuL6StYquZZqkYDIWV1VZ84/O2T+1H3wQaJ+yKiN7OyQCYyJOx7PqX2gj/pu9nY+tB2RqhOblvRrXm7evYXpxIMy3Ych7qP07cDgmj4P6sPCrWaACYoUhEYORSAwA4o2m588ZFtaTGZXL+nRALATSqG2O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/WZ84cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/WZ84cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D6CC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768892033;
	bh=VD1dxJwRDN0qXtFPAGbCu4d2027mYS4YIbECOHfohBI=;
	h=To:Subject:From:Date:From;
	b=u/WZ84cy7zPchNrmE3mZi73qD3P2Vv1FtDqMcqWzyVCXHBMMX6QscFQk3xsVW5rrw
	 CrIxyRLyYo+xxsSIt1PYf24J2GD/lM6KGZcwWx6fWFeh2Wo0zOxN64L+dZGb5rojRa
	 iat2wCkO8L+z7VoRFWji4e5fCmHors564K7zknchr8VGfex5HkYOaAqr/oocnxPzsu
	 Ui8+cNr4sXCA6spgWr4j07qwlgesplk+BGdlx34Vt36opOnAsB2KfIUtvALlHYgxiI
	 n9u8wnOj3jxRXKmABaaaAvftauA6yxDpSiFz64tgFyg/yJw68CDaYXH8xmDJ/zI8JK
	 AnEvCL6a5TtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFCD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889203358.28053.3795813908834210290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1767e6601d82be5dd9a20666ca0a6b5f7b6ee5a831e4a5e55f8a4ef4562f9944
Date: Tue, 20 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768892033
