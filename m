Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4907271A9A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775645734; cv=none; b=AllKPH0Xop8lgUSTlDZB4Wr1r0qIcsiHDVLcal7RYsyzqC2F/Xn7c1ApWRj+9dX/iHRmfFlUCl5exQUQfMew/T0gmgWG2JOkFgxgdo9N4s20Fl1QxMYEkJqlXnIO856d1PfhxPmt4oO70U6zK3nVG2P/Uqxea1+3YbhYnXlmbyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775645734; c=relaxed/simple;
	bh=5kGNdKACTNG6PMGC4XKCd7HCxYP1N32iOKgTA5BCnZk=;
	h=To:Subject:From:Message-Id:Date; b=RdNUZ6ftJYAe1kkeFrVpV8azSGILl1WgMhbmvgYiRkz2XD/a/xXFhYsXVK7DVnFEhL9P5oczWvljb/XYHiQ8wPmKBfV3TGSvccbp2+Ep6lS4keeTCOcc9Bmm28KIZTvOF8nmocb2kkVcY3QEqC1ozsidpLsHsCR7Uxk8RY5fPw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IU8xbZ1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IU8xbZ1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF623C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775645733;
	bh=5kGNdKACTNG6PMGC4XKCd7HCxYP1N32iOKgTA5BCnZk=;
	h=To:Subject:From:Date:From;
	b=IU8xbZ1eiSa3JFRAqionNlYIlr60UHt0ZrI8g5D6X30iial3ZngUnE3dKOPCy4XBj
	 0fUK528WcBnveSa8DWOBiT590d9lvmttVdtokzag6CDOKqLyQ7X7tY/ta8v6pAzw6l
	 q+cwNDdTfPng992QxYi2DD5ZKkj4dYR8yDuAs1976s2HyCnbmOZBbL5RM3tjMEsOZv
	 yTRBe4TuM0304XivVNq6zWfZitnmijloae7Sl0HBeH7Nr5at/ZtWjDuVVNda02D3FX
	 g6E91iJe9cs3m87i3Iun/P94PcoTQq6Qb1tIlo/OA35Y77j+ANeHbrwHgbAB3c0+EU
	 jx37kdvryj0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7061073C95
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564573368.18549.12597539383440666881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1a6d69572f3feaa4b39209b89f48f79ba7b7ed9e8b2462700e40b6b3eb2028
Date: Wed, 08 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775645733
