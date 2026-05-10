Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAB219E968
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778430034; cv=none; b=VjP9DlqhEJmQ38x+LJ1i5y/32nCJlq2eAUvMvqwwozLaf3pmTfaV5XbfR4Q9YrkmDvBOt+xupD4UK4xNxyjV9xjkP8U6fODYNi4E6GfhuxAtC3rlaqeSFUfk3vYk8UK138t5mOHL0qZFQkhzA6vQ4NWlGjuKCncie5k0Odc7nNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778430034; c=relaxed/simple;
	bh=mj04DM686H8aRs+F7Bwh8CqCkdCzpE2HeqcJNcLTgKs=;
	h=To:Subject:From:Message-Id:Date; b=WZxR2UCthhKV9SsaHnnit6bk0dF0xWkdHfgj9cNP7YtITqEJ6Swd1LdOmpgiPnCLIojhvGRnxNm6wcXJnZPwqNrsqex91SYdlBUyG0xg92CmB60YmSIlMzU+xzoJjAGcxa+8pHl3uaHL1osl4SBa9wZMVml79CeIqHzaJCoXZl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np8S67eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np8S67eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FBC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778430033;
	bh=mj04DM686H8aRs+F7Bwh8CqCkdCzpE2HeqcJNcLTgKs=;
	h=To:Subject:From:Date:From;
	b=Np8S67eTQ4PBIjawh1QbzIewZUj/IhPHOtVMCKghbR1QBm1IpXk+Pj6gEMn3GzGIj
	 yDDr0zF6xsyUuI0wQX0lzFm2HPmBhuVoceqNeaeHZ7eiP2X0iu1d01gH7R7ZamBCZ5
	 BCDm5UHLlcsaZfYs0pzMJjFEjSlpuPtAWie0FoFPnjkcp9o82VAc1sAO/x3SyIPDGM
	 THJJhS258tX3W/ENInfNvj5P2x7YMS1TqsOcVarOKtlM/Eo0b2MfeC8zEDHsI9Z6C6
	 mIYQ4m/ShIcqmNaiGmEGxECOiWABwFJuwtjv9anmtHy14OxROwuz7HqH8EJZpLxRCy
	 nIRFMcWoHUiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA3FCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843003369.25058.3302568650574908945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38621676ae49111c8f6b9b434bfc3e541388f19e6376729c1dcb57ebfae0711b
Date: Sun, 10 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778430033
