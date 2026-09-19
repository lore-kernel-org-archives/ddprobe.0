Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAD633A014
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789831234; cv=none; b=iyjS3oVArgkvJRDpBlcJEJZ0mGdIV/g7eZXCk2Ud0dTEyR5SR1eaVQXgVbtBFlDxspd6fR1P7AOvShioUOy+RQ8zUOaaLBGt5fB/HhbkrVQ8xm40DEC9Lyd3xo78Kihr+zlqJpz2tZnd5HjdcS8Um6uj4WHnOBiGJcxGe5kRJkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789831234; c=relaxed/simple;
	bh=g8vQi+1806XmI9l8Dzgk4cRGNBtA1fysFpyqtXkpJQU=;
	h=To:Subject:From:Message-Id:Date; b=dWdmjvdz+d3ClThwsoba1IN1nBJiQLz/Q9/TgC1sDEBT3iG38HzuVp8+jWiuIoxwa+PW21HVTMTDmWorA2J+djohFHfKgALukLKkt4k1B1aroEG+ezyKhEXV8pLMmrkULpnkM9Uvysp65jSL0jK2OR51xM4kkqOe9PHPxvTlqmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCwJ5609; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCwJ5609"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D88C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789831233;
	bh=g8vQi+1806XmI9l8Dzgk4cRGNBtA1fysFpyqtXkpJQU=;
	h=To:Subject:From:Date:From;
	b=kCwJ5609J6vUuYPIplG0AN8id90IMnGhObauBLqjhuQpsNG+sjJMY2M940BCPf6su
	 o8UVamnEHEoyWUPysrU2St4L48WdigX5QeC+L0atLzcq/Ubdnb0K7RtYcisJvfm9u1
	 +XpLwmiqIf17RWHGpYYqh2PjB66JFKnXER5V3c0A3kOwnGrpxy1MhLKPeRozUjyLln
	 bLEQWdluSWx/n2/7LppsJo1qFQkQrYeK0fOLIlqVlfUK/ygst0hiRljdMW0SIAPXSM
	 RRv4ystba8Gyr/NSbyP7TuPJkkGc5M9ERR5iujSxviDOT/zhhams2i65ySNMFBr42f
	 CQ3fg/MtLfwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF976C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983123368.16497.8946907534893486134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f51524ce6b6f25d8b6d91e5eb12404da733d011c8291acb3c19bcd317eb321
Date: Sat, 19 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789831233
