Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDBB2C9A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738377354; cv=none; b=q0VuvbKMTQRKgSXJ7W7d9CZfhR8RqYmqTgZpRT5NIZrx5KcNOgn3cP0pb+5ktt8LLRDsRrdc4UVm9rsxTeUu/zhdJEod/2JK4QN6eXfbuW6NedfapIElfeIT0k2LF+99Oep4CFE0Yt2yBqZDUEQ3T4rYBzuXMBf8MggPSyFSvZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738377354; c=relaxed/simple;
	bh=2ydcRSThJLkNrdD7rXptM4i8YQpUC9IDu6sgp2MZwHQ=;
	h=To:Subject:From:Message-Id:Date; b=PCR0hdsLq581KIjldaADuKNq1MWMduWv6PLIRGOAELCoXr4NxSYqMXCoTXucNuuZ+GUD7nGTkvC+951pDmHMZBt4ZZPsd6NjHAOcrqvIC0TK0uzj9g1Nq+zTWVJqi/t7Qj7fihtrN0UiUw+zIN+EMigT1N7Qr4b8I5zyTEOfwqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2k8Vyms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2k8Vyms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C292EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738377353;
	bh=2ydcRSThJLkNrdD7rXptM4i8YQpUC9IDu6sgp2MZwHQ=;
	h=To:Subject:From:Date:From;
	b=M2k8VymsPl+2O+acGbWpaISdMQe9ek0pZkWw4MDOoq/0+mJ1ROZhUF/R2N9JxHnX8
	 El9fvK2D5+4nukZxD2+kPT7DU7dYSNaPS0i0o7pCmjdCZpS9BVKrapZf6GXH5tvUiv
	 3rK5mHZXWvEECucsMeFGdFrtaPTuothZ//g4fAHKPE5KfZNFPzy37C/kU5x5e4CnsF
	 SnFRqlflY/ZWAAF1/gP0/3qFEe01ynZKjljusYcj9R6fEnXIL8H7Gfk8cot+ClIk5T
	 OwhM3nzyU6hPCa3Z3w49yMnAWWblCPEk/AzBH2v20ACHnS0xZDcecTbeH+Ug3keh/V
	 PgcwVCokoNkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E02AC0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837735360.21667.2653038621908897808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c7ce276c5faa52bddb9c182859e32fece87d43fc7df8875dfcd5468a9d2ac9
Date: Sat, 01 Feb 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738377353
