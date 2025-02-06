Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C02A13AD18
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738827355; cv=none; b=Ch1yzH5S86k8Hi6ojfVbwoi7N74kBQ2inYYBT7RfAZnCSi+H4B4fuI1v/ommX4mgGf4q5wtFtrqFRuQNAhq+FEvmPGkr2Ig0nxL9+5Kuv3p0YwxmuCdE4ORFqzmh+eAOmsgxaOESIPMRqpSjOw0iafw75L33Twv/X6Q6/ruB7GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738827355; c=relaxed/simple;
	bh=5toZrPzSWBqP0cLt2GhL7Rj2v59CkPUEsqsbolzBJZ8=;
	h=To:Subject:From:Message-Id:Date; b=hNgVleBa2Tgn3aJ23jIhbw5JwSzsYsxl1Ab0DTtqNKpGGokWCc8lcPz2jFLtlw8jjCJa+WF00tdN5mWmNiOGj6qnnoLJJ2vqJb9zZ39s17nKv9LI7+E88XcrYOVq3jmStgBMniPMcLzjvmVE6CH1o3At1z9cnYyZnGFvneZesk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUdnuVjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUdnuVjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6AFC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738827353;
	bh=5toZrPzSWBqP0cLt2GhL7Rj2v59CkPUEsqsbolzBJZ8=;
	h=To:Subject:From:Date:From;
	b=kUdnuVjGlgXiUHxWpLxV+x8apVddcTPzlCVaLxSkUvmP2XTGqsmkNzxBfSRBAk9TN
	 xLr7Cx1VbRoL7IJvRKthO6FPABtxsDnFtezrELaENaMIYbjgy0MH2UVO1gEUDl0dYh
	 4bNXpOuNYFxeJ3LQRl7HMcsHuR/hnqhqo1afgd3KDA97iG4Kw5Yl+YpE7c1CDPmuS1
	 EjeFDwaYYfbsL2mqIn2qh1reBLF5fJukyIc9b2zXR+2r02mzJ8Afu9ICDaXgAZ7j5X
	 rwgmJQCWu0k/E3GqZyNC1rn8heHipqAsUXg847j0xbxs+nhbuH32d/nuFy3ND2XbWC
	 exxQssoY3sUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C5BC0219C
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882735364.15356.17286820266498320962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ec2ef63ec10eedbfbeca85f2dc4792d54cc2b9c7a4c22c797e54991589e21f
Date: Thu, 06 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738827353
