Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A523D0903
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779965554; cv=none; b=BTBdyuIIatYDyytqKAJCfMNz2u41Vs77BDcQG2+TMLB0DUkGESZi9bmjxdld+M5POjvjnbpXoH8CREqwdBJFZ5kqWgvi/TnKJ7mNWea4vr0HVz0vGyBhRrgYlt2p6sxJeSP6B0i4o6qZDF8G++IaoY6rksfDNenBCeJK7d0N/8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779965554; c=relaxed/simple;
	bh=jUoztd9or+oKeO9cTz/5HaYUsjpu+5Zxjpe9IUoJUVw=;
	h=To:Subject:From:Message-Id:Date; b=UuCho+Pl+GpPfDl2AfYlj46RGGB4/jcU1PfWFhj+WS16t/R2HAyzoD+pJccamtzvqaSB4DBh5qlKqn/T57lxNBCopR94Fa87XFJikyp6SAa6WetznXzkv9zrgU9eWqYJszPISxF64NekFiFdfQOTzLDwBA6qox5qQKXxcb+oeWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8Yhd0OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8Yhd0OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C497DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779965553;
	bh=jUoztd9or+oKeO9cTz/5HaYUsjpu+5Zxjpe9IUoJUVw=;
	h=To:Subject:From:Date:From;
	b=q8Yhd0OM09HXw8tstc4iELK7DBU9f4Ospm5TxQ7alhHJV+iCDlgth5COI1O6ys7JX
	 /Gp0I9Zn8lj9DId4QFau1dwg5H+m/hPiwN8HqBvj7aTwKITZkzjxloZRry2/NNGeJ/
	 a7dnNmAVfEkGI9ws/hdASIctFHe5yZnJpCCA+w6zoGK0/fFVbgkfAZZkRgGsAFOLmy
	 zXEQS8bqnmTXR8nJVTcA9n7qopzGk4vbLSjNbBP+pDO4/vauatRYL7CtuEMq/lyyXD
	 6zqOCgwqGXmLEzlwtBmjUHrhuDfMDNakFCRs80ObZ5df29dzBVyykkfvxgsk6yxrBP
	 B1oPu0nsUG4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C5CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996555369.29505.16749891977559346841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa926c1da93d07760354208c2911223d21e84ccc70a640590260d149524d0921
Date: Thu, 28 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779965553
