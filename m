Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0352B13BC0C
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755049796; cv=none; b=ZJxUVyC6TqPDF9Q+Z2NgZajx4exfawZVhYRHchQGQR9YnykzeF+iuc0PXiAeiBPfCtwDLInahPIzbLmm6uq5U+RNLdaoiIUxdK4rvyY3vJh/D02jVdrhH4Jt1b4259948O/qMZE2P3jykhUvFc8HuxSBPHtgxXyq5KZ1hIhZ1ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755049796; c=relaxed/simple;
	bh=p3FjCr7wXO/vnhdBMYkYAdHl7cshcB3lrXYxH8YVxEQ=;
	h=To:Subject:From:Message-Id:Date; b=UWsbd6VTgXabJwYVz38FkDjPPCkZGEsK0mE7vpo0WhjRyYumUm6YAbAb/YRx4XZp37HlUgZLo8TZBLaZ5cmD921TkMTr9Z4kLBwreL+r7kHAF6IHOmq0Q+WHjqW7lULeUVgZXfEaqUXkasQo37w73KI9vhXjlttgFMi7jmpaCvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAxddGOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAxddGOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4ADC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755049793;
	bh=p3FjCr7wXO/vnhdBMYkYAdHl7cshcB3lrXYxH8YVxEQ=;
	h=To:Subject:From:Date:From;
	b=WAxddGOvmDtKiQrBVwHQppgGlfYN+0RQ4af4HIq5cYYtOyHK2qCPvlb8hRCJLQrnw
	 YfIQ+1tl9XfEqcGQVrJ8G65qklKgeZbYuPoidZ5U96rv5yr/eUYnz0UzMLm3wKdawA
	 7raV14VKcVqz+dExo3K3bS1yjtVqrqFG6x5ZHy5uazYVSARcB/0HS8siNWPnKWFSYP
	 2WN8hHByQI1PH8jbeELqBJmQLNUy1BgXZedRF1yzsTd+BX1+Zx0sLC70B27xu9yuXs
	 nq1igKKbGpIsD2+BpUXjj6YlKnSXxqBdiF1JlauBTw02e5TGozMET/gi8Jgt7EtTb8
	 EnZ9ikYPjMmmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FFCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504979357.10029.3074386192246392594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7bbaab60ef524a984f62a1b84e3d48013b9aafd6718213dc1f1210d2747352
Date: Wed, 13 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755049793
