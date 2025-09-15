Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199362FABF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930394; cv=none; b=Qb87eH+CuxtrXLduLpZYvKCNNaauAnVT1b2k12qF6pJrmQ2jGZmkMG2hXoiCdGB11Ww+Ma39PWC4uahNLsPs5w5Gump+lxwrObmCXpMv0wcXMWkAh/QigPaGNX4/9KKmPfSUCGbHwf+6K702bLKMjbPIBt/CtKd2vIuewpb/c2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930394; c=relaxed/simple;
	bh=b+QmA1HzKJmtJmbN/SDGs4R76wRVwrO//YgYBXNfjto=;
	h=To:Subject:From:Message-Id:Date; b=NHiJFDBdA0SBWQ0gAzDso0FrciUR6HDL9st8QKpiP8GS86YrQe8jd7uITt9s9Tm7dto+DGBaSj95poRj4dHhXinE2HYYT/QE01UXu9GfBGL+JYPM7Iv57CEGl1LH01BJj38LmXcNPurPgcwC0T9yU6wJ5gnvf1rLc2m/XBMDitY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej3EEYFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej3EEYFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F37AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757930393;
	bh=b+QmA1HzKJmtJmbN/SDGs4R76wRVwrO//YgYBXNfjto=;
	h=To:Subject:From:Date:From;
	b=ej3EEYFtG19+XVlBY+BbrCUiKMexICvfbJHpsYbC6bQiTlLP/SVP6L5vlPTk/auet
	 Gx4OPixihVWBdOz/XtInj5F3RLZoK4hCyd98S7JFB1xk3R9C/4DhPSP4kxjcTw9q7L
	 RMHW7+8iXBMDjtxwAeP1AwnKihOCGAoa8AknLagAFh4NeoqOrLNSl33Hqz60FCHxz1
	 rio7OPA73l1ir6lM0zdPGe7NObB0VnIMlpQhJvi+NfA7IN29I3ROfd1Tb7akl2o8x1
	 h+f1Cp3aU5NBHwBgxxx6yOGanZ7EUhXH0gFSzZeEzV7DiEChZKF6uySbdu12I6Dzow
	 yNH98YKN5oeZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F4CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793039357.31590.934853764531757182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05130432cf6767dc285633b8d949d5544d6c37a04daca306280593c4d105e928
Date: Mon, 15 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757930393
