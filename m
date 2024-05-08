Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5B01DFE8
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715160743; cv=none; b=AVKANEYJJRITavcPzYmWrVqysFv4VSMt7BLYxLGV0CMaSFGe20wuXG3z+1XLRkbSc7bHV5Hh3Ib3FQw6xf1XFVU5BjreEWX9xElPgNO5RYfDfsnJp62hyKj/1UKmFujEVyqdbv2lPrRxgz0Pwp06UF+0uvuxHtugBUp1ETj4Er8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715160743; c=relaxed/simple;
	bh=6p/w5J7YUH/m9WJ65/PklePGlzeEfvG9kFfM5oEvkjg=;
	h=To:Subject:From:Message-Id:Date; b=BwcIXBdK4jn7OUw9zwiahJ4CEvzdkoDN1EhQC8iRvbAk/yNHowRy4jjInO3IszPHwDaGx9FlJknli6f9Wp9gvGtVc5ZHxiarYkIpkiWWg4tNa8+wKLYi92u0xOn2Q73KUtm1jRsYSkBnFbAdpwLnWMd7YLeH4+aAbJN9G+vFk/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnLwlXSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnLwlXSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8229C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715160742;
	bh=6p/w5J7YUH/m9WJ65/PklePGlzeEfvG9kFfM5oEvkjg=;
	h=To:Subject:From:Date:From;
	b=HnLwlXScjBZvT9YWTYHpnGp1sSm2mnYC+Lra184yuyhjuKRuPIl1Zp+Rw3//bX+Ix
	 a/633hKM9TwTSs+qIIWZrYGgexGudbLVqmbH0gXgCMmV7rtc2vcGtoIuQp10CiaZ08
	 DR94dyTz6AbCTLio7xxv24C++UZUnegLHuANgK3zpH+dQG3H+OuBR53cf1I2QZ0CdR
	 B45z5LIcdjEPl83U2o149l3jlaAaJ7bov/x6YHPDsivGSUcQJAvrX2rNOyKVBJDxmL
	 3T/vD85Nuc3l+AF/9Z7Lh05bwiSw0Ba99FsOxF75+u5kqExF0YTX9UmCtzkWdb+iNp
	 0WNa4RK//uzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DC8C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516074278.30757.1590087478804173907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14416b8609e807f5ae58507550a0af6da3b0524b888905aa9a48b38c124b443
Date: Wed, 08 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715160742
