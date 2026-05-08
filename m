Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD332A1B2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778204854; cv=none; b=ELIbwdW2ceYP7enh6PpymJaYBoQbz8JQHXcj8lapfkZFyDMiSZq6io+ayPWTLlI6qHCMey3wYO2I4LfSg1gZsrqOmv2RI/lQQBQLbiz9VDEYBLLMzv9GS0clj8tWAJQHNOLHAHaITzhRx57xC9VOouO7KASprc6TRlLU8cm4Rqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778204854; c=relaxed/simple;
	bh=Q/qXC2cy4N/kU7poRSQZEK74xSX4Lnk1+kcAKcXdZhw=;
	h=To:Subject:From:Message-Id:Date; b=IBWArlVXjx4bf+tcewxl7ZUgjY54t5hT00cubhKBpWBfL+b1F4pbryo+u0cI3MS9aYUovUJ8Z+Ogq5keAaBYs+oWE0AL9peppqONNt3pG9BTEgwThwofDYcFRuI9Am5itlruIgzKhI66uH1yzPUSyGnguMvIKafbVLEFA9O0Suw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4i8IUQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4i8IUQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7976C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778204853;
	bh=Q/qXC2cy4N/kU7poRSQZEK74xSX4Lnk1+kcAKcXdZhw=;
	h=To:Subject:From:Date:From;
	b=r4i8IUQUc9l5hT0DJLQweM3odeVZAButMT4VR+GXuK9aMdP3yj8jEkOL1TsWFBqRR
	 1W1yMvAMblZ3v0w2nKm/WX+ABh2mbfLK1Op9dAF6H8TP6Ec0kzupKn13Bk+pJYEqAB
	 FAF0k2RSLXMpGEiOavql17rrbiH0tIhisF/xF91mOKYh21h4p1+Pp42KYDPFnxMC24
	 T2/kVg6UHswgm/Tz/SkRwZqAjxBdx2Gr95vRrQibErBzZ33+9upuvGXJE9mipmN+QU
	 h/xxM/C4uHew/SBB+ctEeNeTwuFtOaPCWmZ0q9UP2TRCL/vnlYV9nFqbfAeNtVEcFe
	 tyFW7vIT6+7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F5DCD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820485368.22709.7716948752206810830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6401876126718bc8e28a591805294d3a818f0ac9197f0d9eb8238f4cbae57086
Date: Fri, 08 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778204853
