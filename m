Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE51D3195
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724787354; cv=none; b=HI0q/z3/xY4FUezf3jj0ILtxw07AfTcwUvZQBMiGNNpDjvTgqP7nJeHSwAah9ia9SFZAIV39ol8Lpa/PhXYkMJz2oZifnp8+11MRtRq/a4vHzkAW0veCh6G3ZDFjs3tLqkwhZyexWuWMzmvkEvl9wkNq1ATylKU2qHm9f0F2+W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724787354; c=relaxed/simple;
	bh=YHRqOWJMCeTsmClcmHPz5Tuo867vbwVv0vvt9KNH2+M=;
	h=To:Subject:From:Message-Id:Date; b=DDiQ/poudKSv04MHN/z9snfuLosta39SuXNjD7s0Lt0x6lz3GgLW55/18Gjtmu/alE3dofpV7MBBhhWgbb4WrMzjHDa7uNzwWEfawpiMuhHc5Y7KdKR4FtzztjTEkqH9rJHqAxMPSGS8aQ4oV+VNGYvrkisE6KQwj3t5iCiwW0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6AwtD76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6AwtD76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5C5C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724787353;
	bh=YHRqOWJMCeTsmClcmHPz5Tuo867vbwVv0vvt9KNH2+M=;
	h=To:Subject:From:Date:From;
	b=l6AwtD76Vuee217dWZhasjvuEh5Ys1Qd/8cfx1QEFd7Z8wHhq7pHbsCdr6KO1UeKj
	 Fh17yoo53ayVqmM8XwTtSeg8JELbAwwLD1zjkRgv7TW+AMGmke7I7D8ClBouBdtgQF
	 FNaucI6NlLVBV2yojvHwBHIzZE7hHTjm2fhcIdhns/qaSqW8Xcse56uIoZ5NazyWiV
	 s78fu6vtEwbZ/Xf+Q4D03WdDPnnL6bjC6xIlEHoL7kkP8unY4G8XarTZ7aWwZVj7NP
	 JcPE9+joYy74hQsPNaI1Bknj19yHurFvrgBWuZX8fxs1yeUK8gpFoPq4JDGm3Aiyv5
	 NEopNbpp8z3dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41F4C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478735362.20926.9697356277148236506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d0939a21f8718e75c2f161e538762c51b2cc4b17da2f099509562f25a94961
Date: Tue, 27 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724787353
