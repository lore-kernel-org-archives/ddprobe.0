Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC433E1CE5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790196034; cv=none; b=KJp7TcFpsjENVGtjAy7qM0xC69kQyzn5DQiAH4KkPHVM/FGOaHFooTbKALIXwEiRAM0Y27Wd/AokVohPLjoQeJZNeP+ogKb5P2hhR7ecV2KgtJGEnAzP4tg/hiOwtWeGa4JxXx2tgdKuy5trH8yKp0VjEkvDayHUCNGk8MnMEj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790196034; c=relaxed/simple;
	bh=YnD0mb/gj9hA/jA0XTTG44H/FdgLpqz1uHj87cHS5hk=;
	h=To:Subject:From:Message-Id:Date; b=m3xPPYvtvOEXTmKq2GORddgNcvYdfI8XDCEe8ZtSJYd4e6k9tKN7usbhCUUE03bGgqa0XBb7+ZB1Y750SwIRhuj/27TUH0InhKKTs3fvJLQUvvcz6G6IH/7SYHUBX1b+qNDKOm7YB3ffLmQ4EGJknKyd4FVLpXHo7PGkMF+j0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mReKRpm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mReKRpm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AE9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790196033;
	bh=YnD0mb/gj9hA/jA0XTTG44H/FdgLpqz1uHj87cHS5hk=;
	h=To:Subject:From:Date:From;
	b=mReKRpm8pLC8g5BY4h6GC2d9ng9ijy+UU85px3BCUslZZZ3df4iwdMSbeTYx3PW1n
	 225AjFZtzolTcwSw8LcxaTaU6dplMo/UoaV3sKeCQw1J2E+dOuJoYpchU5+rWoPCVU
	 yuzYiMS920G1O6StrTCrudsbiKB49vAeG8hTg1u8riXa9aaEfUQ5QcJ5yCihLLnEI1
	 xN7TP0xAiIsK8piX4OKJyLAcrnFpyVIxcKC+5RwtJ+c0HYDVGsx4Lab482zXQaW/+T
	 gVlmd/iuDAXJtLpfyl/jWgePjleICvU92hynl5GrUG1j6AaGilf35+ZKZrWjP5xAdF
	 r5n+XrTdIV1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB09C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019603375.14854.11094022809037425301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c356b8f4af7ceb23cf816b1d5e644103bcfdd923e53b19cf8f470c1b2d9bfe
Date: Wed, 23 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790196033
