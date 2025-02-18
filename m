Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1FD1D5AA8
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739911735; cv=none; b=sV16qIlpWiERLDnGyLsbz3+j7baWW9jqkJS1K1CHCx1MoqYNLWLk5XMjRvrsQGN+X8SAav9ND/hzxw8ZSiIC5buJXVDziYThy2QkNiyNLkVVuL/zvmbn71307FkSrdtaeE4/HAq4LBobJCnfZCnxhmke3oks7XMRcBJnOh2kp3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739911735; c=relaxed/simple;
	bh=yfckb6NJ7dHORh1fHQJQ6rD0ULCNisCQ/4ulVbQ14GE=;
	h=To:Subject:From:Message-Id:Date; b=drExJBqrX4LL8bCMbI3sXPYL0PGDNowR0Pe2NjhzIBnml1169olvQ8paL2t08rkRr9Zvlhxftfi1XiNzxZ9hoV4n/ADzkdI3FyqYnD6rmIdB8NLMsceoCpVlrRudbnWioGsADq2finfQZ8yIwaFYpby7ilDJj0ih4DRWSKKzKb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnrrb6uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnrrb6uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CD2C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739911733;
	bh=yfckb6NJ7dHORh1fHQJQ6rD0ULCNisCQ/4ulVbQ14GE=;
	h=To:Subject:From:Date:From;
	b=Hnrrb6ufzwY8nrhd261XoH0OIHO9a2L0xrci1e/XS4PbJBQT6Y5jpkM5onbOG3ml1
	 IOcTMdmL1JkXggxSpRiUcUA4VMK8Te77NjSSK0J8HGxykDgvs7dwdiWaWh3kF4zt+4
	 fn7tjweuuufoJRP/hl1LYDSQMDVkjwppllr+KF+dgReaKQ4w0FQkyXme2jIJ/o19KV
	 EfycvCAVeqMCbHcUqMcp5cfVIEDCHfFrOtUkRX9hgxJBlZq46dJiz+SzEzFdysai+r
	 Xa7AJ7OTwzKNTM7OHkd15KZ2/liK+EZH94ececEk6iKdWO0S/9PGmbBAwacah79fcg
	 EZtshDJ1JjdeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E01C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991173364.3300.3768237085124305957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b31e687d05b360f59ae07c6db7f7a8a3b5cdb88665d010a90026d32f54b8a59
Date: Tue, 18 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739911733
