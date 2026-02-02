Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2B236654D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770040434; cv=none; b=B0/symny4herKsfE6j4JQ0nG/1KuqFuGe4q2ExdOdQZ8OKbHgJxOjwUAjKwAPXxwR9N5gFoKbFQVEcz1l4buogucW1AVjBhn/VfrKTbwYSMBx9KZ4sGweEqjn4D4nPf55dQB8Emla8MxweNZ/JM3pAYm7Dp1jgxMXmZdP47BXC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770040434; c=relaxed/simple;
	bh=rbXWN5fZnAt+Evl3l0Eiyop5/TL+UpffFS3Jgc0HAeQ=;
	h=To:Subject:From:Message-Id:Date; b=kERtaYSQGNYetHpsBj1E+I6Q5+RKfBeZERnaDrzy4Qycopw61MfstDPOeSZSpBBkACU1xQ+KuOLoMuOjUgb4QkarP7Mu8oXk4skOAWECcg4Obx03TPT0c7GCml8DEeDJUq7HHEqU7p8VkeDoDtR87M5NPNADyYVOjTxCzdd0Q10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jICO9Ry1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jICO9Ry1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1AAC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770040433;
	bh=rbXWN5fZnAt+Evl3l0Eiyop5/TL+UpffFS3Jgc0HAeQ=;
	h=To:Subject:From:Date:From;
	b=jICO9Ry1O4HuGMZR5ftHikS16az34ekdaoKpTrGBUwWuwVg1d9nj1FdG0yfKtx0th
	 3t4fDZ2Q39fEmWrVcOWB2tB0eKkQ+RyQ6A4bfVSkVh8QtPjoDgt6UdlnbrMMZhXE05
	 RFxutpa3+QMUI1MvXC6JbwoJ9FjPlLpoSfbnLCf0ETfkOrm4vRDa8A1I6VyolYdoi0
	 h5/2NxK7kYDuo5CsQ01sflb93ZbGQ7qC9TzD/DLquRIF8wHo+CE2+yg46N+LmBslTb
	 hC7FVO0Vu+mCo18nlc1T/fPRnhDp01JQmuCJFE+w726yQoeq8jKVBKO5w9aZC3/Qqz
	 OYyOD/SNmsQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99528E73176
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004043361.5937.13328949341491854932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f539ca5e6e0e94b1bfadde7c4c8432e555560b3ff2d64c05142c87bb3ee9bdab
Date: Mon, 02 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770040433
