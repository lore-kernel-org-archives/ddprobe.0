Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C650C18A6B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742752193; cv=none; b=lwvy5SssvRyBC1n7Sgzv9WYRieopy4GVRudXAD/W9jzguwyMmk52WwfTtfCF0dm+QNxpGGI/pMyBQa+uJ+ED+4N5/dG3sefMKvi/U8HWal17m4c2eT1HyE9QuqWCjuKgEst1o2xAuboarthovLjlbiyni4T4X8Km7WgfpCQVfHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742752193; c=relaxed/simple;
	bh=Iy7sbFMPLlKjEe1u9Ba3v9EISd9sXS3d/emYGR2yIqI=;
	h=To:Subject:From:Message-Id:Date; b=mW9aTkQbG1qiqjHocBfwfblG0y/2ikqPTASiSv9yrUQqWwZjZ0SibaJ2e0RF26tk1Hph6FD+y8PNMkgWvLUDsdQzOyKr6IAefY5zlcrjYratZjMmLF0McH2aPj6k+kmhPTPvo2ecp+qMqqizBtXnhY9W2cgC+93JNN7kv9x8ztg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F15/pKxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F15/pKxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA27C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742752193;
	bh=Iy7sbFMPLlKjEe1u9Ba3v9EISd9sXS3d/emYGR2yIqI=;
	h=To:Subject:From:Date:From;
	b=F15/pKxk7xOB0SrsePSCjEPC6oVB8uWmayOnylRN7SvgqSXXjB39kHnyrdTbeU0aF
	 bEIFuNDjAll3eIt2AsMZTt4VyxRjxTC7F4FDTRUPDZ9rqbCQJhCW+wI3klNYtSzsp/
	 PM8Mdh8BSYMUM6KalLPMG2e0WCpsZigQnpjoPKXc9cBl8FSluTS1blaYcwF0+jnuiP
	 VuZIfi2T+7rs9vWY0bYUp6SUEKPjTnm3Bc2Xb95wQhdx3rkUABR99amRMUKaBDl8gW
	 KsvT0tGN1nVI+iZSLm2PCiA8Zf8cOnN2u57lXzzWHqFbsscCxAhdhwYy1iGMobfshS
	 tJbdB16PClTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C60C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275219360.27318.1967069663617326529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b87d2fab2002637b9fcb9dd349aa0491254a743878fc4bd3696c81b163dd7cc
Date: Sun, 23 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742752193
