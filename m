Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E419C3AFD09
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783331915; cv=none; b=QCeBH/pCol12nwax1tDW00/w1v12zeQxKqIYM/RDNL231rVUuKovaXnPmC5tJJmktrbJqAylr8vitRH2goPQLU38wCy3+Y/kvX/CufHiWn8VxR5PiSGrIyN0waB2nhdEg43K5wyAPE2PK9OGzTETTIcIzq2OwRd0JqP4BbuH93U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783331915; c=relaxed/simple;
	bh=26LFsE/LQ6uPdZ88IPA3UeJc2S+zXYnUqwwy2ecTxAk=;
	h=To:Subject:From:Message-Id:Date; b=TPUpNEI8aRgt6QhoR7YYHbIcwKPsQF5oAnEFbmknh8r1DUDCJGNLVv6SNtTLMZVJMZqsLvdo00w1TQA0VQ44Dq4G7Fn6odM69YrTElOpRn5ZcgGXkjgLhKklchakUqXYY7x/yHKz4+bTdz0gs1MxMAHP1I62yYXOYUL34hLTTf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBYkVqd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBYkVqd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB810C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783331913;
	bh=26LFsE/LQ6uPdZ88IPA3UeJc2S+zXYnUqwwy2ecTxAk=;
	h=To:Subject:From:Date:From;
	b=KBYkVqd/rci5S68KMk2NkTIUAYmACVni67LyfCusSklCNxQiB8eNggtyC2TKO4rfk
	 JRC4tzgcPYFp1p2uspK2U3EV5NqvKQKkHVeifes4pt3fjb8u3yr856I2uRMAC6MBSY
	 uv10+q9hNocesduV8Vu+MDm2aqN7dzC4iirOzmWSc25cGMZeu+oDrOd/TDbyyuWDwQ
	 QR8itzZYhqd6xt2t7ZQq7E9cN/XUrXyRs1Oposaywy9I487bIlPmBr6afPtCDuKKwN
	 /dCwGUK1XZZDGgCIHAKsMict3aMvLg7c5VmKpdqRFTnhsf5RqOOukYIuVqzSYgft9w
	 rO1x5jcp46j3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9535C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333191368.5471.11383156337790389297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5f0fa64d495b583084e963fecafbb007738cc4c5d055aa7acd78c43a650c50
Date: Mon, 06 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783331913
