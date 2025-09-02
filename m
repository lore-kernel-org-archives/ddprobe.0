Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F13B2C17A8
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756835994; cv=none; b=hxE5/7LwlMo06nTVvG2JlvWLpm0O/zim0wvrIqQM5PdRAGvjTnwImGuGTdit34dq4EtGxh8dStbUODr/mPM+jBc3/JMHP26Hu8fKSPTSrXfchOXg31y7q9cXLbPrpcMZVbQ7zAdE3D3YbHDuX9d1dRiTmI+S8eB7eeU9PxLg9jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756835994; c=relaxed/simple;
	bh=W9Bgt/yY8F32HYGo5ZKLpNLsPFfgel5VIH9ZybgmrwE=;
	h=To:Subject:From:Message-Id:Date; b=iqWhT3FUfDlxHHaShZQshbDFfWnEkx3RcAmTS7Aq1puqM1znNOToMABvUlXWDSDWIOtLCYecHaI+lYPzi7rjvguVilkCJXloBWwjl9rAQ45zSVjKifbQ7T6H9r6dl8MVAJPdKjMjaf00+83dSWWsnWRIHc9t3noCCPdMqCIeIwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4Sv1buY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4Sv1buY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3736C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756835993;
	bh=W9Bgt/yY8F32HYGo5ZKLpNLsPFfgel5VIH9ZybgmrwE=;
	h=To:Subject:From:Date:From;
	b=l4Sv1buYo3WLiExSL7d60BzDkDNLZqU0x60QB5nAVjKAC2yQtj1/Bje0GcYPFt6l3
	 /UifEbdPhyFPArvjQqNbY9n5ty7ze3lygJCIZdeu8ZhDWsI9siHVWX0+egxOFz1uMV
	 uFFRp89a6NLDqdXpnPuA/l/mDxR0LS8ghtXEJiaFI5dluv/oTTgKEcbC7ttCvXZtKw
	 vu0+XkAgBiN4ka14oawtZJZlUeEJ2zRvO/l4QILOk9EqTWixLVdzXYjMCuMNDbPrCs
	 iWw4PU1zRbO3YPrV0KGOSdRFRMAgrOUorivF3cxPWi/U2pP7n+UdATAXDFNjDeHCje
	 6xkeSrH+Y4cXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FFCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683599358.20142.1385749522742722622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ae5aeee76533c0d094dc2c9eebc7e2c7d02550a1b99e80e1f69e6aa3f3377a
Date: Tue, 02 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756835993
