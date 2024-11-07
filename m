Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175331EF0A2
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730976954; cv=none; b=rWF8mwQNYeNo7xWNkbrqy+00/IXpAksNeBVgl9wda/ExUBPU2EseEzB4O+QJgoQWA7tIrBWigvl4/NBwhWlXD5HEVdfmjWmFzUVd/W+Dn6Edi1XBYFjo5NufDTH0JJ8VJ8hopjt9gEmOL/ukgdnzWfeGZKRG67VSXdJQWigOl2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730976954; c=relaxed/simple;
	bh=LSx0kcM0A5nVntfaHbdup+IRy6LYneItp7yGRgA1zls=;
	h=To:Subject:From:Message-Id:Date; b=Pz7ZLTuJsi5PPp1NHtgdE7KpzFfCFX1rbihZKcs9qQN6Bp1ozthZOazsSkBf8Nch0C2v9Eyyx+pMPFztOeWUo3M06N8a/oYhHDwza6ZVNatu4XTd/JCNcA46V+rqKPjFjtkB2l2oW7cRf873gxNZynrMT2gS4qhLxtylF314M4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVKqSA8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVKqSA8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB9C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730976953;
	bh=LSx0kcM0A5nVntfaHbdup+IRy6LYneItp7yGRgA1zls=;
	h=To:Subject:From:Date:From;
	b=TVKqSA8V6R27mWfXX6yQ/VqhG9bzEEyncYHDA5v4emyes+K8LR/5hKFHJgmd0H2fP
	 nvfevwoUdDYKp2U1+6FBoReTH51ubqrjBKSOs3632uTkhHqzmpi58pjxhekOf/NacY
	 reCE+Y5wyrqG29+SGrHKPdTz7VC+9Cgm4M5CEVHAqIuju6OiT8+GLB2uhfCoyzBcNZ
	 8HPJgMRNxolbjV2pfQjBkUIeVbbzv1ab6pjeNv+4A0dBhAHd+HKcN7AlPtmqgb1xrX
	 6VxiR20eqZBTgjZoUlOfYw9aeJjzkZ82AueiQjCU2bOSbN+3PvWiGnZKx9pDV9Ypf6
	 dkj4TpZe6ckoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91956D35E5D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097695358.29400.2405529865770975886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1334c00e505e9d8f2466a95f4655ffb23fc3c57bca0544f4572df6147e2bbb84
Date: Thu, 07 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730976953
