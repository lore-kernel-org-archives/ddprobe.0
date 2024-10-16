Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2C0208D87
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729085754; cv=none; b=Ex0JhbiGL7x/qL0atvSaWLS0Q50OmGbo2IpAvbE12fjSpBB4lFJcA3t6r28mSWrrOjKKvm6bQb4dt1RrRZ5L13FbkaVXv7xR3lPdqNSfcz7cnuIWOdN3VOQn4qVGZbWCfjeUiXb2mAC0o21vLgzd7zTnvoKldsFnpJNkzOeexPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729085754; c=relaxed/simple;
	bh=nMOvaleZvh4TzafdqiAxzd5WlPWVOeOwr9uHKD3W1vI=;
	h=To:Subject:From:Message-Id:Date; b=WvB70VPNCdiYqo+jl0sAqCblNo0cyvf7DT++13HSLCZnZMmCI7o2jftDZtZAoLkq4w4FRJSQnYhHsJRewjOirHoA1BKaqosDhhmPDwI5ZGCfISjoWamOzMDEz9/Xds0XGNVn97iIu2zGOmZH5X5FR98YBJpFKFQZakeXVX/p6ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfrFr+G7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfrFr+G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7672C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729085753;
	bh=nMOvaleZvh4TzafdqiAxzd5WlPWVOeOwr9uHKD3W1vI=;
	h=To:Subject:From:Date:From;
	b=qfrFr+G7eoV7CL1gQdwx6MPy5Rlg2jkMFeIB/hYY6CGbFem5EaL8KSeSTOorfVlRa
	 PmmTm1t+ymyudJBNXdQ4ItUWnqHnmEpOxCjku17wkgLQMFFAEgXPRgy1Ixs+UP5JD8
	 1+LcV2iRMfnc1fFTTQGyEMQ08CJAuiS3hNRcW0VpocZKI5VXo/PBvkIwSMVvJB2Fpr
	 TpsiV48V1Q3BG6PepBt6Q63xw0NW5a8QMgzwr7WaaQfzjix5t7RruHX4Ej2JMEb7Kb
	 wWTgRZTDf4qvfi0RHduYG6Vq9RvZOBFL974ibHidTEViU+DWhTQ2xABUTQonMUcwmw
	 MOxUO+8WRBZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95565D1AD59
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172908575360.9656.5487633494740064162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab33ec05ab67a5f07827c4a658f4f832ee9d0f9ad85dfc5d60bf43f5c7cf61fe
Date: Wed, 16 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729085753
