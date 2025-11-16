Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319247494
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763262654; cv=none; b=ZEbjLWlcrGAZShN1ztTKcE9bTwu3eOt0EbNeRrfcV0tNG+QFOPOOI1VkC6pFwZyLoR4n0P1shsVu5C5ecBA/kqSjA8xIqTENwjoSbXmugZU5TdhpAM+5KIN0CpcE3LoExBtLXDVNKUUOS5oGYPzFBAhqw5U0ny+2qjOGkblCfD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763262654; c=relaxed/simple;
	bh=nofTeckO/CMTPcnbQg81d579IU/Dxyj83BZ12WhDvPc=;
	h=To:Subject:From:Message-Id:Date; b=iz0bUT97bo3xpNyiDrESj5pWS9WOH97987yFp6Xq563S0/GeayMOnR4k6AXysD1Q1HaBmU0W1RdWliVx8auBSjB9x5bblu+1CIaDyLp0M6JPBiMsIvQIIX72lNnuUlTCR2iOVxLogf06g7CSoBiRh/Vfs4FH/SIONBG2xD9H91M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXcldrbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXcldrbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763262653;
	bh=nofTeckO/CMTPcnbQg81d579IU/Dxyj83BZ12WhDvPc=;
	h=To:Subject:From:Date:From;
	b=AXcldrbmniVb5RO7peS81ph27/D6VdVue3OINEht5VcGU3r0vfHcGEYA5R/pTqt15
	 flZHMp3i9GPSLbrIRf1QMFHGRmgdom1c9zDqGlvuUCEY6K4Vxx0aE2xuAYhneOO44L
	 RJsPPsdQKfM3+nBrcgv7Xo4+lmMSJb8n/GdE7iUZHCt3Z7GbtQXsvrOIX73zRFu/YL
	 guQvLsSN4b0xOfzFXDOLtRh4YD0PL1CpRLV+Ii2bCE7mJQC3jog2QRYKTX7bxr+TfB
	 x8t39n0B4OcBofhO6Dj98GRvukPKISOL6NM4HLek+YnBiFBMUz73fD2c41Q1iN93Wl
	 +moyVa0ssSPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F06CEBF92
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326265358.25054.14589522885221232538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7db20f55bbee3d6501ce5be220d3586a5aebcc21d994c8d32202762f800a164
Date: Sun, 16 Nov 2025 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763262653
