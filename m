Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F9D2AF1D
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789776634; cv=none; b=OIC4Qhs6EV0VZxZJ1JFLW2r1qeZc59/4W9gJyIeIM8r71h552svGn29t2Cz9wtqmH8Zwq7eJFu1auq6R41zkbNbVfMw2XkWi8Lzh1YbnAgg2S9MStJbh53D+kmkqFnXzeXxhJtOQR0ZwGhjD/xqJ8nntV+1CewogzXvN2lG63IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789776634; c=relaxed/simple;
	bh=lzMQM53C+o4dtUCu9r+J+GYlqj6ixhwZKumqxwQmlW8=;
	h=To:Subject:From:Message-Id:Date; b=byaFP5OMCjjyCpiKSNlDbaAuoHRYQm82M+ugmkCwzAnvEu21t2FUJsAZDKuA2/c89ELNb0Ra5b678gbCsqOuDWpH73nDuo4z+CnTicTWidljL9MBuix9yp3Awc3LgwQZyz3nF5qpqPTHZUmDnP9PaZWeH7Yt8DZT0sy051lpKtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVaJVhbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVaJVhbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA6FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789776633;
	bh=lzMQM53C+o4dtUCu9r+J+GYlqj6ixhwZKumqxwQmlW8=;
	h=To:Subject:From:Date:From;
	b=uVaJVhbNzqDQy3O5xAQpr2HjBHNLJrjD191LPgJcyu63FjIo7rIU9ThyLiTIHBuAv
	 1vFWY/4PHW55bWalYoeopLIQrCiqCGR78Df49clorZNP5XZbNdE0vIA7vmmNr/rLkU
	 A4/OR4H9IkR4Q4kRw4RdEbR4E3x7Uc610LMFvb2mTQ+us0fEfu1nEVghn+kN5RvAwe
	 GoZLz2gdzvMoxc6IytKQbji0HiFVmShhg9OtAIHiIYtgGYFTzNiPJeC2zT/9UYJnzw
	 MceVqXJYsH33N3Gw/Ftk75g2fP4EXZKO++gmp0fSq8zwbY5o3amBT7fEQNFtJSqXIM
	 deH+mowVqWjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E4FC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977663371.3804.9902147393801257532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f67526851847cc47f4ed91cc802f6c30847b1412f9160f91823e7d24de56353
Date: Sat, 19 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789776633
