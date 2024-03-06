Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1AB63C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709767697; cv=none; b=cI3Z00fWjHDSkHHs59EOOwhsoB7iGFakRUd3V1Q8B1gntolrjSvmP7t4B/I8xBWg3pwQN1W0ml0ixE5AacjzjA55cnpwZK8s+iRdQdQZtNADEk1oy8fanXUvWs7/fUlRc8GyNnek8YxXKF+RMtUVAiDyCD6koIayZ8u6kmVzZ7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709767697; c=relaxed/simple;
	bh=VS2SezBe4a7CwMizW8UajR1QD3/0pPlj3CHsfM6nI90=;
	h=To:Subject:From:Message-Id:Date; b=naGMFWdm7n7LsX75tEn9HyOILTUVDzErT+sHP6qKgyToz+7W7xE600fuvqDbEpZoiO8kj0zLwWM8U/QCMR/5FMJvwHDpqPVLDrgxUSKRV6NkLx8c/8gozA4LoeLp2a7PKrs3BcXYJdAi7UykDxXGnhMvBtrygdetv2A1Z0/fmjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3A/VdPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3A/VdPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9F4C43390
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709767696;
	bh=VS2SezBe4a7CwMizW8UajR1QD3/0pPlj3CHsfM6nI90=;
	h=To:Subject:From:Date:From;
	b=s3A/VdPgv2dq16DnyL15U67cwaQN2HHCqLnjRIq/11uwfPvBnhqG3sHZ56oCeOrr2
	 Iss9IU/4gEgAhUhZu6tQAk76JAL3Lo9zg+Nao5BFbXmmRwIx1CU6v6zwQfh2uYVEj3
	 kfRZyWrbJLfe3Ux/FZGeXkWOcHe0QNpKEp2GCtur3fSbeyF/k7lXBVIwir6ALadSwg
	 w5H6GTT11kswIjuN5sx1hB2BSEIV6uryMB1hsJAoFOYZZ5jF3Nq/43wgn6ybD1e0B5
	 1RiLZn/ugqANrwrXX8AGGM4EUMnTjBYRlAuzBOt6AFwF9j+4gJ48YlypajvhtGoX1u
	 pZJFhc6Lw+K2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6227AC5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170976769638.18259.3567954354670309459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f8a3098efa31c4b147ec0deb4dc6f48d78ee148e9e62790944e16b1bf87bef
Date: Wed, 06 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709767696
