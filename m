Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412392E736F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782806314; cv=none; b=DQL3urm3YFYI3ZqMr7xpmQTx1xZWPJ12OEbioJGIimRah/V3bwf/WWZpJsoRP4lCGvO8ug3p/AAyUENg2mXvPi+BYeSXARUsu/cHwMjjXTJbHpvSfV+qXtgej4gXc9gvIZ0d6dA6yPzOH/7LoZE+Ydec3wqRJ8Do75oggLsPkMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782806314; c=relaxed/simple;
	bh=WVmuAU/GgGMHpOixPSLRsrfxnm4YoNg5UwhemwwTn2E=;
	h=To:Subject:From:Message-Id:Date; b=UK0ysimeNthOGsenbavfpOgm6aEu6KK5DYwICaW1tnqEAyW82olP0ZPbKetJ/Se+z82ZQd+tCo3db0kTc7GMl1myPOyQxkwx40P8O2tFukuTjvG2vBwxvUT/WJAmS9mYf/SzVDySQ4+fLgLH7mVrKf38rbwDnS9hpFkVo8kl2G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMmktLA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMmktLA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C086BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782806313;
	bh=WVmuAU/GgGMHpOixPSLRsrfxnm4YoNg5UwhemwwTn2E=;
	h=To:Subject:From:Date:From;
	b=UMmktLA4gKI1q8GH8T/I9SgGZAcbNSUv8AkDabPkTrLPy+b+mUjzFhPurGq5NDldS
	 Mce54MEx3cCwvQ9p+efI/8WvAkNahhTwATreeymWiuxllXTcApCgKDPJAI8RqZB/IR
	 BfDhIGwiCVkaYvPLj45FVLl7yXGYArV7hxduqlIkeSmyr6oTMgq9FSjmzpuOBD7VaO
	 OHJTu0BRFd5OmeB4A6TBvtoPRBOxDwtM6moA1eBoJbMS8BxkvBNxNiU8t3c3onE7DA
	 F5mDRHYsxmEZ/nRY2kRJTFAjYDURTIsF2VhSyU/Pi4tmBlrU7L8HVEuuKdK3M1WBzU
	 Sv7A9lEKLXP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA314C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280631368.4674.10935305836494197369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce1e9c6fb6d38a0e7bfb401a79e97f579d5c58b8c06a568f6785cbdb0ec55ac
Date: Tue, 30 Jun 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782806313
