Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC4239B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719971123; cv=none; b=bB/Pi8hEtrsJzqt5m0tl4B6Va7uN4xDIrIPsjH36my6clELfLMwz84/baMmhhXUmSulnGJbjIHEjk4TUsF1R43SkR1fBoPX+mc0iqpQS4r07frX1utVbkT5obaKU0nUkeACHZ8AOvoqSLb6SKROExDc6aVwYg60hhVKdgnZhwws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719971123; c=relaxed/simple;
	bh=NTgIfMZH03wYI+XZcV7aoYLUXRsQ+98+eCaIvmQFAD8=;
	h=To:Subject:From:Message-Id:Date; b=ttn4eeKItaw7tptmtaV4jlGPOxzYPHheN888a3YQBc/7wXGQHmVA6bwlFj8145HLO2O/SFFtgUIgJPKjO0bHibAknxs+b4O8tbQNEajp/EhAxfxPGurNds27h5H9y/Dd2APqiV/inGQ9fFCagnCeMnCydA5dZWj0esnQCCSFrCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCT/ktri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCT/ktri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DB6C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719971122;
	bh=NTgIfMZH03wYI+XZcV7aoYLUXRsQ+98+eCaIvmQFAD8=;
	h=To:Subject:From:Date:From;
	b=NCT/ktricR4Pxu/LAuDdXZUzqv7FaWdzIFEXJYEpWCIv1uDMIjaA4Wu31bZAY0A+5
	 a/Wm97nHqVcvoAp3bGg1szNDrJje81oS2psbYFkx8Tc4lN2VBYSiNw+H8SYkWDTI9M
	 3z0gtyp6fSpd57HEfVzv38ivZ6pBY5h8CkMqZtiDQgO0NyOb9OHXQEtPu8tS+skWi9
	 3nMZsiGDj1gAY2KA4biuY1dYf0X1zjrYIoX0MjdzDdAKUgK2QYZCYp5EGKGhTXd8UW
	 UtZyi+Ie9PJoaIMScluO5vtdtvxdQ9x/0Lqcyn9mclTeUu8CVP+LLxro6tQNE28Ehs
	 yRtdMHq1pUyjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71B8C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997112280.14992.13729524803017762330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cf667dfb82e24b46b176da06127e765db3aba9a3d3ec0f02904b60c11b7b7c
Date: Wed, 03 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719971122
