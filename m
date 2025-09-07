Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C02619DF62
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757283595; cv=none; b=LPihlTRVoK7e5kGC+iuRxZ+pyN3RV3wsyl+BaQmVLZEtQVCfiZw+J/zONh1mgSjaigr6m5xXcGBhVCiBeHzxR6IjIcUGVwc1MkUTeSCWEn89ks0waPhG8MHDq0qu/1yjfw79BmgaaZ94XUplB5j8Ziy1lNamyLnHJ+z4kOsC9M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757283595; c=relaxed/simple;
	bh=kLY1keV+HYbgJ2G7HcQFKHTyzBapIrXhc+0xuRDHiNY=;
	h=To:Subject:From:Message-Id:Date; b=VTBvzD1e/X9ETbINOoitwPeVjl+S83y8LASP1Iy0R1IofQhexNuT5Xr8ot4XpyU3nWfN7Qrvs4XvRke1kF9U/uvwhhHhvD/07FVg6pOBAIvpqUqZUKhJBokme0Tn98XkqJ5f/6XN5yb2RsZaHNxd8b2uODsKIC9lWy66wDrMhT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWb/ZAY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWb/ZAY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1012C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757283593;
	bh=kLY1keV+HYbgJ2G7HcQFKHTyzBapIrXhc+0xuRDHiNY=;
	h=To:Subject:From:Date:From;
	b=GWb/ZAY3c1pbqiobTuFZEIQZptCRmDHIWmQRNuWLcRX5hd2Pfyr5sekgMm2CLWpMW
	 gsunm7dCJocfuW8aOmCflbad6+rRQEiRvsNeWGHIibngllFqyH54t+8rhC9xVcnOyx
	 z8xxtZAzWRdBc+nb8CP6lAUR/Bl1ic/Fk1eQte07UsctZG+pGCtUJN0WkkNLOHDA1r
	 mP38eu+Fj9dqXDe2r5Dh/gMHboIETIymaIkHCiwMjH94ZJSKOoAvDwRTbilqHpfTfT
	 sVuljrzcAzelCDG6wD9/liCUsjVWTV4TR96eqmqAsHbEv7corQ4qSeoGJIv+TBQFeE
	 6j6kQPkVjUcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F036CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728359357.21489.13702195532365293951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cf6ba4ae0af2730c7a1191658f29415f79bae8bca460c31f2cb23d57ee4794
Date: Sun, 07 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757283593
