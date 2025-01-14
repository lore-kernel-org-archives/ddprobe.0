Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2685588E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736833555; cv=none; b=JLjkz1EDGHit5nBP3ifAQopLou0+D31lkkVCgW1SekX3LJ1erD0GwFfJspaVzxAb26v911goTEqrYyA8ppcGeOqgVDs1t2mCy46t5qjkhCrXwVHW/wg5yvwSsx10EH6poVKt7CKGyqzdKc9ZD+Y6xRJ13jzq6PF1ImTqTkRvfGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736833555; c=relaxed/simple;
	bh=WJDAF5nFGCKXHX01NBpRkyLB9RnlHJg+qNH9d/DQJpI=;
	h=To:Subject:From:Message-Id:Date; b=YI2pjDLRQJgwpYzovZ96ijPObyisTyxiYeebLrJBQ2A0arPsg4WX5DeyJ05YYR2jcdiTNqPtPrmfR2ebRsfc0EL/dK6c3xlES1CdSLa3+mYoRXZAfcJxQUuLwiCij9kBIfukdZZ7mzInoks8bQrHFgmPI4cYni16nQNQ3BQJCuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq0uULBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq0uULBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99F6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736833553;
	bh=WJDAF5nFGCKXHX01NBpRkyLB9RnlHJg+qNH9d/DQJpI=;
	h=To:Subject:From:Date:From;
	b=jq0uULBzmpmp5cY/g+FwJm91/AdqMgIE49LbqxvBwCvYQn1VUopB3T5Tj5p8/SwKz
	 Fehh7GHEcAtkTBiYPnCXWJ8xj5LUpMg4Zu4H1PP8rpIGkuiRvaL9IQeK7b5LCU5sTS
	 U0zANdp+K0rC0tPNMbdFySvk6mDtNrQRsxieQBcCjXQJelmmKeFnxDTw22KEgEqA/0
	 KcNVZA/a2tuA71lXc3EtRHNvJyivoG8zXJ6FV9vK6PIlwLOWvz86cC7nk+kIgGVkMY
	 XXRYcIvPpPMKnObHHKJPKLcN/Pt95CocuVB1kMMvdNUrpqFRL3QZoIp4vk3EAt+elI
	 fSI9KQq0NlvRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D19E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683355358.20865.16640293802681133131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39635bcc2264a2d86acb8bdcf6212c3e633278b2a91347ad34800c01ee5430b1
Date: Tue, 14 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736833553
