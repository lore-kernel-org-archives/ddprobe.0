Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DF2A29
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710045497; cv=none; b=hW4TPyfGoUpUHzXHTk0qZBkJvey6M3xQMhSiWbfNuRkdSkjsO09EIx3TlEmmJhFcC7TX95eHIO36F/jnGyz2eqZ0nnTMxkqs71rLEozcdv01NFr5Yvdnm7uKdaYNqxiCfiXIR/ZLTwAmuwMY5NHtkPZE1bTLNw3NTZr+1c41RNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710045497; c=relaxed/simple;
	bh=LLfmiWZPR8Zup+ykCbnq1wvPmsqvwkss4LhDwNuiID0=;
	h=To:Subject:From:Message-Id:Date; b=op/ZSNVW2PLEEbpI8DWE1NmTGZQ7qKfJgCIV8qJt8MZt7aWMS9RpPpzrJ69MurMpSln6P64lb8To9qM69t/PwAWnIyuiDcdLPB+0W0r2N8q9UdQQLfxluWtgPAyH/vC8QRD5IvRzlrZV0ocs0m9ewH4LR0hRU7Dk3LbL8orzyNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lgs4KipG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lgs4KipG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A75AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710045496;
	bh=LLfmiWZPR8Zup+ykCbnq1wvPmsqvwkss4LhDwNuiID0=;
	h=To:Subject:From:Date:From;
	b=Lgs4KipGsDiaBQ1l71+Eh5+XO/F2/IeT7AgYAmWl0Qy8c6BXkKTuN+aNEr648q1ou
	 sIzZiCXCdUGmJkpuSxZV/Q4bZJWPWp2p6+obmXshYSwZAZYSU0WW5cjAz61Cfg6Kqm
	 W7vQZt8yBvurqcc776AXm5sfP5QP1Y0QXjXsPqTp/XFl9/JJD2n1jYX4G+CZ9kLwai
	 jd7wN+Le13Awsh5NkaAsxTKM5HKKZa5IHnt3VFqd883KD16pTdWitxCYt9+bs1eVJ9
	 6dgYVgT6gm/mpLskZAZqAuzCxEdrYTKYZf7sLYsxbhkMiy3q28Bs3NixBLzcZJZ3wg
	 ZGpY49stUKy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D46C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171004549636.17740.5305666785375733457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0683bb4897a36616b7a6d1a2e4da78e513341f6b3fbba588e21591c6ec4850c
Date: Sun, 10 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710045496
