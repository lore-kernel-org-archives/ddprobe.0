Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC41EEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744246194; cv=none; b=Gota1F8dSJzWDHRqzq+zOwT9v+4+mGZQ2V+TA/2KHv+jnJ82Cm+xgpBFojuJ8lp1bL7jz9MyuLcWilZBx4e1DW2ES20wIkkgmIZW+GuaszZxHCUQIeb5kP7w0eZZnPFtvy5D8S7WW/Yn8FMKEeyBugaG1TaLkeAFVPREzczVTbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744246194; c=relaxed/simple;
	bh=CveT4yxOJVDupVYydVOjaL9Mrrin/xkgFLrEoPtOXk0=;
	h=To:Subject:From:Message-Id:Date; b=dAe5KjHzXY4f/vj7oEY3yetYERWEeZp9W6HK6lwrhg+ZnskOn4x2x0CFWGIvejifUbPDeekG4NVJQ6aeZxP9ue6zupsQNoroLTPkjB6QXf9AirZiJf//NItwecL25G+7VokcWtFTjC9IN7L00i62n1w3oJT8wYV1AZXNcEI1BeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRpgoE6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRpgoE6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDF7C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744246193;
	bh=CveT4yxOJVDupVYydVOjaL9Mrrin/xkgFLrEoPtOXk0=;
	h=To:Subject:From:Date:From;
	b=WRpgoE6YEm5FOETE033gFE4R91Tldxh3Yoog1/4HcBWnBUHFhOk58dzRSzjRCEtrT
	 iejLFm9Kvn9fEazOzqIWROCY2fEntyJnfg7cxTxGhauAKWV3kH4SSybKl0kTpWxbAo
	 eccg7xJJjkZu5f20D9t1EIx1Ds+r8GxWYM3HTl+j2kvxFTLUW5NpNUvBoJZwHLz7Gh
	 jYEg8plSRmoOoN6uwdHjn3TOR1YfnSygEBB1pcpNq/jPb4dU2klxFWxW67oh4XIWfC
	 NSwJGbnK4WmuDrr4rsslxfKWlobXqmQ04G1MIIWBN1CcS3bam/QNZDOyxRdBJ2o61C
	 eLvTPT79knDnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA4DC369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424619360.27420.8537806836413593644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f74bca15b12e28bfa99b9eaa22d1fb82deb7851ffd1095b0d8b847096303703
Date: Thu, 10 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744246193
