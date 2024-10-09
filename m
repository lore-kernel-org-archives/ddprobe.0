Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549938DD6
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728514554; cv=none; b=n15FFgLPKBznnFOMNmWelJjxDq8puofkIjpSD3AseaI3o8wwAFlHGMMWdQo+8Up+Om/TYzLOKw65rnY/LSL6NYeoAGgG1v6vigU65zeQ3sse6NEoSvqdeS0VcYEdN5d5L/VRWp9y+EEXosZ/pTwybi0zEfGTRHYceeoemDuGbOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728514554; c=relaxed/simple;
	bh=K/uUEkCI+eVjj/aX/SmQwHdvn8spTYEzaENjbglPD34=;
	h=To:Subject:From:Message-Id:Date; b=WxTYSj1Mzg5EXXj0As6YovryoA4rJVF6ktt8DvN/D17mNcpr8vHMGEELEBpv911kGx/pcydAFfUbMvFs5/ZQ2bYnAPqnV5sdqkxck53f2vdMYGFY/sBh6BJiDKKUyx95aQGuNgSQw3GGc11fYOA2Sb8SPB0Eao2nTH6BAoprI8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjJ4u4ES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjJ4u4ES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1D2C4CECF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728514553;
	bh=K/uUEkCI+eVjj/aX/SmQwHdvn8spTYEzaENjbglPD34=;
	h=To:Subject:From:Date:From;
	b=JjJ4u4ESFw8RpGrRixWgZ4rUlr9XWVb4nKq98Tu+w3oHRstg2FqKJ+cUzksayft53
	 ezJTHHQ/T6/BtrOsj7UX69GI4WWKMe3vSvqyPyBRl5YoQnxCHuYT8+/58kcpyJqzoJ
	 1iz9ZQnh+R178ZrRoA3o9YX85FN11VVAbKRXuD2/fwKfcHe6d10Cpu6mG1qVSC6WdT
	 NcIbfdyxXGcJIhHS5LH1fCKNCmO/2UInREVyjRX6pS5ma/t6UYdbhy9LcfrpVsM5zs
	 AIokEPbss4wumYMsN5aDoftc/KlwNMTmsBFAhSYu7qCcHF+IFYODXT8dvnBW8DViNA
	 I2STeaSLoO28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23FECED611
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851455365.24182.17734733905020484882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36196c56cdaa8b6fd03d5a4ea5621a72528eeeaaac4114f0618fa4559bda11b
Date: Wed, 09 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728514553
