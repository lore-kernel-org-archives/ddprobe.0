Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA74A95C
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753312794; cv=none; b=CSm9KL3uT/blenYMBnS18ObOetS/CzxAhG1L5H78tJDeg7wwLkdQDJREsqxTgsd3jZNBRrmVKa3tGOUt4Gtuc0OpXUBKdPLVAWW6FaCtdOAhNJanxN8JLlmzO+gw9ORXOJAi7QXHDR1HHbYastBt9jVOYqorYO2Ey/30toTMRXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753312794; c=relaxed/simple;
	bh=WTxPDAQsKqqZTRe1ZSRbeCkhoKwhIkzYw1QFfbtcyYw=;
	h=To:Subject:From:Message-Id:Date; b=afA8RMrs7iBmwLjQSTBAkVtO9AVVvluvgbstcrUl8FMcLALD4mDRiYfqrhoJgOExvYJ514+ngG98o2hCu8Alq5gr+YDhGs3aI/IOrex7rQW4t02/nGPBlG/rxODYv48WKNqI3ti7e9D50rvM5aVXVQKY5onYShDMxsUpD1+vmFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J51qEpPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J51qEpPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753312793;
	bh=WTxPDAQsKqqZTRe1ZSRbeCkhoKwhIkzYw1QFfbtcyYw=;
	h=To:Subject:From:Date:From;
	b=J51qEpPSJXN67fXCKUwbU+R26NzxAOtzbO5aSagnZBZi8X0a0n0drVZtQn7lrDzKy
	 ExRABnQeLvdrF6tFvGXJn/780qG9e3qVy0DARjGUwMldMg38vPoXgPWPBKAxkyBJua
	 RPBLbWyVlFKn+0e8bUUViuwGeRLAW0skHOHxGuGI9lpWRdUyVkBFrwYYaz/Hv87m7M
	 x+ULjlRqcByqj5482f4ChHKXYt9Zlqymli+mh+BpjOyi68iyeBDwkjE+ESHRIdUREj
	 hAa9+FqRZ7JBOTN7K2XSwkfgk+EfV14tD9iW/fuPsXZVRtYN/AB5NTIMfFo4M6/tjV
	 iN3Gw2mRRVfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE5BC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331279357.3372.12595126053218224762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab5addc6a34e1e763955c5efb473817886e43c58d2602964f34d9fba2ce39b2
Date: Wed, 23 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753312793
