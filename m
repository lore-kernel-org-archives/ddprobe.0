Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC57F5479B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754698193; cv=none; b=hnOYMh0jRRr+srzDwoxfnCgBOlSS0YY1qrcfkbZcuTboAlf8ZoHff2fBrsDJy5xJb0U0Mfv5zZnOWqLdoWqAbaSLFP9DZEZvgUi78XM0ylqmhZFUvpETSoKO0XbnY+NwwUmPrdenO7eEl0JAFU2IVbZ4Nh8ZIx0sMUs3kTSVx04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754698193; c=relaxed/simple;
	bh=EGg6QXYJsA9TgOGJP2hMuJEhisWhSO2MiVUgYOSJy+8=;
	h=To:Subject:From:Message-Id:Date; b=ajlskN3Jk4TkpFuepub2uO/V0Ir3A493kaVhtiOjhobGuiMNCD5fpovvX8tH3g2qpwKu3jR//24lNEuRgmVlh6IAAIhAoF/jYpaipdhVO+x6WF+hsuYJ2QniVfY1rMLZqOKboBmjmKJfqvuhrWDe9Ddf2j6RVyAf18Ga+xvD7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogyjAtc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogyjAtc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F526C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754698193;
	bh=EGg6QXYJsA9TgOGJP2hMuJEhisWhSO2MiVUgYOSJy+8=;
	h=To:Subject:From:Date:From;
	b=ogyjAtc1puECyMCJpfMD3KGmB2rr9c6rfY0PhIb1AmRZvqmnhoVQbqdMcohn0VUkU
	 kDmwLTULWSNvWFOgbS8xKTXdAlZ/vU3z2hcG9nIRAZefqu86x+nvlO9N+7LVSFLKrb
	 KL6cUwdhQ/nqyUd5rOuiRa9iIwv2w50FGpIjl6Ol6M0ZZMFLgEphIsvhMMJKihAcyY
	 hUX+661ZdLewioynwlifgatQvWcm5kDkp3yiSA0+DBssi/UC8siVE7moTRPNcngEuj
	 IS4r9QTB7BLp2H6d9cxWvdYSW4o6g2r0DtNfWHFl/JoqUOGuihNdkujY8DAchzG22V
	 W5vnla9KqK3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F263C87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469819357.4526.5539335036433451055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab709367c2d3ec00d10de6f403ccdd1600adb0cb20ac1fd2d934a9a7671c419
Date: Sat, 09 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754698193
