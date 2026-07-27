Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DA13769F0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785141034; cv=none; b=lWILru9VFyboWkHlxFNNiLzDZnzsRPi/pB1q1MTZClwn3GXE5JsTHJoBraQ3tZvrs9vCY13FgDXMtJ2eW8g1Ha29FW6LeOhkPlBe4YucMbmIOQP79Fc8/b9H+9XHmJMP5a7pBhCcVK6gCKwPKQis1dAhzRvQbtD7Co/t4xVTrJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785141034; c=relaxed/simple;
	bh=dkD1o2OgaPwErepQw7S7/qd0GBdZOunXZ7QNLzWboPk=;
	h=To:Subject:From:Message-Id:Date; b=CJPv6rO11/c/sgHY5+L5z2WmxOGPGwTLP1sLAVCPnkMA7GGwESVuu64RQHEz4RnPIUtcYg53LXeDTHyw65jpPJzWxiCRJiMuEacuxiqbb2+F9QQJP2423g9W933Mj8/7nTy02+7EWbmNyMG3kDHPj0Hn3hCWNlC5/q9tbh+FUXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SozvYYja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SozvYYja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6C9C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785141033;
	bh=dkD1o2OgaPwErepQw7S7/qd0GBdZOunXZ7QNLzWboPk=;
	h=To:Subject:From:Date:From;
	b=SozvYYjaz76QIVAHWA2DwcyyTyLgIPMzsGKTLvH5B+5+0euOKPHV/QQXPw18vyjGe
	 RBxRIoLN+Vzq48qmlT90y5NCe17mlm0cM0oZ+XAjSbc1PzWHnhfAsTsMWHwtOROL6o
	 4E/bQzeFBg/1tSY0wWrFAWZVdHb1wGGkLCD1h6HLl0EtnkRanl0oDQ522pWY6aIBil
	 4egeicdhMB/HSqa2/TdKApYfNAAVS1nRclfy8+1zPzbmHaUoxhOs/oFD/y8Ncahikq
	 tgh4BYgL38zPvcjR5rEdsR/K4s86PShLVRdewSSDTNab3Z7RnXyI+GAOZErFzt7SD+
	 99v5YJt+ntPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A1C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514103368.31116.3016453567635626854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160cba492a88ea72db9a8bac327e426c1f4755e42c5692ffc2a04d7f27cdb00d
Date: Mon, 27 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785141033
