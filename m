Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076F7E1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748186994; cv=none; b=meD9Cqi+/i3bfRSpIAt5xPFbJnLcxz3jkNRHR+3Wt9sanfvecprDDJmjs8MSgHMS0AEVpvKASrTBbVlIoJ0pyXFgZxBXoGvht9irQ9t9uf4wxugLwut2D8Cdt9IbDXNogxmwxJsp/x6sMtc9Zf8XBWVnk7mDRUxtJgNRKcAReJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748186994; c=relaxed/simple;
	bh=QaEtFP7XEJd45dyaYJpGro7ADLqcBpHckv7DM0OgSn4=;
	h=To:Subject:From:Message-Id:Date; b=FyOL0FLJWS+z1F/R/wKZG3+JWPZV3zogbMzjy1HVk8cQ9qDxbTngUoDR9axuX+8kQcLmcmeqYegWf6PeeF6KnGu58TE2f+SukKPKA30h3GC5+bx5MybKtkq668YRi70WelIY6LR6SMtLSvvpViPA/oSQc96DL8nubcygTs801lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXJlxC7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXJlxC7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748186993;
	bh=QaEtFP7XEJd45dyaYJpGro7ADLqcBpHckv7DM0OgSn4=;
	h=To:Subject:From:Date:From;
	b=fXJlxC7PeE+ZWa8N2gGkP/MI+WqKNOuQud/NlFMB5qWx7WW1nAAybNNr1DelQBqKz
	 qzG5O/VcrUANw6tdaMmHoepHrkwM+L6if/L/qMiu4yr8v8IdpxAGaoImWOrpP3NOZM
	 hYvPBzlk1QYaXQHfKObGKCD8eUBlpTbr6DRCWQ6doALDXGkyx3eGeP7oIdFznXpuHb
	 z/xwXdLFQDztfuxiDeI6qHAqcO+2RN8DT0G1yExsAIsX2hqIvWBbYX18EYlhrdPmNk
	 mPqebe58IvOHyT/YXBnPUlX/xmTp1F6l6E16YT2LBnZsHUaOQ2Y1tG/Sol52esrheX
	 XXnmG7vU9ZTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF5C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818699358.30696.11115032142466023819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b628a8e2053bf9e34138e0d1a521ae81063a432d18a87dbb2c6fcd92edfba56a
Date: Sun, 25 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748186993
