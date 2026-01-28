Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CA1233149
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769636633; cv=none; b=X/P4+PZM++rPB7SEfaNWLXHCSUzCdgfgeMI9s60Mjxa0hR5NBTaEMZcHoJoW9MWlM2+akp87c2eNGKEdkZ8ru05g5Q5pHQ44vkbfkA5nr0F175kmCAjZPlkvIYeCL9MRVdS35CVJqqvejrU0XxwjhV+MSyuTju0W7PFg8TtuKvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769636633; c=relaxed/simple;
	bh=qNxE8WXrwnlb5hlPen6UjoWa4mOxnQRV5hMGw2WZJ9U=;
	h=To:Subject:From:Message-Id:Date; b=DMxMi3tylDu3wshcTFYkPKWJ+gn2FnLcmyT1Zdo7g2HWVMLU8RR5O9zBtq2IxyyWzb72+0Z5lTbZTWIZdrlljKL7AlRkAiJJ2idmlk0mXn48YwdEtlJgsuiN1BZC2PtBgIaL2ds/i5sfB/92ronWOJEM8FU0c1hgjxDxAO66Yg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUn3HkH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUn3HkH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2802C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769636633;
	bh=qNxE8WXrwnlb5hlPen6UjoWa4mOxnQRV5hMGw2WZJ9U=;
	h=To:Subject:From:Date:From;
	b=EUn3HkH4fcME3S9syG1TLxRD8TgxeffAF6Wlv+gmHeGOsUHNTjHiIm3x6OW4mgJrV
	 ds+NNNKooMX3nPTZGkZadVu1swPIeO/ACygnkq8hXjOI+ZJwDmufff9EGWuLtLM91K
	 0OYZDEqH2V9kk2w3W1rN8NwuJsxNaYcJdXhMmeX8pm75cLUB73Yz9egmZpAnvnU7Gd
	 gA/oRdF9/1ALDmItIgj1MZYM0qdOEFBOTEbBxf2j7EEX3KNiq6qniBZ4o/Ruq1emqx
	 lsfYABo+3yxqG5je3PqoFwPMqCit4nAo6nXRJlCLlrQ3MRAH36/0/d0BBxr2I+pNMq
	 AAwYxVAWLEs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105BD46C08
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963663358.14678.9990595588991394349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ad272b0ee16249cafabc6024d09343da996a4437f842c922436c2d1ab71678
Date: Wed, 28 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769636633
