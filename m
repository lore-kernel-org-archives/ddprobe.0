Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F32192F9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777839454; cv=none; b=AhYn0RoPWSnISe/w+pQs9xJlmecfs3cT9fbcCTFuFkH+jC2AwpKASd36+JLm7QUtKY7eyWub7eVOQSnXd1/96tqfQ4L/OVJ0bhZAbnnA6HifTx3F7ZzIvCqDAbEgnROU5TekklUWqAIPJg8lxLg5NlbamJWhNWRqYvjKi/rUpgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777839454; c=relaxed/simple;
	bh=gKefZy53tGZqHy5jmuXUm8W6FNkEBYgAft8l9HtPvvY=;
	h=To:Subject:From:Message-Id:Date; b=aW7ZyB2cIH0+yEMX5bIrQrTn8ceqUPc3WwresCTq95IqoDlpEesvVstcswSIMUwuUINKnOtV7jHgUPOO/MDITqvINEj9oUmqY9VE1PLa0nIja1Q3Mob2Lw1c4d+9iDZRqgy+7GwWkWetBwHAOQaLDS3smLyXYtzSlTogMP3qj2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4ZNysyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4ZNysyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01E3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777839453;
	bh=gKefZy53tGZqHy5jmuXUm8W6FNkEBYgAft8l9HtPvvY=;
	h=To:Subject:From:Date:From;
	b=L4ZNysyY59YhkZ1IuRrTD7nvFnpnoQyAOlWNz8ZLMEAcb9ZlBeU+xPT6DOyTlucjb
	 PWDcK/JYXu8tDH6hnbgQ/yRoPZabh/kpPJOcVbb/guTk59rCj3AZtN54yJPbpQcrZI
	 jmMj2SH/PjjP1rkGzGuwUcHyfW6kOvGY0REFEk/XieZ/Soh0bvRaob7drsQ6lClj4M
	 dXJjZTi/nguYsX/R06aFzICZuSvGQa01siaQ6s7bYkbnNAcBwBRIgCZYxnGVQmiPsh
	 9n6PpqcU7gv5B2PYgj5mH2sCMPpYQ+DmmviKGfSLgInb+J0TXdG1f6Lt+BtihtAtpo
	 PdysKmC7Z2Kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF348CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783945369.28049.9965177611140323709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7805243969fe932fecee7bf192cace3f9fdcbdadefcb1733b94724baf9394d4
Date: Sun, 03 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777839453
