Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956126B760
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762693194; cv=none; b=tTxZfobV8wG78+tBMoPt3eOQ2b1DMSTHW4iuzqP5lUZL/wq6vUyc9lSovSLfvXbgFgp2cOXz75Z5eBSGPfIs1d8V7y+Qtd9gtBcVFWzsuahabSyitYpeaofiGGkbIP/J9XBYBp0cEloAB6yFTwTxBKCqNFYsJtjKiKgwQPslQCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762693194; c=relaxed/simple;
	bh=d2Niz60/2mSsfZL8pq1LT2jRu103EEaP6b8xQ2/Ri84=;
	h=To:Subject:From:Message-Id:Date; b=EXtdxuVZ5A/BGXcRhou8uOUEMYA0OvT7hKjYBDPnh/ASzf3sEObLszcUwMLXRpISN2Ba4PLpMRpJXBz0KEOPcZxAQl7Dj9KlmK5TjePIOO2tD7l9GTYUD9vgnmdsWgjqaDhR67PsPG4WLUgsNIOh702r9Ka8GM4uurs4TnnS+Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYNBnHvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYNBnHvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC8CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762693193;
	bh=d2Niz60/2mSsfZL8pq1LT2jRu103EEaP6b8xQ2/Ri84=;
	h=To:Subject:From:Date:From;
	b=mYNBnHvfiyWyKfGyiA7A2/KMntug3ikEBdfxNRYEmTQfnsQ1n8+zXffJWlHdd1r1y
	 gXXOQUwao2E8dLqQTZQnZjht1InBvF8fDb1jAYWSQeXRR4n3x1JQN/sS20D2PhQz3s
	 d3Jw6Q8oZBT8U8pJ1nBRoPu3qNw8Jnu3YRmm+qwUPYRL0dMZCAretLXuO8SDGRAEgQ
	 xL7LP8msnaHNbgxooz9t655B7sXhmHWniRXMalerTt35wem5sjxag3zmVH0Jjxff3L
	 byN+2j7Zio6WljhtpwT22pnjd/7ckSUiju0IRMI0n0QZW8zITpTzphYqZzEcMHhxXW
	 KugOJ+TXjrEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FBCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269319357.32677.13592217719240138232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c8599a43d8ce564771dbe46f7270d914b9e43d54c12fa110ec93e80ebfdaf4
Date: Sun, 09 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762693193
