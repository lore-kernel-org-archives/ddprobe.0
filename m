Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262E61A6838
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782634114; cv=none; b=oKDQePoKJ+dL/I43ENNJiVSmN1bU3gwJp4/Qj9ykIigN/biWskgzaj37QSl7383fyNf6lt2SoYyzUIqpYYcqNjw2k5nOXx/ny1rkMUajDQF4kOlkdkA6xMZKkZv1BKtWIRyPpu0l+CiyVx2kUkg0wRiaB7xgK1TDE/Ukxz2rfys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782634114; c=relaxed/simple;
	bh=YCo/nR8Mc0rBKUBmlKHjOl3GTOU3xlYt0ZkbAjGsUkU=;
	h=To:Subject:From:Message-Id:Date; b=Bpq1Pm7xTVwPrhRQrEQoFmgeM9so56K9Mw7rBXp/xjXb8jXiw8pbQZd+KkKOQbXOwGt5RYawIZuubiW3m6r1b7XRcSCz5vFxkTp1O8y2Xk/P/W1HvQ4ERsu6gb5Dxzw63jUuS60LUUPCvYU5zu8vd8kQlRcS3y2GZEFsYZ/utFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4AUfNEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4AUfNEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA2EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782634113;
	bh=YCo/nR8Mc0rBKUBmlKHjOl3GTOU3xlYt0ZkbAjGsUkU=;
	h=To:Subject:From:Date:From;
	b=b4AUfNEqb3nyDtt90l0sZvHY96KMzpDrF3HI9PqUBAO0JBM19sgv6KKt7XdzTa9Hl
	 RkR0GnaBKqWsx5lIdW7K6UC/BVjyUPMM2Q8MiTa9vPKtKBlx74gWAS40uq5oXIsj0B
	 upBA73HSP/BOKMT0ipjW+42PktAUjjVx7aDoQ1C+SGst0EUzRpAklIyBiqomLHKL8t
	 GxiuobH/OaCOWBOtoGMysdyrPJQdn7Mh1m+9ZhvodR2SczK8iDftGYdy5qxza7BeKr
	 K3PGrwL1IV5YwfmskAdhoCfbFOS/t4yUNJSvOgfknzeNUzP7ht+qo7Ooe208Dwy9GO
	 oA56k4+dKTTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21D2C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263411369.16705.13206275610179572196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93c2f8c0b8b9b37374f4d34b14fbf2d6d9ee014dfe6511d5becc7a992c19ae0
Date: Sun, 28 Jun 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782634113
