Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9114387581
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653094; cv=none; b=S6E9FKUS4SrtkoNepOa2OhCgvDGdUe43ZkABqRw01qTnZ9r9kqJMG0uQyyFGZvpYcK2p0zynUT/KqY6tYYYFnNnHfs1fwfFIUZsdaORDW02mLZSX+xjg8/IeIMKtqwn/qqA0PvIlzBvoEOVywrCGJKl3T/Hit7kVnzcQqb9Uz2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653094; c=relaxed/simple;
	bh=a2cEqQxjThLxIvXK110GUIM93zy/UuuHMuN4RH+wsP4=;
	h=To:Subject:From:Message-Id:Date; b=VHOwRSF5Q5gszgeVgE0OLRA/m9StkiL3BGBf1b5qJCazQReEsk/53sGdwvqO1YaO/ZE4COj1+m6Oa1zrG3NLacEyvDjZqe4IUgmScwEzMPyM1uQKl7bWvlIhU3yxXLPS8M3sZ68CxG7D8foVJ7SQIf+rYJKA779LYfjGeVFVJL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvHy8X9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvHy8X9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0869C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773653093;
	bh=a2cEqQxjThLxIvXK110GUIM93zy/UuuHMuN4RH+wsP4=;
	h=To:Subject:From:Date:From;
	b=IvHy8X9bNMXfqr6iHqrOIgj+PsyupXnZBBSgp2f7sI451A2ekmvaYqEZ3haEkU8iR
	 qFK65PeiO8kHhJqU/i6ws1N/i6KwG9EoWhWFnBiEKuquekNv7w9zdOh8Uh+VW5mpvP
	 Iyz+aGwBAs5j+nnB7wbWIDH2qBpO85/9QBLjYJUz3EGDKZOKE62xZdV9DpUmI6Ic0G
	 4pDuquj6ydmrOH/WCT9kh0MwgTKtWZOiFLK9gvH1sH7yuAdWmxokJ+2QwbtyH4V4/X
	 kRpuM7PMwsWJmxO5RK6L3QLPCbJd8+UFf3qXAmjqT/UVQhy+c4yUI8lUMOirtqzR6t
	 VHyu2kbjolc1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9AF013F6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365309358.22123.5183267838375524922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e3222d22f6aea6f7d2aae850768291914f96e89d81253e70dbbd15eafc6be3
Date: Mon, 16 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773653093
