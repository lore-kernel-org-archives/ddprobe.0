Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35949192B84
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752986395; cv=none; b=GNt0wN9wd03GMZ8QT0lzRDALjSd3CcKcIxBZ5gq8qmlvVU3bVqqTN7yDd/V4Xfqo27islSZrI0wkkLNz372gW7hlm+3z8ntx5nPfB3MCwto3Mqq18EY6Y1TGDOb32dfrEK5mSqwQZIhN+9BmcCkh9bEPkbAArbivLZ2AM164Lnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752986395; c=relaxed/simple;
	bh=DtGZX36VFbkLw6V5xPSK4Edja/MnHApmRdUvViqDVE4=;
	h=To:Subject:From:Message-Id:Date; b=dYSalScGfccUmp1jdR+UkwgTbMmOSMf42hFj/9Tl8BXDc7Uux0sAx5k9u8hvxI2uQdQ64SRzgJ+/Iyx/aFgWuoKdGBmyRf9VDxt5q8PrCWEm1SYobtQDUj/1pB+fT2bXw/E7r0gJ3/v+wNOb+T2bdGFM34A5LFWA7QzWPiv92+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGHNx/3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGHNx/3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58EAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752986393;
	bh=DtGZX36VFbkLw6V5xPSK4Edja/MnHApmRdUvViqDVE4=;
	h=To:Subject:From:Date:From;
	b=PGHNx/3WAdjd1U+kKlvTBFR7m+uEpphUKoZqnDodwX0lAY7RpwgHzXZd9gbU6dWyH
	 CvkYi2pRdR+FDIPEjN31SLfcZtUQRm8XlobfHA3pNEsyp4+zMSsqU1G0v6aOQ2z4/M
	 unkafWZNeQhrBctmwiiADr8EXrdEj6B1lbqhAW32ZL3fpDlUDYYH+ZEUAIpJFdVDfr
	 PAFDKdVCJT8w1XU5Endsnzuf30AKks9IqYUp6LNlViIbMNm/Is6pWxe3dUBJlq31sO
	 ffng3D0KmCgphl/wohYSbvEGoAREGSWmBwz7hzp24KyffY4sQ2vLQS3ZJ2JBKTiVpo
	 RiynVVPtOFwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FDC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298639357.4800.16076316902659416945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba1e48954f1bccdb7c6a0e993e733c4cb61d103afbe6a5d4f80bc5b90bfa693
Date: Sun, 20 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752986393
