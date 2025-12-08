Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BC221DB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765161774; cv=none; b=oWHHsBgORveZdgipj4jJVKCql9RutLlFifC5hyiFzWBd8+oh0d/qPs5DSoXpwcI58WEGcqPUSvjBdaNu8HDJq/6g1lVr0RSU54yY6qKEVYzEaczjbRa8QDPexKFNcQP+28WMggLDIKTbnLh29GOAGi+qGQNHrc2g5pG793IsMXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765161774; c=relaxed/simple;
	bh=hIkBNuOelwQlFRFPOdYFAJwms5Omyi0JHMA06qgJhnU=;
	h=To:Subject:From:Message-Id:Date; b=JV4tnLJ2gdeeoHFApk2kkL6dynATMgYVF7tntz9EYJkcYfXO6hPOSmhWpkWxHj/V80vME67wvThqGudp3A6aS1PEXjlo8d5S7E1JYehkUW6WUcxHRSfMfgSx5qIPO1hrueBEuTPNc0xW+4BwuhKygJPgpHqH2J/BOdY1gSrgFtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwD9k/3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwD9k/3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A962FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765161773;
	bh=hIkBNuOelwQlFRFPOdYFAJwms5Omyi0JHMA06qgJhnU=;
	h=To:Subject:From:Date:From;
	b=RwD9k/3CLrbcwFmDrbVXRo/uJKPM/5x5m0SnsySEWamQKVynvLy/fyXDz9g0YuQtf
	 LX0rOqn/RDplZH6Q+iM0whp5fOwL+htuycnmH4WUvsDiUtpH799OpvjVKzfyi9yziD
	 yxr9yeMkAU9DfJWXwSesGuWan6d10MScksZ/pcVztfcHi0xPqvaolI7KBux5pyIhkn
	 CKUhTLz976swbg82WJTwXcvSuvFHB48LJ8lN6PJyS2D6xIFCWwVFTk8HQxKmqiTrwt
	 +exl8vT4dgdngCwRui2J5qxlgySOt3uf29oNbF34pU6+ZGu0PutoFwso/QeEO0GT/k
	 d+4cwvWfdczcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96638D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516177358.19251.1893956597226050529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8522105d121cd04ecb57c739575313fc96d5ae2d360bb3c25458bfed29c2e3e
Date: Mon, 08 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765161773
