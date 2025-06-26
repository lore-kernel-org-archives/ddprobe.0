Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8B92ED155
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750964994; cv=none; b=bP7kfdBZdBQLm2gtdeV+BYmLRy5CxKMSgzasB1BQh7gPYbX7jY56dUGqIPPCBllYZSga91Co6aHgn8lLOlxr4CEJ1t3Xzd/XW5V+RERXVr7qvRMEMoIyoDm5epLMmD8US5hMK7zFiiTHTw7p7nzJHIUwe9rcdACho0mj+veGXOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750964994; c=relaxed/simple;
	bh=8XimvfWxOUJbbh5vaIvEY9tU8uo7YkbVd9iGjIkq750=;
	h=To:Subject:From:Message-Id:Date; b=Nw6BVjnpSxpkwhK5HwglyB6E3HKBzEqHjhRhNVX2Ux2i9LI89zPscspjiAdtBZ7RO/53GxKgA3t8yxie8VdIeleRwpzrdPY4F+Kc4nKQThlW7xMSYO84OQzqVFk1OThNNTcnBmVSkwOjFmw8n3kf3rMUtNvMtnCBW2yPuH8JNVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZG9oG6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZG9oG6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1546C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750964993;
	bh=8XimvfWxOUJbbh5vaIvEY9tU8uo7YkbVd9iGjIkq750=;
	h=To:Subject:From:Date:From;
	b=aZG9oG6WIXFpSY4KgJCHzPtTgmTIvuMbII317t9xuQ+ti5VSkFAobf/o4Rxm7wHDI
	 Hwvq6MnCfVKKiVxKLyiuNgi5i5igftfO+PHAmQtD5V4QfbBcwm23qCZSqqlgXWym3W
	 HNim7Cas1vD9q1gr7RI0SVwRadMFYIYQ9ze5XRzty8XajwjgPUtQtJHKN7zAHuDEhV
	 B1YC1sY/pgXTCtXalcV4HNhYtqbsvylb4GGCWAKchlD3Rg8A1u2EeiepWaoVrYC2CN
	 QKsQvnoupEFs9KskP4ZeMjHAUIE1PcNckLJqcDfaSf1bEZ3jwtMMayaR5NYr30qN5B
	 A38vsZHrJeVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C50C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096499358.21224.14650871503769408847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8481cc5775a5a0171a3ccac7abfaa1bd2bbb45421a71a5253d419f254574c84
Date: Thu, 26 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750964993
