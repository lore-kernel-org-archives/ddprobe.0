Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5C157303
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709077697; cv=none; b=mVjXliediHlbUwsrNvH/sKh7N9AqVOxyDuHIaJ05CftMKFvdmqiX3jDiiC2HvLWK3niu7j78/Wj7+I6uuMggjfEy7RBScN/DaDcgTie37WALzhVDJ4bLezX4ElYWYTfgal0NJzTPII9BkVQbf+JxGPYsBcdixsqyXEpt94r0dVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709077697; c=relaxed/simple;
	bh=4GucmXa33Qc7U/vvc4P4jW4rb7rVoo+8tIWHsrI0dlY=;
	h=To:Subject:From:Message-Id:Date; b=lHAERRnh9TNUQi0G/Wv2I0NadVX5f6/b8JI5I8cvq91IbLhUuBVx+p/MhS7MrlEX4UCPTxt3VuLy9325CB1cYGf5ld83h+Bsdf+NZvArtwOWjQ4tY3gGqdq9I63sNSv6DJoy71oCRaHHn86nKL2SM9bc9CiO5aw6HrVWAQVhEe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiXqdez7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiXqdez7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBCDC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709077696;
	bh=4GucmXa33Qc7U/vvc4P4jW4rb7rVoo+8tIWHsrI0dlY=;
	h=To:Subject:From:Date:From;
	b=jiXqdez7fGoSyL1AYulIdgSvKlmXI+gZW4CDBl67JIIht8boljXlOpwmuN6NI6KXS
	 2j12x6kOZ6m0/1IDSzYDH8MNsFnYNKejMzJdvufghqMzG0bVc1aBhZOLHbEuSf+IeP
	 iTeK60euIZ9CIx2t6bVKYOU1H3ppdVgAHDvktK4qv8eOQhCPNFYnh0H0mRKcMJ8Gs8
	 0anF4MsX9xgHElfw5+ahmy1w6+rtcKRp0cUHVxe7Fd1h1Z8ha4NvkEY43xSHqnrCow
	 FpmONHAIYH6Cf1zXXcsK7yp1Ycjd2eKDi9hbD0SVID0jXqg7EznCQwMhRrWA9XZDO+
	 yLZRE56S1HolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626A3C5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170907769638.23490.15961175832518468707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67df376295fc5d204057eaaec430459f4214009ae033670aed6435b611f9273
Date: Tue, 27 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709077696
