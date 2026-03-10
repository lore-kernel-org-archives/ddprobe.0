Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C993B895A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773112494; cv=none; b=pXzTtK6UlbpXajCbbzkTXYxHXrXKRE4SaLtZymYbK4pxQntL36TVqWcW3HnPoFs6xomULSTT3Gjj2DY5byOh+DfGQOL3aXbxwLoM2R3a4n20/spPeguZha1/ri2p9ENspTx6y0t9gVzJin/x5q/bHCTfzPw3cjCKYilrXAbYq6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773112494; c=relaxed/simple;
	bh=57i3ECdw/cjaBTposD4Wc518gI4ZkQQfo4BEER7Yxy0=;
	h=To:Subject:From:Message-Id:Date; b=F/9GEPE1xr9J5C3nzUjD+jaHSlZtNd/vbQl7drX8MhdS22Xq5K+aPep/V3FpQkcH+SEQwr3wl3IpKF875v47EM8XikFTv9Ea4pduU8irFB8Ug8JZ+vvUNK3k3+efu6Gc1vQB8pRRBb997SS5hzgwPYTudeDf6GYK4KzCKr8kHUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+TdvEFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+TdvEFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F80C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773112493;
	bh=57i3ECdw/cjaBTposD4Wc518gI4ZkQQfo4BEER7Yxy0=;
	h=To:Subject:From:Date:From;
	b=c+TdvEFV5z53FchXnaby93zNadzIu7auHNlxBu1sUqDZwZruMU3Q1yWnINOOvZ2As
	 D49VEy9Ec8wvyCYGv7w45Su29ERyyNGVqCDtTaHDS6X0eCeiIHrDAtqg5+FAuDUDYT
	 mrqEa+cZxWTERs3TZAimHNPlyX3C5o9crQTEtyLKMcyo+ME1f9kkM2IpsbKoC6H6Yl
	 aWimqkFyDdsoI+4UUEiqgnwOP2PEQcbo7ICKm1Q9ew7C13QFDNv83ZQ6QCregZk6Cg
	 q51s4JM+YvfRe33bLj6n7a73joffeXAYUCs1z4FSGnVHk4IGFgt5Nspmyn8QtC2L7i
	 f7ndnn3uMkT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D47FCC9AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311249361.8327.17704646566261282916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05990421401fba924ead5b32e21692934730f2b116f26fbed8e1069ff86f9f1d
Date: Tue, 10 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773112493
