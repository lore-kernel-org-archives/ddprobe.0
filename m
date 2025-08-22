Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A933DF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755868194; cv=none; b=D3iT2qz3dgZ/e0bktRiQew+jUqrF8/auefGFOFDLclQ3MU1vpxQCPd/g53sh1dVn3Ci3PICeFnnSONeDu8P1oWrwhz0d5n8ygHOGKWX0G/h+nBN9hFbdcDuR6Vp5Yyd0zVBfoJXIXoMzTihtaHN4sJUj+E9T1gqcKltMo0+N58Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755868194; c=relaxed/simple;
	bh=hfW72Ok7O/6bF+AZ05LRG2mASZ4GKJ/pe9My4z0xW6I=;
	h=To:Subject:From:Message-Id:Date; b=GUn6cw41LfaWG3SbEjV0N+bQw83PvhdeRV6RWNC6wN0gQMyPfI5JLhqV7kWbozOyGcSU+iomFK5SMqlEsV05OpuE3YvFqoX1orl1hZdfaFLC1pcYdFyvo9jd7g/00nlptPzJQ4tT4JYqP34cLXxjZcfgO9l6Wyr+9SioEo6sRkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJjV86P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJjV86P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755868193;
	bh=hfW72Ok7O/6bF+AZ05LRG2mASZ4GKJ/pe9My4z0xW6I=;
	h=To:Subject:From:Date:From;
	b=oJjV86P58vxj5UjvMrok61aRa3izKbqWR/3KYDFKVMZcE7e4QNzSwIcgUfsAJSp3x
	 4XM749DTexkUjkZnti394Z+UoK/x1J4CyV+rCoLRwCMnS+2DeY+pv4GMqi/cmBRDJm
	 fF/QkZhqT523svaV/n/5QzLCGZcgGS+3fJhbHX9wYfdvJhhwTHOOeO5EC2iBNHirmV
	 wWLA9+WZpPtYkIlbMbVyEsDbEw20KWW+D+ijVP5JmMjvV7RdZzzN5HGgu/gQVChnMO
	 rGja5SSwu9U18URJRpzbSgddYO87clxIt+Kk0eG0FobW8S9HMduH89dvncbMCFNhn/
	 ElYkjtRrIyuXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95416CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586819357.3788.178091701580472547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d072f1dd2a2e0d36ff033d0ead0ddf65f3ccb2651b0745f2fb9c938407f497d
Date: Fri, 22 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755868193
