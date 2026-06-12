Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF1A37754C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781289394; cv=none; b=B1ipkriw4EPJ6e4WZI7vuF8UQCAPWBAJLlIV/uUxRnpI1H4w5/9zPa1MnG4VOTkOGj8U6nQ4e+UmtQBQTV1uMei18pvo8Ukj926PDIbdwk7M/CFD4/KLBgGrdMd1nbiDrJy3Dzy/QlBXjzchhKrXzUgElmD4wpkROpXE6EFs0tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781289394; c=relaxed/simple;
	bh=qBpaW/mgnJ+a8GgZMedW6VK4kmtmVPHx7AZRpSVMKRE=;
	h=To:Subject:From:Message-Id:Date; b=HeUXkcEQHHZtssOXwytsBUutmbgMWrVNxIhD+QkyOXBeQjxXEtxJKPsEiHtwWYkgDe/pTMTgne5odK1Zp+v0PvMCnshWaZDkZ08R4fsTDqNTSgE0CbJUgBfPE06TogLqZ7mcSUvdnqRAH8INpiG0sdrNChF0l8aGZphKp3N5C28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK+BAL37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK+BAL37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E890EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781289393;
	bh=qBpaW/mgnJ+a8GgZMedW6VK4kmtmVPHx7AZRpSVMKRE=;
	h=To:Subject:From:Date:From;
	b=FK+BAL37iF7c6fEm0tCnlJ/DL8eV080+cyCmROGIYQVvqG8H7GrftFEWoEPXpsJTG
	 nJy46usHQrOFbYpn/RHFHx01e9CCUh82j6XvS5pXckVn3y+Zt54F7DY1jATw1PSwll
	 kdXzOodTEYIuzPRqjGrLwATKu2jmQPDYjNtUXOy7n9FSlR/nwbeQxfN6R0Cb1OjpIG
	 TlK4FItxHiEiXfssrs4ze62wuQEwSv6ZuPY5E9LBclwQ9iYwhfG7xCs4lQr6+n2BP9
	 Y/o5+HSWx3zX4PjfbJpkPa0VLW4P8sb9ebKXFIcuCr9+zW3A9rTvP6yNE+azlLNs2u
	 TEtRKmlJLHvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9DCD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128939368.28327.4606233020525719169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0dd8ecf1dfc62fdac89e8732611acd8c83a87fa35e7e70e1cbb29287238c82
Date: Fri, 12 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781289393
