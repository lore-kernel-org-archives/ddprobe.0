Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE88153BC7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726053354; cv=none; b=EgWsNNrhUv28n93Vf9mbXbUCdvvUBQuXF+RHhiud0TFuljC+DdW29ImZC+Wf4680CX25SBJMt6siOOEa0A9vogydVGpt3tP7NDk/3oZchCzOAgxtM7blAHXDn7UhNKS6fQEnV15NCM1jo8jP6he8dRO0HXDJV8h/RGZNzeyX/Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726053354; c=relaxed/simple;
	bh=pVvlfTLnsdr/ucCU9GVf/ReX4FHeOuec7Vmn5aGdMzs=;
	h=To:Subject:From:Message-Id:Date; b=oha52Z8QJcWiRcALemyP42pgKaivmM1SMQp59GbFOG+FWC/Tyuof5kAK3Y2Cg6rCZ2JHNnY46Lj3zQZ1YOhFbFxYz1clnLJrqtPjPWgb93zaI0WJmsJWT14Jp4yBMquZnx5Y428HNSturHP/gs3+lJ89/2ehnYWNxV8LBZWdUQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYFokOpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYFokOpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02D9C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726053353;
	bh=pVvlfTLnsdr/ucCU9GVf/ReX4FHeOuec7Vmn5aGdMzs=;
	h=To:Subject:From:Date:From;
	b=JYFokOpeXqcGdxFx+0rT38D5H9zY/MZ1ZMKKBZDei2cVxIUfPLPFu8hk1Gr1KIlWD
	 jAo92JFTfN3GkIKtjF2wJiNyDg7VQ4kcSOeBA27hW2r0OPDbXL2Hl2N7pAQ4RA0Oet
	 2Cs+KrICI+YPQLkQsuXh2brL1buwQDkTZdxNNZk3ZlWTgz5D51uDjoAV+FvEaACmyw
	 yZlbABLe/+7ecoyt3wu5OWGR9jR7cVusHX/CNRz2B1/fa14WQLS/Rz5OKYU+e1nuGD
	 2Q4Jyh2OxQ36FlVxf1K6C6HrbIWdWFlLEf2To6vXDOjGnqXnSOiFBoSIM8tI0x+mCD
	 MAekjgObxe5fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A751EE01EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605335362.13480.17449358206438707983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae5e7ee0974b8a0b7e2b41b629179a4cb4f4f65d38992b5cb8d4d6f779d2342
Date: Wed, 11 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726053353
