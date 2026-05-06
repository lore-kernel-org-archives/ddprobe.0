Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2474963B3
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778086654; cv=none; b=eV/JMWSD5lJK7btamX0IM4sKpXWKLN+RumXxKhaymgqfrnDOh6qbidX1TTB1quii24StYElDe6rL1/8qj5FMe5T+7LJ/NGuKrPECjsm78UZxROWUz1s5TSi7DTuzi7XsqilwFR/JGOOv2GBggY85Df0+qBEmvKc9GXN/8cCTeAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778086654; c=relaxed/simple;
	bh=h6MZQteOV8WekJ6/f9CXOFtoYKg2aHP1xC/oN6K2l1I=;
	h=To:Subject:From:Message-Id:Date; b=jkzFFl+JwhYtvqjUXhC1ryz9DkH4tqHYPUVLvM0iUTpdFKhq3lQYEhxgsIkPvWQaeuyHdCCilvDib05M3RGAR8tVbiGtw2sy/hNXqkRb7qG0YV2vL6PdYpFUaTmAyRu0Bkbmh1HcEDyX5uF0ZWsbLKHpvQejdAPoxDX7YAS5+Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7CfCP6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7CfCP6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5847C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778086653;
	bh=h6MZQteOV8WekJ6/f9CXOFtoYKg2aHP1xC/oN6K2l1I=;
	h=To:Subject:From:Date:From;
	b=e7CfCP6ErcBcTkwfzzGGZD5CvaipsUa+On3sX8ROPY5Qt3uGPpC5ccLWLL3iexMWH
	 rPJpNIg35sadicvLIXD19bEMZQvEHMM3uCtainY73fOu9slSTvzzVGoVYBhX8tAvW6
	 aTx/BpvcivBhQxqbWDtFR3iZs3TIoXYtaaBH1zQtCrioqY7eJWjOTXfEyyrV5z0NlS
	 s2YboJKrRlZSRXOkkFVOZCIrmJp03Y7EHsaMEB6qE+z52p0kHwNUDriUyAeT+LRbZL
	 +Atr2tLuaXuKdQFNQ4kayQlh6z4DC5MaevsL/LRmXnyewgd70aY5Ga8CD4f41/dm+T
	 7vseAkCT/Lttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2584CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808665369.22881.15182651026974054087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fe86afd560e5dd9a6a477e69493f3192899b74aefefacbbee53891d7c69158
Date: Wed, 06 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778086653
