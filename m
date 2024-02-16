Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059F313AE2
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708058897; cv=none; b=tjfhtBLDAFWXo9MnjAA69GoBt6As9Uc4jhSa06rvWiJDOckzTfJqATHpEGK7HKn/+PMIFq6QHtXOVIrGqo4obfgRmO29DOckwDFgMt1PcWpnjQqjvvPgkSR3IUipALS9dOjB1ntSFGbHbRauGA4G5rjFB1a5sja21+PRs4mO4dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708058897; c=relaxed/simple;
	bh=Pe6qjrHjcyVyQEw6mOOsczVR0bF8hAf51FW7IvW9MFw=;
	h=To:Subject:From:Message-Id:Date; b=h4BZmUoVdodsdZgK90qmAEhrRjlt3mAW38AbkRcSGLIReFwMkwAu44GqOq3XRbKhWcAUA0Ml13CNfGHzjIZq/G3CepP3DesPaLZoeAdjQII9EBiL/gmaW3HPoNbpEadjXlW0ohd3P1h1ybm3XwnLr4sKXtsM9nVcgQOF5EB19bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKzjAB1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKzjAB1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0FAC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708058896;
	bh=Pe6qjrHjcyVyQEw6mOOsczVR0bF8hAf51FW7IvW9MFw=;
	h=To:Subject:From:Date:From;
	b=TKzjAB1nhNTis0EzFc4CBU49WoG1zjoNaRvgUZKht2+qJBk0h8BzcrGzeUgaWah7l
	 GX5BimiDv/TuJxoMpPHYq0wURNDk6TduMPFzeRlOzSeYH0gCMXEgqIh8tTYF+Qknqo
	 akV2xtpWmuDwRgVO1kApZi738Jb+vtZiOCVcHH/r/Pg19ccNAIvfINaq1htwAGns0N
	 CCrWTP2C3pcN+AmfzVE8xAm3fdHOx1lUDkybJum9ZQ7EgnO9t4/MF8a3DlCBvBtQrM
	 F5pR3c1y4OCe7tw+xdkzh0TX+/sko8GUVLvV59SkGmd22BgQyUPBPkUvmQT8ehATJY
	 wjpl6mT74xvjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AFEC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170805889639.28914.13156246568050382581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5944ac9e99aabfbba7bbab2b5d900e74b060b96e1335c2d39387658952b3ac8f
Date: Fri, 16 Feb 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708058896
