Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DDA3191BA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758041394; cv=none; b=newqcFk/uKi45FwV1vrXdrHSzIRD6vazcQWw47rUnRK/6wjDTAOhthvf5EwQC2j0s793yzEk+tcMtUgCHx6pMojW9BXI8wz8Lw7DpNu4RdEkIWNft+hsqaI8VkatBAHuaF9ERk+LGHA0EPBBzJSohzB0R4/awxQK2/12maKIXmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758041394; c=relaxed/simple;
	bh=c1P5pbTu/PFx5v5yZOahSwPX8KW4Hcs++lb0JM6aS5Y=;
	h=To:Subject:From:Message-Id:Date; b=ND1p6HeGWshK+4HyFeH5KVqV64CMK+3F7/Sdz6dPlTLvUdi3odEPKdblnw4wV9JoN12VCGumDE0PPjSxfVTiJP4ZPxaebbvcfvemtCPmLrwRNmF8/Pe9Xu1juOvD7Dk5RWHFiocsAcYt81DTjqALDI7Ek6XyplvInKJ+oXYjKhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMMmvxU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMMmvxU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2408C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758041393;
	bh=c1P5pbTu/PFx5v5yZOahSwPX8KW4Hcs++lb0JM6aS5Y=;
	h=To:Subject:From:Date:From;
	b=nMMmvxU0LVzPBfHNlERdi69GvoePFa8BMn6EaTgdi33wAe1e8Wfep3/kleuckOd9K
	 MjOuJdeK7XPELnqccaiUQc2Unc7bz0HumFqI+ufcAEq1zsx7wv1AYztiRLgSnHL+t0
	 qOkF2oYgXCcDkvlSEQSt5zoz3mKWO3fAad29JBe+NcuZNwLDJ7tiHc1evRf5MrUF6s
	 czaTtjQqf4Jsqs/ptEH715wmbrMY+crOVSnBHkCuuvtFe9MJwPgQNsBYlrq5UZVppw
	 yeeqkusib8ZG4TpoXtHCW1dRQWkPiS5QcQNOcqPfap0mn1to1Fuq8enoyI8/jv3F5z
	 y5qoyok7tsl+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804139357.5008.8738411643715173137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e3b26b1c2dd88795947829de01d182104d885ce144c549ac84cfa10bf46ac6
Date: Tue, 16 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758041393
