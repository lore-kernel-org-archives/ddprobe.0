Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD25292B54
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764052974; cv=none; b=pssCuKsKeuurkLTLrFywfa7HDXIbXDi5GxCQkLBWmX5WjkHn2FjlyWKrZMs8cGk/j75Q+NOW7cpjR/MlL9nAQ0A438cXcIgIB0J6ykcyP3+MAU9Uf+jeTE3X3iBtdMxi9xdFCKywXUAV8sl87d02PMJvpbXur4tdBQfyB3mghq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764052974; c=relaxed/simple;
	bh=XrSJnsjfIkklpq4k+VRxxMo20J2LD/ENA2JTz8lIsGY=;
	h=To:Subject:From:Message-Id:Date; b=IgRfLuSl4Aa3J/6DBP/oZdlSG6ksvEpY55hBofGaa/3D6MPZ1dxERf3IxfDsqRkok06pgZys3z26FuwaNIf6aidaTBbUgZgBZZ3CEA6VVyQX4qeJaF6CeK2ZlUMnt7JTOU5bnrDT5gzlOVgoyws20DdpJeSVzfmtV5J7XAkSl8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7heDNcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7heDNcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764052973;
	bh=XrSJnsjfIkklpq4k+VRxxMo20J2LD/ENA2JTz8lIsGY=;
	h=To:Subject:From:Date:From;
	b=c7heDNcHhQZR9c46g2dVKshBEsckzqg9eNANMs6a3Ej8Q3k8dJDNOfVI86bqW8skt
	 E/yphwKw2Iw7g8NcSMGcwORIQob3FkzNqaVeY1qo/L2kb+RCSVTDjmDtaM8AcW7w9J
	 fxMiNOajfsETcIa8NMthEmChfIxBN95O++kn7ZOOXOj7BTUmK7PbK4ImHsZHitUQEI
	 oWh6cvNsbgLnz84QMkuTkkdDQ3NqckL0CehGFLBV3E3NMO7j6Nd/s2fARW21uNhlj5
	 ZFf+q84E+IkOAaG8QIE64G8Ilel0/PpVVrHgduZSsfPE4QP/R7wYz3vgHUANhUcGae
	 zNm67CbspNdwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CECFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405297358.2402.3205204290423938997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d416f55cbc670f310fb4ede5cb902cb11138d8c5865d1adf6715ab586f077b0
Date: Tue, 25 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764052973
