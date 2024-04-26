Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6011917C2
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714096943; cv=none; b=hegiQrvQqzNqMUVAMOSAoltN5aL1gUGIc6zWfegLXAAbg0lRsxmjwu7niWVP9uh7VN8G9pYXq+eaIGEGC1ZFj/4iQZTzNX7Hlqwe+bSnJ0ckieqTfRzIWaG9tAY1P4TOBWDT+zqz84YkImvpKsHgPcwEXP9ymOCMDebUh4aK9IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714096943; c=relaxed/simple;
	bh=mebjp1KF/Gkp9xwX7HGaDt2GJUS8WqkJs3Iz9EpCK30=;
	h=To:Subject:From:Message-Id:Date; b=Ln7A+Rnvm91rmbUuadvt4vXSZoS1RPX605clfCSiwY7psoKMJ9tIPv38LibGRvRwq2I5ndGvAypIpb+FMcQT+Y9A67WFISxZ3VmC8rh60HLTm3qQTSqSJDfGFEVbTj44jChMOIZzGlrbkoQ92j6KFiFFGvHDra7QjDdy3kUBpDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0URdWli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0URdWli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02C7C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714096942;
	bh=mebjp1KF/Gkp9xwX7HGaDt2GJUS8WqkJs3Iz9EpCK30=;
	h=To:Subject:From:Date:From;
	b=r0URdWli8yt84pX7L7iGXu3e84W3E1gfnkhMxt1dJvOnp1vp/V2QUG5BaZdD0zoeP
	 mWMS4NHOQevZjSppacaNM2u6cgbM+qMx+74Kipj+X+WLg55zOfNXD2M/zjCCIMZUU9
	 qF0VY84WKiWCmJhLATacQnRgIinRumoKytF1C+QJmMz5Q9azc59jbmbmG4t3U3gD/n
	 wi0I7JYYSvLERJAplpvpfGjyv2dnWs60RhSWFS6Ovyygkn1fk0dLONl0s5KDPCNT0r
	 pNpJS2lASqR0xob5DdIJOttoPt6+DqoUODmVjQvoTq5l+rMGrDw7x14zsH2M0s9VxP
	 39IstGR7rX6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB078C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409694279.6022.10591732122997375541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c2f83c1f25cc82c86e0e8d42ca9955c2ce767e6b54916f5667219a1be6885b
Date: Fri, 26 Apr 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714096942
