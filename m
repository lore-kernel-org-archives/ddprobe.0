Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1050C69960
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706693897; cv=none; b=P3Mv+6BJjxVBoUz7OWnqEiaHKg+pgJYlIAG3FO/yQidWZPyrd/LRAmsELHPgRr66gtWPStiyEIWFemEZynql1i3qBNwlU9ygYo7U0GiZLgNIb7Jx/3/n47C5iwEk/bHvcXQJ+zl/dGhQHDiQsPx6pLvoCjtMWhAU6WMgbVtzd0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706693897; c=relaxed/simple;
	bh=PkVvRrRpveV+cFAMeAJD36h6jIJL3YKPjHBmXqTGsyk=;
	h=To:Subject:From:Message-Id:Date; b=LJ5BO3rzUuNWzeL/JHod6R4/KsvSFK9lGQXqD0E3WRHMQimxrhCaY2wmKN2d56TMAvh5ZOZJvlFUrb8qailm4xaygir0CNiDRHeHs3x+xMCm1BY+fqEOlYtLOZsOw8+iuh55vCLZHses/H8AA6s//b1dhWao7LHA8jkox4qgol0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXVGI6ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXVGI6ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76420C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706693896;
	bh=PkVvRrRpveV+cFAMeAJD36h6jIJL3YKPjHBmXqTGsyk=;
	h=To:Subject:From:Date:From;
	b=tXVGI6phwkucTwuUGhUqkBbcbCqROwK7y37NEcFBRe4Tx39ri69J0UJk0EoNuyLdJ
	 +L2iveG0U8srmFsrzeyyF2a5jZg0u1FwR1i3rme9sYFEDo6sPd8U/C0LgJauvNAQLd
	 pv7sqs+8lUAK77XT1VzAoMOvy7k1XxmYg5Cqqank5aXfsn53xWHF/bu+e75JdUVkhs
	 y6Y6fZyo3lwW9zDt+5ab+Tm5Nx1XDurJdidWNZ9tAVVYTviOboBbLhQAGp/xNWbnnu
	 pUsocv8ojERR0IiSIji1eDhD2JKGr7dclh4gfAkZVkSUsehnnCnyen04gEj3xviuS8
	 OWJj/SnRQbiIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E119C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170669389637.30812.10721617539771569502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2ecf68901482d119878b109b00fa7ab3d27c24d9c6247a0b7775ce0ae2071c
Date: Wed, 31 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706693896
