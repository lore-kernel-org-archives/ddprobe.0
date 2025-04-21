Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513F11E1E06
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745263794; cv=none; b=CM5myHXWEWlhcCyg99SmQAUJPkgrHliWsyINrD+pSxwxfjOvIITcLbeSOA0OBRl/46W/ZNb4zuWZdHrRsN8IUVSdksqgEbj/Vtc8JCobWgRTB8ANUQDcbdYkpRzaApjp1GK0iV3NoQHnZkHkLZqwmJLQ9RCsQIgr6CeIuhvZqXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745263794; c=relaxed/simple;
	bh=kqajks8pfiNb1gkG7wU8AB/pg+RHP7K5at9pRAZrMe8=;
	h=To:Subject:From:Message-Id:Date; b=lURT0P+OCqYe4mle1q6dMVKD87fpHSHlzZr3ya5YaUOJDkBeKdQ5GwKbiis62Uu1sVDKbhNRHFjaBX4gixCh5uJ4tf4maz5yqiKdpR4mirdNj91eBTeZMqPcFZ4cmh3aL/QrZAjtgEpA6xK2FIue6oJAYJ8GTfpzF837nYLQXUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHdq08dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHdq08dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9699C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745263793;
	bh=kqajks8pfiNb1gkG7wU8AB/pg+RHP7K5at9pRAZrMe8=;
	h=To:Subject:From:Date:From;
	b=FHdq08dAJQc4CWYF+WnlB7jTa0yGAsZaJZrNxqN6Dc14rAJ2af4pUdWcaqDYishzD
	 KWHfNSmW5VLXTQ36tYJ7akbQr0a8nd6YcRWkSO1s215mG64JW0E/gyaMwkIWTcitoV
	 X6ZCBp9u4U0LVo00+12DCZtngUvJL/s6cyv0Z7R1apuOQ4Z0a5Z8HjK0PVftABntwM
	 /sVh/bA1Mgl/ZIQtrWOE0c2zY+NN3KXVqywYD3mO4ka6Uk7rrg5Lc4cKD7tA4J7mxc
	 G2JSztaAuJXui/KwMPVAhgUKpF7PAu9OCdYzCXTBcFnpKn+ejUo44hx3lZDFbR1tQd
	 QYG43O7CsBCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A141FC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526379362.12025.14607032465991022033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267fcc2e4903e905ca9015c9ce4bf036fd2b2517342bd31e92294288cf56d9d5
Date: Mon, 21 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745263793
