Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FFF14D6E6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727564154; cv=none; b=ffPZZLZUbg8v7zxXXdq9wi3pRO6E3CxCibbQn7RcXJEv7U4mmKz3tsxlUReKLEpV+iblI5amfu+n0Ei8P3n1xEYEOBS0LzUhbVrwPyQP/SKjVJPJIGs8t/2RuxN62pZCXRBH91NV+ky9VJsbIwLo/0J+m1F7t4bYxzZKh8Ye5Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727564154; c=relaxed/simple;
	bh=D3iStMr57up7Rsk5cgMm1ZQOy1EPVHSqkszmgtHgesQ=;
	h=To:Subject:From:Message-Id:Date; b=KHdVE983QNXFQT7laAbRlnpFShGoc/Bb450S7keP7BIrgNZnp+jb/z8I56INgzIqDGDXrH6wvZZooU+NJz9GNv8Chei132DBcZMwy0ebGsn0AkeYiSIoULLPtFa3B2KuSwIXMmfjzJJB29D0kgYZylXNA7LOaxzZNtQ/+1I2+MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJf4AYCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJf4AYCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5113C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727564153;
	bh=D3iStMr57up7Rsk5cgMm1ZQOy1EPVHSqkszmgtHgesQ=;
	h=To:Subject:From:Date:From;
	b=AJf4AYCKFUknN+r5pXJB1Ui6d9vqxQrx0PHIvgpGmu2k2opnHiVLt9JFWURvbD1ln
	 xIujvpaRNQBpePkq7XdQ/YAKK7rIu0AcUBF29VNfUEB7Gp4oEUdphh3fnXsd+KaBTb
	 Lo6E9ai42syJRrH4SO/shiXaiNbhDHrE3jgZ+xhBEgEbMQmNWZvuT2lJn7kNdpHCfd
	 2lE5KZJnXRFrIZw3IXcXpxdKsKZyR9VjtFs+HwwThAAi8aNV6CoNC4C1vLT4j+T1Wa
	 tIQwlHijlHC/tDqNO50nYA6bt9YJMfmMzd/wvEkrndmexQLaVkgRdSK+no9rWa8syj
	 t9YG1E8/qWBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996D0CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756415361.26221.10462607005678584926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5283751253a78b8e4e06b12c693338b06553bff9f3d19bc07487a25e6fcc431f
Date: Sat, 28 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727564153
