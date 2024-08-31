Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A6193
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725107154; cv=none; b=dj8wZ75P2V012dZfM1aPPqbP0UW5cfg6rhUb52NbfQ9Lrd4TFvUgjp+nVIyhm2f2wQWomfdlBjw46qafw4nFg4olzMFGF0IfIF6+HbVhlcoIYZCOI0S8D+zUWx1ObzexM4M2d/4ZMaSrhOS3ipaSLiOPSfyHy4qArHqGjhBI//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725107154; c=relaxed/simple;
	bh=u1sBlFy0hoGXematNA7KopoPPNGJYMv1Z68Ub+77Dps=;
	h=To:Subject:From:Message-Id:Date; b=VWp+f9zjuzLQiWj0AlYqzte5XdlSI6K0bM22sVyclJndQCSiQZi9uY0bquy6IJ/F4C3MYEFFU8/hGBBPTXxldwdjy7YhHHux39Y+Fz9qtIZjitbdzmecC8zZLBPrHAL5rFP0CEWCSBu1YuZac54Nu8rsbPcIQhFbL1s4VULh3io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOrnBwd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOrnBwd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E8C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725107153;
	bh=u1sBlFy0hoGXematNA7KopoPPNGJYMv1Z68Ub+77Dps=;
	h=To:Subject:From:Date:From;
	b=fOrnBwd8qb6UGSCrNRjUpBpnHs1KHIqZYYNRiSoU+kRmwE4b3m2Bedug8NYXzzZJD
	 QABNNU0C1H0XCVcekly2sopGlf3FOCQZ5ndEM+9oVh54YU0dAW8dwawpDWwhWb1Z/Z
	 dQVxC75f/aJiCexxfwh98MgUxMKBfW5u0/zfckMImHU26QDx81RbyglDIIfwqpoMWc
	 czPXv1qT2kteG2V15Gwg2ZHVOopVhQHEkBRnltpSuHdsSFwUc4Nqi1KN8ApDFCU37S
	 djhuCz+eQhNdRD/A5Nf9b11yWdNLxzo9oo+uL5fa7ijMy+uDzr0Fst0tF/qF486dQY
	 AOvXyLiHVf9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976E1CA1018
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172510715361.26910.9167870238399266334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f696de5b0ef398025f80c4b9835b8762dd83b0bde23ed86927ea7abd828ffc28
Date: Sat, 31 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725107153
