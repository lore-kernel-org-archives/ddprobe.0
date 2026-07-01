Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304A53B5F48
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782891514; cv=none; b=qfKRHEY3EPOPTerN3oqgsGMFWE9TSx9RG0JElKTgHzr7ZSY4RmgcEAGgFTKHqQ2W1tK75IKQIbvvIKxy5DjQk50uIxvfHFcbvPhSYRQdVW985XI/XUvOEIGHyigNsBCJQtywZvAXmjuQ4DSgOjEKCfurc1c0V6Wegm21u99XRyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782891514; c=relaxed/simple;
	bh=mOEXRfUAtz/pPAPWix+NnDskTO28hvUSfVYCEjRPxJ0=;
	h=To:Subject:From:Message-Id:Date; b=uCAKNYu0qGLvz0u+HRH2pPLIqtNFgQKuJBY0jPCs2vyDXvutQdMSQ7G0gVtWH9zAaWfshIRGSQkkIh+rzSeGFRXRDO/KQY/SHr1zpFEQLP1ZRidSRvzTyL0UKvqVhoLAsyjHas9chT7t+Epjw+Xh4rCpPPPDpdoOBT+eHVawLKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTeRzLee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTeRzLee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E46C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782891513;
	bh=mOEXRfUAtz/pPAPWix+NnDskTO28hvUSfVYCEjRPxJ0=;
	h=To:Subject:From:Date:From;
	b=uTeRzLeeELbKl2slmhzyCQayiKzkchkRe1D4upUWDI69kS7WOLi/6e/6SrgeN9LHE
	 IN+Ph9krkKLZxglERS5Sb38blg2ifAgUEPF5wGALfB4f+wjAzUR1XUpFu+ACwEu1Oz
	 j+Fu4lf19SqpAsJ1tCn7KtIhy3okAf4cAH9EbJe9RIf2Jp2YREWqxrYkxsWJTrGEps
	 PbA0xA5v0NwKTQJyPe9x4qF8cLI6vnPKnG3mrSxygsQqbBF9Z71BSJ/9nHvJklPr0F
	 8IhIPzn02nqTE0WCv0JknvBabpn65sneVbGjiNA8Voi6oYmF42fstCgGyYRruOLV+U
	 ZaSHhdVEW2tJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A67C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289151368.21889.4219838590953236375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea5b8a80eaf8f86105606b5b87df840d5273b4d98e6751afde02f9bff550a0e
Date: Wed, 01 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782891513
