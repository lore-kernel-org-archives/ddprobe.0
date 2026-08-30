Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F80B339705
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788090034; cv=none; b=qIkmXhZms6jWeuJcLNnbl6AdmN44//N/rAiqe8bXaGcrgRpAYwd7ZixUfKivuj8hk/e5H31v874rD8eRIfIbMDYMzCowNM9dKaR+poKvnmUCzgV0QT2D4nPYe0z1YNV70FvthyjJghhvZLAmgKHOLEqGP23ukBHv0v0uZffRFas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788090034; c=relaxed/simple;
	bh=BMdnQf0tKOTA7oOltD2Vi/NvmNP0um82/lD93a1cjgo=;
	h=To:Subject:From:Message-Id:Date; b=QBGbjbg6LOO4MX9cRd3qwDcIUWnY3vu9vDSr184/OzRyqujeCEwFzqfsJy03PPanSVgfUuNbkXxpDdRduFHk2qZoKwZdWF97fCitDkrOE/y/q6Xe50/F7zmEHT+J/PDv1qq83Pmdtn7W5trBhMALRGnsm9ZlARlhZRLUnstPNjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlQAPD39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlQAPD39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E033CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788090033;
	bh=BMdnQf0tKOTA7oOltD2Vi/NvmNP0um82/lD93a1cjgo=;
	h=To:Subject:From:Date:From;
	b=RlQAPD39HEg8kqqEAJkkmHarUz1qzf2i5tDV2QR/d4iqCE53tCSmBVQLr0I9S73ra
	 ohNaVUR2oLw83/SuPuzGkDLpIc/vDVENgqlgB+hGl/XHKviY5afuoukaJG8ypJ5jDi
	 d7yc3w1wyWPARj1KkAblfW5NMS6ud6jfbdPJ88dqSfLOTe6tSVsKNOnfZDLY7pe3/8
	 Jh3wRvbam6QuHujGt7hhkM8e1vbYSMuHVd30iAY7jyNAFPADqiRjrYJSbCOL7RBkoc
	 FSe0xGSjrUFXJTsj9xTDAwemZ7Z5e4vOAKe/KzMZ6v3B/icuFrnMNB6egGi6KdIt6z
	 barR3Vbmk9x+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B94C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809003369.23288.732617572176731184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a305cfaaa3106978cde39694b3dae40e23089f8f1324aee4acb8a8dc01262387
Date: Sun, 30 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788090033
