Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D44163
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734739554; cv=none; b=ut3TRCoWV0ERQxdO4L1z41FoLwOuBrkPv5UWrhbAQUAGy8V4Pb7U3F/Dp+LIf2oZP/xqbiFf0WqdK6g6H64RSmFDrglRA0QAR79xBHTIsE4IOfhl0Tsp6mD/52GjyXd0DUCSMClp2+24DSi8Zw1GviRnTqvTvAXZpWMMl5zRTxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734739554; c=relaxed/simple;
	bh=hmaXQrvrpZUATYDbQZDtUyYM5UqOlb6KUQFrZKZan04=;
	h=To:Subject:From:Message-Id:Date; b=Iktr4H+pah5ffYOy00w4qsvTKNAI4scoraj7UThWV3I2kP9mkZUifQLwG8ZHxwOU4JnPuGAojQDVtP22b753zFHYZWvI6QFU4J+pUNvzRR4m9ouwGIypImVdFDPcsngwFLhrlQeiRQs9uqQQLdPUKYMat8F+dyPXWwYFagnOnxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDMP3cDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDMP3cDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44D2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734739553;
	bh=hmaXQrvrpZUATYDbQZDtUyYM5UqOlb6KUQFrZKZan04=;
	h=To:Subject:From:Date:From;
	b=dDMP3cDfVa83G7U6TBO+Wz7qXgYDWBzCKwpsxPiiyOpDH0IKQptm8jbf7ujapLuak
	 5JWfC+Bk/0ZsRezMdopt8jm9FgqFeetm5EG2SjHufjpas5YUE/S47lBg2+Rgl5kor7
	 ngxTcb5xRfzmyoBnnB3OADPlAu5E6L5usbAOzymrXKk7vV/51879o9dDVk03ucKf9K
	 PFthKpBL556PMD6vIapZZuug7JX+n7wC65ItbuooPbHQkJVT7yGtzBCkNI/1pHKvU+
	 81TrQGlmCGiQBC4ZINx5e2yO5mWiGXh6qVXCtFpGs+gwpI2eNd0M971aKMWIbQY2cE
	 mcquDaPq8dIKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0FCE77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473955364.11997.4121391175340396552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8087c82e71528dbbf46ff13fe22e45c453b483a8d9f2b5abb5749ddf808046c8
Date: Sat, 21 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734739553
