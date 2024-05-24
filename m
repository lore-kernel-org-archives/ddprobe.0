Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152198592F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716548004; cv=none; b=uz7U5t7r/oQvkk7S1LtAZufAOPk29MHhhgMOngaPufv+dv86qMfgbyY1RuHtl0drT8NWYX6Tb3WMuxUHEGGjUfh+IVpakcLq4YM09db4Q/JZa/PjfKQdvtHtxd6dzwmYWLkObJmcFkva8wI9tBTDtkjp6CopX6e20KJLfpaZtw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716548004; c=relaxed/simple;
	bh=s+nFdGiEOD5tXns7Mbg8KayuAl4ov54m/epkrDOjXjc=;
	h=To:Subject:From:Message-Id:Date; b=DICOG4XJwAuXRuLu3TprfXHrbq0Unfd20HIv5Zy0cvVWJuhUiImdo8BG38B4aZ/2pvzBVkxo4Sf1P/B/ldxGGGcREXDmwZcJv3Bix1Xzm5yycV0593i9kp734dkg6aPx+utWy3oplwKs9tW36pBwGWqUqKsPpe0LLOFI8dFMO1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdS69Dub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdS69Dub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1288AC32786
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716548003;
	bh=s+nFdGiEOD5tXns7Mbg8KayuAl4ov54m/epkrDOjXjc=;
	h=To:Subject:From:Date:From;
	b=YdS69DublgZeGu6beFBgJ9gGAcScuBfq2lb9s85m6xib8HT3t7vSmFINAfSUQ+ZwV
	 ccQax0f0aMlqWcLafvyK2eALMAZSHVSp3TRHVlKJySp5m2WYsa17GfyO/lIgn0PsCs
	 a+hOM6v6kdm8T5t4qylB1SdgGP3Kf3RKtSPLNCxwGsh5tEbywtPvZdQEZpg1g/e6rF
	 ybYRWelWpgLeVL+nbHauu8qrAuoipeN+uobnsGrGDJGBQzmTRSNntUv9zslhxnjzcq
	 dm7XqHfMvamCCiPU8SKDykEN/cGs2IjXxVOhv32mteu6VwFf6lrH/9YwQ6J4Rb7QVy
	 bmU9B12+/G7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BA3C25B7F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654800278.12901.8686561116166391092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95679b6a5517c10a5c5cb13a776f851d86c6a26d42c775de45bc2ae737704d67
Date: Fri, 24 May 2024 10:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716548002
