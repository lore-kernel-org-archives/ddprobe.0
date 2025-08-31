Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A6E19C54B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756684194; cv=none; b=pJ0EwrxTiAQYyPfx4jk7Ljq6I5XYL6OdDMq/M9S14HSvvuyrUpVeREcefLuyhhKt7pWKWD9fsqA/5NARz1EkbxQHpg4p2LOYWiT9lhDr/C3un0Upq3XhBr+Z/+53LdE7TejF1fqwmyLSq23iCQXDRkAwiLkyUaCw39aCKmZHeeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756684194; c=relaxed/simple;
	bh=FWngQsMsweZ9UW6sY4+zBrDtpIqt+eGq972E/X7ERE0=;
	h=To:Subject:From:Message-Id:Date; b=uFm2ANGShMHl5lhiCNu3iWRwnilF3MF3suT62fqYKcNbJ4v+pkNeJJov7Nbip2ANp5b3uePvkA5UT8r6aXB9jdgZ+DrhrHcdl04Htcr8EKJBWER+9flu6CrWmYVAdiF6bm83gqRUHwrzlWjhR8yBtfrXQ01860h6jJN6au7Uw0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLGQ2e4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLGQ2e4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE333C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756684193;
	bh=FWngQsMsweZ9UW6sY4+zBrDtpIqt+eGq972E/X7ERE0=;
	h=To:Subject:From:Date:From;
	b=JLGQ2e4bOzIQ/NYxUH+vbhhdymMM/4BKSMWieLBDlqNM88N8dq+FMt4uJV5pu+k/q
	 jYTKssUevyrFEyQlcz0TOh4ZqIn6Cv54Ki+FA0btYTwh0aACChme/XbjAyDv32kCU0
	 6PsYH22Tz89v9PsCmopArcQol79UUTH//z9kb7MDCIC1VkMx2ZvBda/tEiSZ2nSffx
	 OfIa4u0FxjvTuF6Gg85JfF/26sgzm+xntZvFI1WljQfQXHJIYBy42nKMKlWnLMFQZk
	 61tv3BYtsvbc9cLqZcmg3mWlZB9iPtznp5brFiEzFObMqfCiuns6sKDd0Fs27BqNOQ
	 eaxm87JmJ6S7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A531CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668419357.25429.17630787859194038381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dfa9c44f015e54d531681017543dfa1daf0738621e5e273b8180e5850e2623
Date: Sun, 31 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756684193
