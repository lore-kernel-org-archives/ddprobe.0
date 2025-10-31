Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156FD32AACC
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761916194; cv=none; b=gzwCeWeg/4eqrP4VUpfXY8szwLnGCnVocQe7tslc7ZeQffx+uEE7+S0TKUHG7T1b1E9fMR7jCtgZ37iTQ5ipE5Tb3Mqvh/df4XN7Vk2sEL9R6ld6o9c7+qJHuxAMVAhQJ4f9CkoB+2qxXacLoUxT264XEbqB8t/Ev72idbvtrhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761916194; c=relaxed/simple;
	bh=YiIRR7NvnmS4NpWAtrSsHtNuiQTAGFz9neQimHA5rFs=;
	h=To:Subject:From:Message-Id:Date; b=BRNYWEXfimqrHxGUBEnTxAiXJS7fY2l81CkkdUUJ28OVrDNpZBU5n6jo1Ah9NjaGZKFNVlluw5LiiRWuHPDP8myRgs+ya/pc4BMULrEhWh5PqTgZGDmnEY+Kr/U8WF/sf+MX64oXcnOYMkcg0RMCdafUnCGq0QT1u2o1UjsxypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko7vwcnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko7vwcnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761916193;
	bh=YiIRR7NvnmS4NpWAtrSsHtNuiQTAGFz9neQimHA5rFs=;
	h=To:Subject:From:Date:From;
	b=ko7vwcnrvJdk0+rKfC934Ba7waiWzeQPp2vOrGbDiXm5IdP4fnfhH7x6T304RCTuF
	 tk91s9YjyW7QYeyi5M2H2cZnm1YXIT/4zYC3zynoy/IA0Q5EnTK82mMXvCIt3vZA6m
	 eOdGckUhyatAaWixNmhdguMTWoQhqsWLQyCg/ZnOXF4oXFSJU5Mem5X9KrGfmciryw
	 pLs+HZd5cDJZNOUPayd07e3CZ2/Ws7FPlJbNT+KAOaCTbq6QWycHseA9z81tTslKZb
	 GXrjdCA8aJyR+F0/4pVyTPr98wZVXuDNr2LFxTmldgzJ+/WjrEqrQ/fCczegxJsjup
	 3kP24/NKodrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD9CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191619359.29065.8839145444042253495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f526aefbee6175ba3fbcbf247b2e632c1351030dc55723b4f45051c78d7095
Date: Fri, 31 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761916193
