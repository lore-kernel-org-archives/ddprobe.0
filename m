Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F8630AD00
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758832794; cv=none; b=AYoNmULvpYJ4awcoLLsUAxnKGT6mgtH/xDkgGOzXFA2kRZ2DDFxd5VG4LsLLk2fQ06kbezK0AtwXyXyjhJyPmHS1B2RSl2db1RwD41DbdP76USemh1aUlCdPpfuDumb/MLEqfC4ZvY3RnPTUx2lkGBejmjjguD+6pt2RCBAz50Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758832794; c=relaxed/simple;
	bh=YLcB+hRKvR8a0Mxjb+rNPHWtEeK9DUTxn4puuW9fLHE=;
	h=To:Subject:From:Message-Id:Date; b=JEkZHakMO8+pJsmI5Q5I0Bmkn59mjo8wso1izWm1JSq1ammL5nsstGV2zN637cz0eGEYY4kGyscympwbR4exsD/9WCUCpMmbe6SNWn8RMnglj+lYLQZCVWkp4cTUlF0GLSOxxCMabINKe/0aisehzYwZNvcmyIXS79cBJ1IngzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0h0TO63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0h0TO63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D11C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758832793;
	bh=YLcB+hRKvR8a0Mxjb+rNPHWtEeK9DUTxn4puuW9fLHE=;
	h=To:Subject:From:Date:From;
	b=O0h0TO63y6l1XtAbLQ95BytLiWVhoLCKdtr/tE4nYXCteaN9wQcYc8ctvNpABiSI3
	 AyiZWpGE1wNiN3a/XVgqatItHfMBxKVN0VnFNzA0WhZnTutMJks4Sk19rRorv0JfF2
	 g5PHjkKsgJ+sgYnDU3obtv9y5kGc11E54JLDtNh+HEBcTiX+k5fiOqqgRGx0GEFiNI
	 QB8XSxlCFvgLvBLJyz+cFpkX9fsEzUdoUGEy3nfgv0R/G5JxZmMOprDPcIPjrhWBtT
	 t5gWz9epxErGwuiud/2hNvhi97VO/mGkzZZPjSRp+XPRez5uZ1qUwPj4UM4W7MiAKf
	 4MSZNNAv2kzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96469CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883279359.11170.5935353236908067214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4676091865ad5648a0296e85983f796fedc2b1578831f5f767961e3e80e37b
Date: Thu, 25 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758832793
