Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C872580C6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744618795; cv=none; b=qh441tj6P7QP4DTb+uz5+Vx2cNrxNzfjwE07vfE3mnjedB8XuM0FEglg8TgmMFPOhINIgK/DvjffFPrMcxbvRohqJwlLMOzRTB6cfYkLOAz+cZwn6fACVUnmHl/Ey3KcOs+DU5YdPw/WD6QZh3cPBiJG5xPs8fqZsP7Gau7D2kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744618795; c=relaxed/simple;
	bh=JmBqFhVm9OHnB2OUT4P/J3vhD5lpQCdoJS+JjtTWT5c=;
	h=To:Subject:From:Message-Id:Date; b=N9s+j3pFDGzwSrJLr0k4Y4tiHxoLtdgeNClTcvBHrJ7TjmtsvprjkRTY8gA4J6kW3qFNOUvUGD2oDT6lAJVyx9YJKdd1YyRSrlfLtaEAvMtOLzvng9e7Fbuj3JcGbsKFjxS2av73Y68Wcv/j5Z8TJNYWzxU2SVuCmXGpimfxK/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esf42vbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esf42vbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2A7C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744618793;
	bh=JmBqFhVm9OHnB2OUT4P/J3vhD5lpQCdoJS+JjtTWT5c=;
	h=To:Subject:From:Date:From;
	b=esf42vbmcnAbiq0BKW8LCOOxalSS1SHrbfNG4iSm7rD5svlspVaI4GnFeUjs/dUfN
	 PgamJ2oPx2ARIuMAaAS1EsEwQCWEQtzk8B5DHM28ui4mzfCmIB16KTglarpyoLffgf
	 3oMEWEMrebFs/tCesXN9Nw8ROZln3SmuEkHfQ4hblemQX60+/Sw0OvSS6Q0gNo/3Pi
	 /Qs5WhRrtFcgjY5zyf8xPD7hZ4hHUWFd4T268oaeChjFoa0/aBqPUzG83ouehCu2zJ
	 6KGyWCH8QIg+C6+EIVs9wjh44czdRrXD/WWPhe8EVkSLABZgs4uzN2gG/SsplLu5H5
	 p5Dibcqjg8OWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71CC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461879359.1348.787062415080517306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bd46c9121481e37d2397a9ca54ca5e5cca77bc540478b79beb134d109998cc
Date: Mon, 14 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744618793
