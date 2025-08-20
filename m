Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236B31A9FB5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755697795; cv=none; b=Mr5LlLMOC6NpO0jP0T4mn1bSqCoawvExBfIEDQF5nY7MkIf7C3fg1Pe/yW6kBgeC41tD7IpurH3LPvJ34crwedDzb4EpgJ6ZKVLuBCZPY9rblCASoI1DLQYy7RzGZYwweSoKz7LnvYzqT+lBkD8voG/GWqskYMqmMT542B5f6Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755697795; c=relaxed/simple;
	bh=qbapZNFMu+LRGmNqVY70ir5bXFXMU8TKRXNygz6oqes=;
	h=To:Subject:From:Message-Id:Date; b=j+M4QSDhKyrJXjcoRHygQIdHRA7URupBA/F5AWYY8/PuMnqv/XlvbHPfEpIj4PsdFy+iKxifJqBEpAop7BqDb00prIc/xv/TdvVHqJNFuINRZNTXNzzQ7VjRAyRSGJQHcEpYDWo2Zj8gfrNnrFqF8lC1QG+MkRyXoIIIfJZmFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip3LZb7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip3LZb7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2972C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755697793;
	bh=qbapZNFMu+LRGmNqVY70ir5bXFXMU8TKRXNygz6oqes=;
	h=To:Subject:From:Date:From;
	b=Ip3LZb7Ky8Tb/IF/HeB3SWgPQrdEvC8vOSmyu5w2vDwkpxuVes16DOLISzOuBRL9f
	 NvEBhNRIRcjhmXURxHE7XMxhJYx97KxzhVqPZPruEx3YkE0nf9Y1beY5kfusbyxPS4
	 74f/PCp3L2gvoypbDonOwhRyWvCllJME+ZH+LVaGl62IwMXzAnHJHBMq7nLy+zO3WM
	 7vpc6u/XO+4LEN8N2Yws0CkJ5pjj+FEykR83daNNUf3HlmHomkdfakMGkIZWnVpQGK
	 jc0S4X5QQeFs1aIS2xEub4QPS8/qV6EW7EEWz0fXZt22s3MZbSflgIsTQ8mZPDH1O3
	 WrTs0kf2Y7rdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF77CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569779358.28574.4145950125269330635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7365bf3834f57767396def286cf302bb5ab6e86b1e965d5e64a6c638bb2f75c
Date: Wed, 20 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755697793
