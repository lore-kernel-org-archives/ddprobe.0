Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4880A37141
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714928543; cv=none; b=gYIISp5pKjGj2ZFP2KHifGAxgSCpFeLu3HH0y7fWPT/O3vyuYQAV1LWRca8eS2Gatjn0WxbW8n4qQHVg/2pus1jYInvPH+CRMLYGk8MenfBsryDW7zyPfRqqB9kNlxbl5DqJjBO0VFqW4VINWcG5EFduImPAZslimpHo7aQrbyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714928543; c=relaxed/simple;
	bh=Et6TIg0Yvd6m2uCsjtR3HKdz6Wql9208B0VFqqTvkY8=;
	h=To:Subject:From:Message-Id:Date; b=KSI3L45QIFcZIE1Q/96NJn6Qr+GD7EiiLHCdYa5tvOrBTNHZVv3jzX6FSlA4MCBQ+To8wNM22i28qk/rBzZKDcnqP1wyGywULUhc8Bjm8X2sHBxQ/G56ACjNHqkMkZ7Y7D73h+rO644UqpaVVkbV/3EvjcFYWnCzCfM1/lpR5o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+w81wPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+w81wPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9FC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714928542;
	bh=Et6TIg0Yvd6m2uCsjtR3HKdz6Wql9208B0VFqqTvkY8=;
	h=To:Subject:From:Date:From;
	b=l+w81wPXahGP8BDpr0Wm3RbucYyfQJUWN2wc0mYaAt05mTXCze+I3iyCnzCpoNsAA
	 2No+6W4r4xUwZmllfT171WN0DfmHfvptHi2Aa4TBy6Z+R9n2PWzreqDzi/JjkoR2pK
	 7q4jboclhJaUpa2hNlIHnZCPXJzODNIKfcpUBTVAxh9EX9cm04Z127JSh82vc+LiMd
	 722PsZ72Jo11h9VUgEfmfZp2nTIS4iJLKWBc82Vm/dQ8peT0MWYXHKv3uwwHxKGktT
	 t9/HDt5mCn3/NUk7RMd1XHhSEENVEzqBMhkZJUCOOz3I7cJ9rI6IIvmxgNnsEWLkHx
	 AncNCJpM7h7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE27EC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492854275.23521.487751579192400437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae5d48a1c5d43fa82d3e88f57980cf08b3762d400f90ed1b7fd733d7a642eac
Date: Sun, 05 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714928542
