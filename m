Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D82F8E80
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780572874; cv=none; b=aGOmgqagCU5PcsmvtG17n5dESqysTdQHUj322UCzuLtp5mbM+eykrLChCD0VwkxlxeeSiSGm/Jvbe/qsXybEDZoy83QjRrYpDR/rjrL+8BVFMV9U1XZhK+nEW+7stimCpSoUw1z1vNjxzQ8vj4axDt7xoin/Nx1NMs8FKaMcQ4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780572874; c=relaxed/simple;
	bh=wd+zVz4RKG4vUiRCPCj8/L3kkdu+JjzUa2Yhel65JO8=;
	h=To:Subject:From:Message-Id:Date; b=IWpM85Yc9X1NHFGqzW6af3t76fZRAFDRj9hAYvdoN3MRWV5ucbD6mYYF9CNz9o+GbtdTKtU8huUmyRwgxdZKnLRFcnDIfStowfcm5B9msWkv8eU2xa6mwUTO7c8ZPOquhDZ7ovHVxJzClh5VqGHlGG0Sam+HgqwLazS6FKyBwAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr7gU3/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr7gU3/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7039C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780572873;
	bh=wd+zVz4RKG4vUiRCPCj8/L3kkdu+JjzUa2Yhel65JO8=;
	h=To:Subject:From:Date:From;
	b=rr7gU3/E3meusfKaMU/ZAo2fM4TvSjdX60SR1y6zqmvxr3L8m6ffVPdVyV/mXYZrP
	 DPtnm0zHCVaDS7quMetrwqHDqPV9TKGkrdxkAL5fTAKT1H2fJQpnpWWPHDoj+Pl88f
	 vtMWq+7jC5WjCEAEHYlaJzj/2vDrY1WBJKrfMAQh2SKfMgw2zFvSh3CF5THE3cFadQ
	 LCQd+96e2N8Msm/+1vrx+GQqa8ed2r33v722PdfnacHGp4o7DaVWNHxjm16YHZlV3P
	 GFCTV0kS2OKbaAzQPQf08jWkfgFvuQryAYTQkAeyUYyXUhnc3iTzhxti8mdbbLTzvV
	 z6K4aqVoOSipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7ECD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057287368.22106.13697677334578579756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1c7b9d20b26cf23674947f219fb2f01aefa70d3d625b562f6ee419fbe61b1d
Date: Thu, 04 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780572873
