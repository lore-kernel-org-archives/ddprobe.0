Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131A20B80B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760668194; cv=none; b=L2wmGS1/fkTybJaE97GFB9c33CgfuhLUJfQ3m0tV7/ruV2fIqT3iNW5T2baHhWCd5RKmCtRHpAt8O6bnS5zteOwEpppgLdF/J3+ELXDdomsDx4UbxlFhcBXmUuLnO2hbm89B5u+HBosLiiDqU7h+pOcDG8V0Nof+iPvW6z64WkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760668194; c=relaxed/simple;
	bh=K2cHsZvbcjkjrhBT2b4LPrGE377/WTgzBGJAwRLz4lw=;
	h=To:Subject:From:Message-Id:Date; b=lHMGp45A6J8p3TW+u/DNAJ72WvbGe3szXa0DNqHZXLJb4N2CxxL+9Cto44BglQv9Mkd6c+itM/auOxLAEUQu0sZA01oRdaHnqn+zHS+nWI4xniy3WWl6pPBfnIVwhrgnp/yOkl0HKViNDpI3rMYxJbzKII9PiemcUHy7kXZEee8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIwaYARG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIwaYARG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D2C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760668193;
	bh=K2cHsZvbcjkjrhBT2b4LPrGE377/WTgzBGJAwRLz4lw=;
	h=To:Subject:From:Date:From;
	b=OIwaYARGPlNVgJnqwwUNI+5Vh2aA84jAajhVxz3uVq1oS6mByLbMcq+vlEqhYhBgp
	 JR4OTMuDH9Rq5Sh8RPVxJ9w/HQJZq7Im39zGlL2phARFmkfEir20CGR+VCAr85IIVT
	 INMt7aJnAyLBNvxpJuBx760C3FsH7v3QInFd1TzrgzfhUBM6avzXoODs3jkhTsJxmg
	 9/p6P19v92UHHf5AE5WNhhzzW1CVHJK/NcfMmYC1C+J+JBHmNpAEhowJZcNMnt4BwF
	 TKacHAYvl1A4uWShAN6WA7AwnnAArkedmFlRyZtwZITWjJ+ZF24C5Kuta9ZwUkhQze
	 cx6jlq6AVJr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A73CCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066819357.7218.5738942333053094421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac21895b4b5c7a9b7f67ac12081c15f86d85b7609b4992b691df509c48e5476c
Date: Fri, 17 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760668193
