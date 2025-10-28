Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4403F27145F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761619194; cv=none; b=ANcDSO6SWuFCXSjZWLE9sCsDAcdXYMTpd3mWpN46y7MmPvXPtjajAPFMhqZqX8o2L++u5xqwQgiypHQqSVlsQRgolDQda1yvc2W26t6lG9jSoscdBo6MTTxjwSZH6bPUx18hgMJdfqIOE2q9togaMj4uDHallc1TXVurqob2CzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761619194; c=relaxed/simple;
	bh=a0v78PGOyi4Gwuj2hUkB/EWr89LOXzRj9jeeFPYE3cc=;
	h=To:Subject:From:Message-Id:Date; b=ldNE+LC28w+o2oUEzBrnpXAsjWPk5KDQb29NtRg1nDKE+BPmvW2YGTjxMCBGqIWeziq/M1ELzEEKY/99RPGNQvkztxmvJ1JmbosZDF8FIdI5WYz5hPxQd9BHNz05pOsIbe5i4tJBUBHCAarbfoPrVWOxcL29Ci9hdJrT9K4gQUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2T1L/4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2T1L/4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C76C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761619193;
	bh=a0v78PGOyi4Gwuj2hUkB/EWr89LOXzRj9jeeFPYE3cc=;
	h=To:Subject:From:Date:From;
	b=O2T1L/4Es4QjbTLF7MApnDcVe7gxD8bJkA6M5ZX5ZdUtHGCDbwvug/WQZm4EXwcJI
	 Is7w67pacPBvejGSrMdbgGQqKV2L19EdIB8RqlDxDm9NcllfICy/elmJoC2Cbxaqmb
	 4oiG9ON0+xHURHVV8pCzF23qSgSczbA9DqGUHhtKOJDbqwT/kcmMDI4IleSYTfCBu8
	 lRVxw2ZgnkOrbvc9HVUfsS4YZ2eBV9EOkzr+yqkydSds7JdFYWDfdRwpYDrcDuPUMS
	 p63yq4nNVj2oTjE28IHRZw0b2X/OigKw/imJiHmdgeVNnWCslYj0cfH3qe598uXL8S
	 artjBNse5PBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94623CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161919359.21682.2763714755601946202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f43afd7301a061b82a3807ce0d6e0a12dc2924446f578bb2f9f0e78c880be6c
Date: Tue, 28 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761619193
