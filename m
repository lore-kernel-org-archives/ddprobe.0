Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF2017A302
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745073594; cv=none; b=ULelEe2IeZoypfnudILmh3KAX940CmulGS1mifUcJ0MjWcWhpvMAzhBm1bIm7EzljmiczL2iSYprtXY9P2VSBvwlHhm9TMkc+ZD89MEUs/kMUp7WOhVxpRukB0bijb9rj6aP2zCjio3VOPBVXoJyVv/Jyi7w9lD+EOjOJ38Q1x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745073594; c=relaxed/simple;
	bh=q3JcPWRb3l/XK3yQoW+UKdesxXBOcG6aBuv9tpq9jFc=;
	h=To:Subject:From:Message-Id:Date; b=i34z0Rnh2TBYosOgGvwCZujv/z9pB/h9x8Be4gTNjG+6oZD2M+5UbNOsaIxqpp18Dhx6/aPMpFuJ+r72I8H6gpm/FfJ6qtDfQVO5+Qm/fOGEJ01czkdv8UbpZc4EM0m6x7nf3WYfggnMXmw3FHfkOJSlUolxpzDohVXtPylYJFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieM23vkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieM23vkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04DCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745073593;
	bh=q3JcPWRb3l/XK3yQoW+UKdesxXBOcG6aBuv9tpq9jFc=;
	h=To:Subject:From:Date:From;
	b=ieM23vkYbLeeHSvss1RnuPssU/AOHkaVS9XcaPsf+ZZnR56Abn2wEfljHBlmNq6dq
	 zbs6haxEWOkrw6ZnWE0Q7R+CDWzhVTgxPqIbNuAQwDCqz86AwG8uPQ/5QzsTsXSRDT
	 iOL93LTKU0Lfghy7tIEZ5mjRXMTmwRAdr576DMFJJSID9jK5VlRQXWJ9k6cDIY/dHu
	 wlkNAmr4byaYnXG8OxviBi6RFiKO3VdH4GT+ULy13a+isJ/Wpusb/yf68ezUT4h1ON
	 oSL0njLAICwvgPbqWyHhbv4fD6haS5TQbLnHVh4yNOrmIiDsPbb11ZGTu9r6Qi8D9a
	 QjBOJ1aLG+OVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95C8C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507359368.11170.15208840085875157215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90f2cda00675dc07e0e1fe3e409921136e52c3a627d18213ad3d24a9a176ad7
Date: Sat, 19 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745073593
