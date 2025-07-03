Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F02D2DE6E2
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751547594; cv=none; b=qzFCjfZ8xz3cO1fY3r9WTukcXvkmPMckzpmroyWfw3aghoX6pnbzbt+GQ1p2YTgqKfVU45DkaxgNx4IgnIrEODs2CFG3O04Ad+SEQ+tupgRLro0fNoKrsS6/93sH+ejZfT3JeKEzseSTxtX7tDRB3jI+iZBbPwJdtvdsEuauonE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751547594; c=relaxed/simple;
	bh=G7apXehe2MJFCV0eeezzGmeHfy74eMrnoY7prHGuCw8=;
	h=To:Subject:From:Message-Id:Date; b=g0AuTvVUhi+7DrYjIgwgVy4VfFPJMqm9jDrjKcPPrCmCzIK6Uhad9SYgAJ991VnTlxCCElC6htKUTAdKss+ccdk1wMMIK4KDS87l9Il/GO0/hvRU8fscm7RtWCxi0pUeHz3lecbG/evdGDA/ZTuni2uXOYzdPT04Pu8twAS8xaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjWjYiKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjWjYiKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751547593;
	bh=G7apXehe2MJFCV0eeezzGmeHfy74eMrnoY7prHGuCw8=;
	h=To:Subject:From:Date:From;
	b=OjWjYiKlu2Y3+TJ/zBkuzNYo7xjg9n6BVjDfx7Y9hVHjPB2Pcp0xI7UV8c+T1wau3
	 CM9MBFeKe2RBBrlX9TJfe3xGKMg4qAFHQrq90JjuCJb+ZIh+MaQaw1jpU4EKFXOQL4
	 EFoWAfb70hDk3+nIFt//SoSRBtaHx/NbydAp0TuxugNl0ElXfirtdynJuEiSZqZPn8
	 mNcUH4gw5gUxn0X0ng6ePHX5OzEMQU1jeRFjz1WGp42OpnFogo5zmQdGpNJEFBpacW
	 aj+ruyYOPJZWNSkK5qYMB53LkQ2vPIgmD4x2VVd/9/W4CQHkOFqeNYYpNZpjmRHA0g
	 ceACJfnYsFQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61EC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154759357.25202.12057406836080723514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068f15b0ef75f8196d377882f49cb458a33edddc73b2a07892c39ee332b99ed1
Date: Thu, 03 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751547593
