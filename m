Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C0A41A80
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728406554; cv=none; b=szL7OxE9Kzui/EzC+JZX/TbneNhmakT2JHCUMCwW1LqBRnkgRumimXiUrziQhD3jD5/hmDyxYy0ZfHKL+MywDsLHgHoGUgLKolFq8rxs9kd0kvClibW3A1HuqgerY95JT97wzP4IdrOkcioYwodWp9jk3/eJG7jIIZowoqJtAds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728406554; c=relaxed/simple;
	bh=M0sd4AHUr3uIlxwgPC9hUU9kwk78YWcngaWZeEwh9IM=;
	h=To:Subject:From:Message-Id:Date; b=PPo+2Ri8/JV4Zom63y+UYdlWGcLZfC8FCY3Za8r43bT67n2ogv+L1oDsK7IsCC6BqBef83W7GI4lJsiE2af9dRlKBm2QHYe7P3lP8WVoTR3mCpj+4QVNZXayYSdCAvhcIZjysM6z+kBuw4sVTXJpvFRESHpZqqsCDxxxcGNPvOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ebitcqm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ebitcqm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E1C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728406553;
	bh=M0sd4AHUr3uIlxwgPC9hUU9kwk78YWcngaWZeEwh9IM=;
	h=To:Subject:From:Date:From;
	b=Ebitcqm+t9JRRwinJyQ0l2JxxSalbKYDXeCledhwA91u/WewBtbWcr2m039b4sDad
	 Qlbkex/ilKgERi9za+B0Ah28937o2tNZYaMqJnT9KBx8OwAeWmaQy43n1WvDs1ymQM
	 qofr/0ecIXqYnHmHBcqxD5empihh5iQ8RoDVj2ee9LImnnWBMaQm1ij4FgfKv2K/Zq
	 fP5Una7E8d331YeVk+mgT5fTdy2Nhb97Cm1uTSpe40j1uoXrT/sjxZzPYufJ2oKdfG
	 EnajW621CiWVS0OPXFloR8oKwLaei43m+SMU3Pv39riIcGu1PpOw9gdcldEOFByabA
	 07A34zGn28ztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A69CEFC30
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840655359.31028.14796478173569645260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f43ece18352a7df74dc9a6175fa74ec6280133a27d3dc3ec46f6e6818fa0f4
Date: Tue, 08 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728406553
