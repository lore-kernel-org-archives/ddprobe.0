Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14AE2E8B69
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761236993; cv=none; b=I/y6xRVMRCcpXTvjLd+eegV4B3RwLfK/gVw4ztbQp2S6YNKTnWonIQMHhh7x/5dFiuGK2T/XeOIwq5zO6/XinVB1qYaa1dm9knZr2YJuBQz1ptpKLsplNydmuGf5IbS3hHSKd1KzfTsZBe3C+7m16r+zao6TeEDnOGLUzMfZSNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761236993; c=relaxed/simple;
	bh=bEuD0fc30j3lOod1fzd5XKquRHGZOnVhmAl1LIrHYcs=;
	h=To:Subject:From:Message-Id:Date; b=RnjZlfvLjzXd35eXEQv/syUitm+vmi62xzTyZgDguY26G3RCS2x4hGr4pt/6fz/qvb/7TzZswkuJoN+TCKoRglvbsZtRBQRAExDxYAlH1RkW4cosq4jZTBvsPofTY1BqVv1c7rtXiZrcMZJqam/P9L6jY+lbAcUNYNWLbShsLQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1Ms2Eeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1Ms2Eeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761236993;
	bh=bEuD0fc30j3lOod1fzd5XKquRHGZOnVhmAl1LIrHYcs=;
	h=To:Subject:From:Date:From;
	b=u1Ms2EehiNuO4djv4JSmOM3X8ywN/rBDSAJ+zqSHiyOahkGj2EriEgt1nBm5Pc6jB
	 eOIW2bJEVTuuqgON75EX96BQTp6v3Z7PSsdWG1xBWiAfVId34B2oqX8vgu+UtEaUkc
	 2QO8REEkewWNA99S/gKi1AA2LVQLf6w/YU2wxYMH1Tr4FZTF7uh8k5gISH1gfY7WP7
	 2RiTKfbbhs/ZIEhDg6cWMbQ2bWGrZpXEeW5r7Cs7e0Wh0FBsQUyR6ZQWg2zgSCVwbY
	 S2LgyAO0MvkVhmJIjvFiYUG3RsQ4OUS0V+WYElZ+/fxLwrHn9Dq2bh59cRsYbKGPc5
	 8LLfWCNtMC/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977AECCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123699359.28953.1063755762964005269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78b63ba4e35411a840a2884ed8f12d69b57af8ba6f19b78e03dedc8cefb08db
Date: Thu, 23 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761236993
