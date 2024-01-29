Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120FED516
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706492297; cv=none; b=evrZj+4hoeZWYcyalCRBN+U88pS/l83xNM2kFYqsjjiu0Jr5PagkRwbZKNcp/wZLv1AGF1BiYOAdj94WW6fz+deWrlYHFVqGXYUFvRoB0WlFff3pITXcA2jesA+zJzJl+hIIqs90xZhg3mat8RAxDfQVK3gpQq1VOP+PYFzh/kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706492297; c=relaxed/simple;
	bh=D6tvuX7m7mAdTYbhltAMhXthkLp0GE6UcxlDi76z3y0=;
	h=To:Subject:From:Message-Id:Date; b=jEATbiSQPXBtNtqEHlR58/GNBvOubpTNub9hCh0PFiK8GjckDL452dE60OuBlujxQ6v4COtqBvmMgpzerzOxi9k6dV6DbJcW6i2aa4UqebWhAbS2bHvzsodjzebPZXoCyAWVF7ZrpkPAGzuyrZtczHbjDCyh8n3VaRmGolEFCF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgvcmFx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgvcmFx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C4FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706492296;
	bh=D6tvuX7m7mAdTYbhltAMhXthkLp0GE6UcxlDi76z3y0=;
	h=To:Subject:From:Date:From;
	b=fgvcmFx/zjwflkGmnyUw4/jjc0iig8sTpu82WNpx1tuVDpCApznSAXvff6ZFOumm2
	 eR7+vTIp+wfxtEuRZ6j5KohTAW6MZ3QwfnHETKR7PfHi0BZpPmsI6DGLSvoJCHqWWl
	 mQH0NdczQlU3F6hiqekH1w7kFg+u00GvO+GvdmWCn4x57Agd9vuDpo8F8EwoAnSStd
	 ZE12o+Lr2UNQz/5XmGak1LhOdGNF8mR5REsihGuE4F3qe8oriy7s75Z2HQ/VzuOkmG
	 XBxIDeN8cdDMAScCIiZsA4ufokVInQ0MruNX3741ekLP+CIzCnZ+LVGAGmpXqkgipi
	 bXGAUU93CGz1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6666BC47258
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170649229639.10012.780670613219144290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7111438cf7424cb4fa48edf2d5b0da29e43c820096256b4e94d05ea03a3df2
Date: Mon, 29 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706492296
