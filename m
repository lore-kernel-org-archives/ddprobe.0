Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A14231CA8
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728828354; cv=none; b=K0fvodvkhw/5o/pzcLdvZKo2odOz62/iG4KtY7tnyIHIaQv/GRK4Y+KvjiCdlKpSfQYuhSBcE3nq/FO25yxb3Zjc04JmhN4+PmPvsKJGLU6XlxiUM2ZFs3t2hR0DVirG8DBmd+v0f0TMJCiIrozKHGYpnjhvh93n8zPCNzPWtJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728828354; c=relaxed/simple;
	bh=maC/9vvgPpP72Es7uodMmmY7QDBRhgXDL2/0BdbysOo=;
	h=To:Subject:From:Message-Id:Date; b=eLD4o7gcqop1Mrgxw0E6UQfZMd0LDbD6EkhZzlWViYq+tvrKedsZKzrocSqcaCUet7tVyanRdc35WL2WelPvG1FSyrLanI8N5YPo+/cn3ID7p2tUywielPbPM2SHxZg9t8lt3G54iTyog0FaFk2eJrAfs9aIEtl7eVyOLKafzwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Acr0bzY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Acr0bzY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5958C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728828353;
	bh=maC/9vvgPpP72Es7uodMmmY7QDBRhgXDL2/0BdbysOo=;
	h=To:Subject:From:Date:From;
	b=Acr0bzY6mWUvV6zFG731dO21sMwK6ghm3vur5N56MsB04mZSTPinBHz3k/6MIcP85
	 KKX9bioY+F6ExOM0GctEkPYScyfyCpaSGRieRQC9jfkO/BjtbZagBAwCJszLQJO6dH
	 T/JUBXaTHA5VPUIaH7MtWek7Ezc+Bv7yhiHFjFVLw46iUTKs7fQyYAEpTvPq/wfpmB
	 A0X/DWynPzBuNqIajseQ3MfBmxOCOrEwahasuv/g3ESm3ssDalEpNgXLQJ5mNun+xo
	 is/6JiPGQvcEgFFbEbstuxMU5QHpNTWbHXfmMsp+s+IVDDirCqT/OqumGlJtMxKwCs
	 Fxf2C2eS9joAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5F5CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882835361.3640.10271979617850951442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0959c2c5fa3634424a26f2b724093fcd534262a62a970a2e4208984041f9ec5c
Date: Sun, 13 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728828353
