Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C777111
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752395394; cv=none; b=G2XBtunehFJb+OmywEHOxv01IvsUIFhlaSVWcUZynfC3LAwlCONCaugjM9OxnVBriGkctaOVsZkOfyZOUiTsiUTUyaRGUvfrerIP98RyNGWrF0BhTtkk6tOYNLtSUfr4+sPxkJ1P1lTnD/sdQ8m1lkgCxOkbcYeWnRGgdTR+K54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752395394; c=relaxed/simple;
	bh=sgbcRT31mVLv+c7h2J8OCMgk846z+12eYA/+XYq5BE8=;
	h=To:Subject:From:Message-Id:Date; b=NrSOi49ypKOAOa8F+Tg1Ko/3whRTcXS0En8Yg7GiYwmXnilfct4qoSC1VlsZDAZS6egz3hg4RQ9EgSNlUu+UtuG829dV5z7XEQCuDbovy24afeo9NkyRDG+f8JqWzxZccaesOLPGw5jLutmUB1dH368EDZoP/81sNyow7/zrmD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNQrEn0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNQrEn0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752395393;
	bh=sgbcRT31mVLv+c7h2J8OCMgk846z+12eYA/+XYq5BE8=;
	h=To:Subject:From:Date:From;
	b=hNQrEn0r49cbeztmnHr6Hgodrmz3Io0iTcEdzMP2Qdx/z2/olIH6aR2d0XqBbMLun
	 hpoXcWecGePr73cDeeWnDVvXigOcAZk7RnCtNsR9FSYa398RqDEk+JDhfDlJ0w+bSp
	 P5JYLlhetAVQnys5oc1LO84A2Q9kIQRfqDsEh4X22jGgexeUQIUX1/MIdsI/Usxx29
	 tJH3Hy0yrwLrKBzz5TadHiZ2MYBT+58zuJ+a6WMLVVtH7A/K2kTdsO1xur8tiwtTHL
	 YJtMLBZsy1UQTObsoSzm28kpmMEXRDUT8E6K7TB+KhQLYywiOWJ2gWP8Jk0EjFFUek
	 fKYUpIKB/F0Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188FC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239539357.8419.1404197612100176586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bcc79885bb3b15839081dce18e878f4fa1ae360432068441a3e49b62df0c79
Date: Sun, 13 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752395393
