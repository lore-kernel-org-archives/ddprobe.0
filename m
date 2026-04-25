Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556A7E0E4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777084654; cv=none; b=XfI4ihrXD2ySU8JPQD9UIR9CVxqcMjJ6Kmi7TbEvPBmaOSqHHeE0KnsKxGff3jgNK1qU7qKuBHfLatg2MVU1baijnQx1L0r10e+S79faS/J+ihnDDQM+y7pFJoojFicrQ7Ib6+KMWtmU6wTc17Ur2XO+wt0++3RRp78DxlBj5Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777084654; c=relaxed/simple;
	bh=o0pSf0BlA4Zu3kbOMHZWtl8yTWhL56P7qrEOCag6hTo=;
	h=To:Subject:From:Message-Id:Date; b=dEa3bhW+JLjj2VpaAyLRCiEZpRac3VmgWfWraTnJUKwa6okzvLM168wfqbO4Fuu/Fn2CXyiv5ajVctWErbLSFtEPl6r+yEV44AfT6sia+MBcX5hgGtI42q7Se1uOtlH0MoYvEZPUuq3A1BQhrfK2S5LJGCXyV1rdIDjk2tmG3G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaZsDo9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaZsDo9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F7EC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777084653;
	bh=o0pSf0BlA4Zu3kbOMHZWtl8yTWhL56P7qrEOCag6hTo=;
	h=To:Subject:From:Date:From;
	b=eaZsDo9aAibWQ4T10MmoiBsPVjX3lmkNkuIsnwjOCbS2DwERqnoB9Kpp5wKFuidrE
	 IAzNgK0XtCygOaGqMnl6jgEGhJZh2pGl1Zq8IZmc+ZGvIKyJabHlX5rvioxfqD1tWr
	 +ZqZvxNp3sxYhQkKzgP1hXSqxN1SGC0DAmabeHcykShHg2RmpySsdX+TLbmzrOLgIl
	 8srfJ00hrC+RkLe9i5t4FUOsM+tB5QpYqzqv6rBgmh6xjxMqi6Akk4yOQk+eaaqJgN
	 I4gp4U9Xs5/pSwsIRaRQGzezP0j8WbbGeChpHeb2mziptA9VzO2XvsNSEJwGRD0HBw
	 MA+/gobAxB3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D1BFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708465369.3455.1060601777146065121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5a89e893e141a4c4ed003fb8a5a0853bd2ec0a05c77aabf21e3781f8eabc92
Date: Sat, 25 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777084653
