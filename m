Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2293191C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780311274; cv=none; b=Qce4KLOYUDJudcjv90UwRA3EPhyFs6x6dWeq9IyNJtxmVvnEH3i8Hph8ZfJs0g51T9VZuBu7foUGZdCNxnfJQCKcOHj5NpSYFkkaQkYH0q7Jn34MeSOFuzWSmCZQHhNpg2chKXQ/WYl+BtYJ/wSKCVL+HQngjhA4wkqcmrMDT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780311274; c=relaxed/simple;
	bh=hsQD1ZYrDp5wiyRpFTzeEugqIqGaop3/U3q/fco8v+E=;
	h=To:Subject:From:Message-Id:Date; b=dCQkzwTrininZJWOMt1/+vvNnf+GN50J2/j+noR78w+JsaH4/W2nBaXiH5nIc/wNbKQcYgKPLz4fevKlUEaQ+/GPdjlYpy7Q6jBVdTCUOQvgQ6OM+uJOlzfliYkPclerFkzfXCmaaGZ9ycUOHTPzKi6Y94CVI8QOEzgaKluvOe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBgbxDx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBgbxDx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD86CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780311273;
	bh=hsQD1ZYrDp5wiyRpFTzeEugqIqGaop3/U3q/fco8v+E=;
	h=To:Subject:From:Date:From;
	b=oBgbxDx9lWoeBs80VvEt6QMdpAgcnIapp0j/4cifJZkPrdeomesxszyiJ8TM0Hqlk
	 r+hpu4Un7nAZi2SQfiLxOyxKS79D4srp1oVzV0qtUTrzVPBVAT2/tEBCZ8N2afiLyq
	 ES6k2eSRdxs1zwx6NxUy6poGxGrmtRupe21wv1ZI5n8lkAA+39vMX1XSpcOqV6SfPP
	 dt27qtCl5yIo3oGDiLnL1sRKuqLNbDSWlqA7CR3jBMdOh5PPi5+u9nJLWAj8EAs4eZ
	 AsvCfqiRgqqx6ZKBOsn3Z2qDs79PJ2Hqliy7Sdeb0lhXQ0YZAk9pNASFZbpLcUo2Ck
	 45NxTsocA4UEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F87CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031127372.10227.17326235276485791707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2641cec2faa1670dee73f49d33288913f1b979454e2ae64e71263795611430
Date: Mon, 01 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780311273
