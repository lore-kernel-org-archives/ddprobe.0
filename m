Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD9F1EEA5D
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756361994; cv=none; b=HZyctnQK2+wGsLNxf/XFPFqC2g6+wojFmgaBBqbk0Bs0lUc7EGv2bW7xhQnaCfFz9fEvFuVDgyUiWOyucmLisVNSCgRFww4j0Wem46TQ1wjAEfwu5iRRR3f15pfMzlk99ItPmZumqdWHGF1K0bproDwjNF9o6u86SBQlnlwJNHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756361994; c=relaxed/simple;
	bh=QhIO8UM77Q42FvHvjIIOj7zjtVYYzxTOufwNKKV8wnU=;
	h=To:Subject:From:Message-Id:Date; b=SbV26xvXrZKQxZME6zKXRC58w+sye1L+pSZFdRDs3GIqWD8lYlgFqJRGQhcsxdn7kfz3FD+dyIluezO2PvEHtYvE2KXlDxfV9c7Ew3l63W5qqw9RI4JlKNyALTJ2Uwe94bdwBVSD5HM3jpUOGVuCxrWAOUpg07Z3PG+VHofcGaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBa2eBGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBa2eBGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756361993;
	bh=QhIO8UM77Q42FvHvjIIOj7zjtVYYzxTOufwNKKV8wnU=;
	h=To:Subject:From:Date:From;
	b=cBa2eBGnKWwjxEWmFbVYEHmK96QtBfyyp85HNPIsg7sudlXHhJmoOgXCX0kqmksQw
	 Wa3qXMyxV5VMcUhG9G8Z3+IS8I0sU4PbtRkxHKoi82M0ZKSuvpwBK+9nTgu0YnHfmk
	 0KV/rJEDQwEUH0J7+g+bwRx/uRebIFvKQjJ4XCGVcTxJLBso80+L9M3KhjvXJY2Fv6
	 GCxfpemPcHM9kv3iEk6Vm8ItClF37vFsAh2sqIZ7CoQbMldjt14WGC0ADakW+ADjaP
	 AyZQsKNE1i2misMbkySdkDSOaAREjGiZNVcInhKvRUIjtgga+u8kBZJIHHxtrC2mXM
	 LkRtemP8FKajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38BCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636199357.16272.18051021583308955254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f03f8f279bbe5d2e0b0505309c7f1000d81d06988a1b671fd1d38fe7a2298d
Date: Thu, 28 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756361993
