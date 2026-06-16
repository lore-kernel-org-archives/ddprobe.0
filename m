Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462E7331EA5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781650594; cv=none; b=Cu44k0BIT643NvRJiOkGTO6vvcx6Q4En6lMj8LBjxxUOhCZ5lAwcvVcKmhMTmPut5NqzLNlgA+0925Pa7dv21PhiMwffzeZ6eqlAgJi+anhJfrlVyBy8ETNH0QShiBtMf1JbaVk671GdqHvtytlAk9j1g6lwSEsB1M+xrZFzUag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781650594; c=relaxed/simple;
	bh=McpvGcsZOC7mUB7PPtFaWNoc3upS7nxoi1xPYI6TKLc=;
	h=To:Subject:From:Message-Id:Date; b=nYO2nMGF4h+PZ8tTLuy7A/aD+XoVR7BNeYEjRIkkx1u6Oq5YxON+54EeBIu+qJtSgimUIKd+e37m3HNinpkulWiFEygOgSWtg+4rD7Nnbe3BB482djLGcVEzOUuxXkUhHBsCNemTNq6UQZMerHTAJ+f7ZHOVOpKOWtbHVy44nEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZkZ2wI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZkZ2wI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2067C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781650593;
	bh=McpvGcsZOC7mUB7PPtFaWNoc3upS7nxoi1xPYI6TKLc=;
	h=To:Subject:From:Date:From;
	b=sZkZ2wI9+YRWbiNeKlmoB68Jqmy5lXjZmKibCZt/YCFIbf28zHuOIXayGH+kucNRW
	 Pj/SORZSrs+2oXqXYJJp5MD16WdP3xbG1ySJzGHFjEeqZe5gB4kKwAq24ZvFAsBKAv
	 dtgcULGFlIaQuFI9u/8KkV2iKRCRcMV4Hyzl40GQJcc0tr21P0orYmrrk5lYEKCe57
	 fdXrVEi9yjIIgjusmf/fDOj61hSEKyxrLBj6WPAPhpf4uoB9XItw2+j5VbBsigOw6h
	 4NRPHi31w+zrIVAD035Ob69DVi6uipKyDwWjyyuKdV28VDiRCdr5JaDyvBqXw7PNPo
	 JdxpHrlTkEzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3038CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165059371.25895.16491424429058745330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055d6882292ef96c5ba384ffd0d3c2f8ffed7424fe90786ce8afb1ff7354bef3
Date: Tue, 16 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781650593
