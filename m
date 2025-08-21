Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393722DA776
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755818994; cv=none; b=fo0r2DwGEN/Kd+uIfLZccmvDrrcZpQLzWURfCPuA0tuXeD8wZK3TJeHYMj+u7K25hOnWGvP8y9jswdqWLPbySQU1PDsOjpyl450/0ZceTP4Z69RKnnFQiU3D+qEgBZoSgzpCbrUvp7hFMVfBoGILdEuj/2iE19NDU2H8hmMyjdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755818994; c=relaxed/simple;
	bh=dgCcYsTHXEnwO/Bwo1ivb3CrOBMiH1Gaopf8C9AitbA=;
	h=To:Subject:From:Message-Id:Date; b=PLSMBDspmGsGvp1OMcQMkNTIrUxYac5pVjYQW51POlttQxXxDlC749xodO4MzyVa4ONGoiX+L70aiYpWTBOiEAf30j7L7E+iUniVDk8P/wSDmu/aSxvH+yoWpytDvGB9eNv5vV7+yo6DXN0mprhEC+uVdhXCkbvhJ6htmRsBLAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p09m0INL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p09m0INL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6099C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755818993;
	bh=dgCcYsTHXEnwO/Bwo1ivb3CrOBMiH1Gaopf8C9AitbA=;
	h=To:Subject:From:Date:From;
	b=p09m0INLlfBHGPVk8U0Fwecdynw3qj/5yaPI8+eIdba8PrlBY4llB2TTbIebOHkSq
	 ITeQz73LLwbK8aQ8F5B44twCsIL6Ab9crx0Jt/37BL9HXVTHA3ADHVpJLaqsCuRyql
	 Q6ID00bRtzhGI/Re1KT0Kabx2Gie8GVNCiCAUdaX2gLXLvB3Zh2KoHCtBqBPwY8imG
	 pwD+UVLX/mysOL4i2WYBKBECWfuWk6EOL860YnsmA7y0ld9EBvVj+bMXvWcr9UtCf5
	 zt+eVtMA4jTLgmfy6+ljkJfb4iHya23RZO2ewtmJOoVMIYr6OxQ4G/tTX4klh/QOer
	 OWwtmkloP0rmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F8CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581899358.12902.6321479270343302073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f29fe602014cb36be95e1a3fdcce413c0ec7b305174ec8c723e98b1cb8fb9e5
Date: Thu, 21 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755818993
