Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7DA1E49F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752001194; cv=none; b=bcS8jqxnN5oHVLJf1EhyL3WdRWPeV+yZ2OCzWpWtRWpGwvsS3jpN8qA1xPCaGpTP97fv6ElATGbJQmBUwAwy6fbFES4ovfdMt35lNBYTthGcW0f92bghVgge843swqM/ENhhhita9oS7zxiEjXvrXdYQzu8Dqf2TcYxHZhCXZYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752001194; c=relaxed/simple;
	bh=59zEUNpoo9djQcdgaW5H46TUUC/5TGFSvMnjiG02D88=;
	h=To:Subject:From:Message-Id:Date; b=FYFaQxdQu1lDaKdHVC6yvhCIM8pmep8B5aY9PpqubldDsbBCEqeb1hD8+M/gfb0EqRXWvTDsbYaKdY7vrE7l2w8nzjR1hgvdhDgyNOGNWdhgifm2CzUQzAPWyyUWv8NHu7ewmlDDsQcOKgmEdiqnsaMjc2NUVs2l53Uc5Mayh5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plt6vP7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plt6vP7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3D4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752001193;
	bh=59zEUNpoo9djQcdgaW5H46TUUC/5TGFSvMnjiG02D88=;
	h=To:Subject:From:Date:From;
	b=plt6vP7eLsYrEg3znmSHi123ECGpt8tn++OAGQYtTiMwPPGOGauCZZHHuxtcJbOUK
	 cdGnK2fIujkqr1DOpM5k1E/KnHyZzaGPFTQtKTyHUSH2UxGLqYN05FmJOyXSxzwwor
	 StWXVpmcFUMUjLB4UGqsLtz/ryaW8/UIlj21LBtAKp5Icmw6DBqXJC+FmTaVHJc/PA
	 tdAdZU8dzPZqfHlgSGiXG+rbeVmk7xBdnyjSE1uI811b4ogGnkDJ//xMP7KyAUDztJ
	 AADmhr20uFgmSUY1qL1m0Ky+2WFoYat0BnXEVit99zIyIkhEXg3UsmTgv9s8im7b1b
	 I+udDjHvQNb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F766C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200119357.29749.5767785699550048306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676c735148ae8842a3d14e0e639bbd501d8289b661bcec2e1d051eb48cea3754
Date: Tue, 08 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752001193
