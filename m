Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C67F241114
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754569794; cv=none; b=TluoyzQ/Ag+NBBqvD3cW+FvGhC2S+Qx7k4DZ5f+Z2xuZQnWaLEXIvj35wrt3xoktEzmPpJkIEMz/Rm3hTS4MzWRF8mmFXVafmtDcO5pve9FTFrRGVwraGx4hdIsuLpOZAoJSBEHLuA5Wp/My50i7meikv/oDX2mQhgWPc8KmzVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754569794; c=relaxed/simple;
	bh=BvuYc4ZZzVmX5hA8UrLoS9G9kar1JcLiiZ6Dvg/m39k=;
	h=To:Subject:From:Message-Id:Date; b=bQXcHePE3EqkgGeub1AWMBoiI3MxS0joRl6BGRXq4+vc59E69btK5kLTQMC8vm39CLT1uDlwYj8rDntQinzy8e6HebGUcyl48TeqBOWxac0n3AcqStwn4uFgRwqSdF2Ner63BN2gTUFWmi10wvakeHs9wMBoJVFkTiwyFgorCmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKAHP2Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKAHP2Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754569793;
	bh=BvuYc4ZZzVmX5hA8UrLoS9G9kar1JcLiiZ6Dvg/m39k=;
	h=To:Subject:From:Date:From;
	b=RKAHP2Eto07fuEwMbaPjbn9Iw5o3NuVslRVTaODCSiR5gm57SrgpcwWrhbAlSj/ou
	 ysObwxjHkian6Nd/oypRx1MetyR0+nFWFqpsqJuonYuNOCLDpdRov9zkwAx050IMv2
	 12gPP4Wst7hsUd9slrbIsUqtIE0kf8OR7v9h8DYd4wQ+pLnEvQ92llryhxhHHuTjmR
	 gRjET0JOGeehd6jJwXvIoRQo8u4Nsw1y5OrK4KoddtoVcTfF4xx1YBM8RpasitPwzr
	 sab1HUp4vAvlwzDg+e6JHfQr+1WnNjyYI8XUAX5XaX+ijpkqcFuNOLC/dq3e4RiyCO
	 q1aie9uT8O0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ADDC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456979360.17698.5422182315918413830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde001da2d3a8e0c81c9ada19f237d9dfa96fdf19dd2249174979cd8d062a9e3
Date: Thu, 07 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754569793
