Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8712F4A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761357594; cv=none; b=fPkmHc2RW/mel+hKITBjexwwcUfXCg1kVplX8go9N0D3qxlehq9TIdu5C62fHKgy071q8+0KlkHOJNMayx/KomMhvYaYTty06eFGu4rlW2gWiRouW/D+1k1CewlNFTKkiKNQKklcU+D8OFJDf3hi6YuREYgo5UeUBILOb4g3nCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761357594; c=relaxed/simple;
	bh=QLM8P5zOAG25/Po9548kGowtKp1pFmndC4KRI4t3oqM=;
	h=To:Subject:From:Message-Id:Date; b=A+H/WF4fLJo3fh1FBOiZ8YYITtAfkCZ1cednX5UF7ZHJCKcjeJ5QDNbVzV4mNgdWWZGHCm7+Ru9LvBztH56d+r+YbaCJejdCEnYDLHAxtrr9zY2ZJFvXuJr+kVYqAvJS1PPQT3BZNPuw5+eR7IPNdnpY55PtXmCihL7oPmuCoZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofLtEVID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofLtEVID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761357593;
	bh=QLM8P5zOAG25/Po9548kGowtKp1pFmndC4KRI4t3oqM=;
	h=To:Subject:From:Date:From;
	b=ofLtEVIDv1923RtQUP8jfMXDfXwnn5DH6TE7/3P6jKfjhWc8n9OgfufKgE9vGn33M
	 75ff/6xbo/E1hwgba5LFflinD+UH0qQT9JspI/OhJBBM8gudq3KYRkairjeeZ26BPb
	 DDGTY9j4mMqL/QgMKesWT0TngkZFL2G7fAW6UAikF6XbPRa8kX8xxYAzqDDXdDT2wg
	 l1FfJ8UST1TkOD/r2suO0UiBmpE7BeVsWb/zc2/jLbZYpKeZ2PjYLOdYLwidRSmqIP
	 yDujYbK9k9eQDZemZKpVZapvvYegp6NvxsUoWgd0/7qty3Xo0t+HciXWIh9XGjWCu7
	 APYMmraj6F5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D4CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135759357.27649.15855140028606511108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d42b13b394c241391c2c1d112d31d1f9059a5e393f4eb052efc483d670f40ca
Date: Sat, 25 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761357593
