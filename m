Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12D8221D86
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742479193; cv=none; b=CkJ5RZ2htdTDd0ie6pBiZiQzOAvC5oMZ7cGykEpW3S5IMPdP+IQD9claXVPhdoK02C/FuSHUQ296Y+QkMnHudJymzDKH/5A2HEg2e3tmmw3eSZUXDxdH9JQM5mgZSrMMxSFtnuMoBTzm7BIB4COSMorGlhtir8gBw2wTQdCxKcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742479193; c=relaxed/simple;
	bh=q1LZJd4kOuaOqvjico/JWC64PgMjuaqEf64JXrsmp9w=;
	h=To:Subject:From:Message-Id:Date; b=m+cKDDsvPFyNm2sU6mZADNM5n2U5IMvKT1+oUEAZcorEvaIZ7a5gpA1citYpGxTrmvPnDpJlkgCrEtxkByVe1rQD2JuMww8B/oqjsWV4pnf1Yx5YPwL0rD8oWWRB1j61MStQJVclg/KvaurdwkHs69q38TXMBu9eCwfgIcBSwEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy/KTapY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy/KTapY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B7FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742479193;
	bh=q1LZJd4kOuaOqvjico/JWC64PgMjuaqEf64JXrsmp9w=;
	h=To:Subject:From:Date:From;
	b=Wy/KTapYiL9YL9XncSwXHea+PNJ/yH/emuWsyQBf7Ayc4fv4Vp+jzIq5bEhh3opyZ
	 XLt5v/EkJM3GH9Vl8O7tzx/YyG790nX37C/IYZW0JJ74yfkASBA8y7mufSnjdxcbEC
	 Q/SyGQlQcDIb0O26JvB6kID/BnR8oVGh2kwqreKjzJWfbWXe4JplcobklDyEN7KKlQ
	 LBkbwaXoCJvMBXKJ+Q66KcWt7XRFk8WgL+jnZrXphwRq7jblFsDbm3p/ZzUOTaqfyn
	 UBfQLoFmXwI7Nvj/lWlfhvnM1hvVmyqIcY3JQUyQ4szsGO6qrSpgnfCheyFe8p2tBb
	 S4gzovcvIeV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C1C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247919360.32470.18101796321613920888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ec58eeb735c7ce700a91b9e029902d1dc050c961b5aaacbc21b5221d7286ec
Date: Thu, 20 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742479193
