Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA923CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754488194; cv=none; b=uvwsOxVr+Fn9TaLRvXY5yv5dx0zUIXG7Zsgz9cuAlVZbzbBzfTUDXAzvEYF6t2PjyP4aXDjU6D4LJ50vY6Qu2revLseA+TBkr4xmr2L4V0cBKwcqAJSsMqDQUYUiy4Pdu7kZpbf7jzR8efdvDNOX8aRQmUyHGmXnJlx6puqTabU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754488194; c=relaxed/simple;
	bh=hXB5uolHZv7WT29f0ibBIfAOB2m1C6oqKf+gvxRZzfQ=;
	h=To:Subject:From:Message-Id:Date; b=gN2mXe53r72RFwm72Q/pBgGuzYRvzyZ8X0zCf7W+56/fgz4wLgctCvhtnGAvaSOG45GSGb2tjkhxawMocMMDVvXAFEHf6Ke1+OKIKXmG7Qga7tSvIrQxNDI+rESXYQFRKriSJOfh48ThkC2JbAVN0NjoBXvVK7ymX/j7oqnFWS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqZYEgVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqZYEgVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754488193;
	bh=hXB5uolHZv7WT29f0ibBIfAOB2m1C6oqKf+gvxRZzfQ=;
	h=To:Subject:From:Date:From;
	b=CqZYEgVj2hWsxOcGhTqAQEfSZPkOuGGlMFGPxO09ctwqBnSulSkruugLSRw9bQQ2i
	 O7uoxylvWJ1O3Nqg7+zHxPigdCl+hMddk24nSix+GG9dMqjLw+0/gMWwVUUKFsMohT
	 FVjgQRq4HEOuRQF8vpuyuBsCxVLY7VnwIci9etyCLg2BUjWppLTGha4bLrfU1vMoSu
	 XiC3PSbzhGDh/GogDRxCj0XMsSkGEwHbeJuu5jJYiJixsRcOYWZrXnljAqvpFy0M/Z
	 zHVJ+RxULyBTOtMY2E5WxjOZGKxi4x2toFZfFEi8F1Y6yj/nJiiyS5V5n5tK+ZnzHR
	 1kBTbN1+jH0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90176C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448819358.2058.12170224324578488965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7109e1ad0818793c5973eaf712f9752c3d53d8b18eddd8811e02cfe1b9ee3dbc
Date: Wed, 06 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754488193
