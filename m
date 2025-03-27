Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480F719D086
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743040194; cv=none; b=JF6Ukp65s1FV0FLgDn4hqhK5bWNzW58/e9hHhol/gZPYviGyhKPhbpn/yLeTz65Oo7QTq1OoP0pCOjnyVkJxm0CJ1gW+XEUoS/qrgTG7WGs0RrTL2aYOCj9NHjaQpJvoJK3ui6wqj7vtrV+Pb2Wyw0jGYNB/SqMddyOacyRlr6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743040194; c=relaxed/simple;
	bh=pifceX9OforrRjJfBy6dzaTPS4Zxlp/0fDD87DdAoFk=;
	h=To:Subject:From:Message-Id:Date; b=mboxjzVHBtuREHrkR29e3jhfduhFXCD46MU8ZBr4jeIJq7cCbg5bcaNARMoApJQmSXNwKVOAOGLozy2ccKHVqZAhHAkyXnro4N29OYMoRpa+SoHXBhkFZTC/Hd671/0Os1q2HphEVTohADLKZOpwneqIAaaCmF2dZG3SyqrrgAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MObXUh9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MObXUh9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F04C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743040193;
	bh=pifceX9OforrRjJfBy6dzaTPS4Zxlp/0fDD87DdAoFk=;
	h=To:Subject:From:Date:From;
	b=MObXUh9xlnq1wtbMFRBu+cY4g4zn9wR6T4nLGgmxMH+au+xtyWrDnw2Bxt0I1XEMm
	 r0hl3q5YK5sZYLTO08lNx1bdcmm4HuNrxftWqpU9Wmt42JISHGKw5Q2hcK+/efBfwo
	 IN3L5tyWkimZ4CLUg5kKmLoTsrXW+gJ+7TjbeAI/Ak+UOATb/W3DRTJ4F/I6cAgg9E
	 AQbTWWj97hJ88rX0n7OM8b+eRgxmogtwZ8uHPohKyC+hXHMxW3hvi+wdGpkJsltiVx
	 8LJpe83qrVYSagvRpy8YT6M36yCdDM2MOE2ZVr4mxnQ60LDNSAMejadOAEOUnzuyDL
	 uffFHmioVFWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DA5C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304019365.28467.2364428745131304960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7a679f3731caaad70e71ab9ed4cf700c3fbe27870ac81fd420065d632e315f
Date: Thu, 27 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743040193
