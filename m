Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1E021CC71
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768190634; cv=none; b=pOAAIpO6mkxdecm/9V5vBeUboZvzK8/FXEY5BPN6JDT33r87cNemReAlwgWkngo9t2P21dqD0DZLnncT+52g0Y1GttupSMNw+xlUu6Ix1z3jZji0L/FR0qHjGnBZnh54YQS88e2zf6x08mSG4XBVbnD5QBAu6WkwaChbrWAVcvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768190634; c=relaxed/simple;
	bh=xfv37QUtSSOcrLbXN5mFTHzsVxyxZKtjG4dqqFo+JTE=;
	h=To:Subject:From:Message-Id:Date; b=jr5Y4vUqoBOJxd9UkjRAxYmAEl4MXBlDfOBBqZM/JTr6DKnfpOhQ21r4A6d/+Jbi7KGbQRPuEYQFmTpElimXAruH+EctuIXNLJj5dCrNgoLfWAzrrxjTthH5sCauI+VJE9Fs9L1nhUD+mlu7v5dXxQeW3sEZxLpNKcdEGiwpYRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtlUG0jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtlUG0jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1147C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768190633;
	bh=xfv37QUtSSOcrLbXN5mFTHzsVxyxZKtjG4dqqFo+JTE=;
	h=To:Subject:From:Date:From;
	b=GtlUG0jEKahzdarlFCMdAx2Bb54olweeQPIOA8O7x/AFwX3NWxgXd5FoTI48z6C5D
	 DEMBSqm2RtATtIBHm5Xq720RX+orQqPUwdNiqLEiRHuoC10OY/F9QjnYA/3VJAeIlp
	 v625EjtAqJG6GrA9PrJs17fG07Omw5eiaLwUAMi/zXroKD+2XOuzRnkd6CEC3LTGXV
	 sTsXaO7q1zqJPk2Y0GzjZJw3nJUAnw0Aoko1miTr9VkppOfcGR09gITxoyKcNX9MZX
	 YFL6GI353/jHrI2ldOxHQATjZ/ZeluVjyrJJSVL2GULIFGKAy61qZNZsH3W7hUFcJf
	 RHBnHybkc159A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDED2502F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819063360.20291.12654685891896297272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3c8c20d4eb7cdbbe3f0a758e91af7ac1857736201eb4b147e1412d8a876fdc
Date: Mon, 12 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768190633
