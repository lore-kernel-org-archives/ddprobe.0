Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40954129A67
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713268763; cv=none; b=E5p0kA0EM5PuWY2Hm7totcxenfE8PjxifyQAF5RjT8wHUGElwLAPHk2LVUUXResZGSv2qWTM6SNs3AniD0Ibvdgza2huhtX4QNzvM3f2KZcFF1ff3/lRjRA6PVPxVEDwp8zsDR1JmUZE2zwYgPenvPHDfi/PqjY45NWvNwYQkO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713268763; c=relaxed/simple;
	bh=eI7/uOEi/gvvwELAQUUZ7JZPdndIdTC+mMk3k8cXVHg=;
	h=To:Subject:From:Message-Id:Date; b=o/jlQpyIlTmJKmFu6xq9k2dgESgLNgF59QfvKhFEzpxUyvnUTjkRUxsAR0EaGINzeBeHg2tyJKGqJMIlBzFX8FKa9S04xgTYCMG25tentpQRguejXpAZqZNdFIReHSTOrfNv3W1ramcyg1txreafpDeRljukmtRANhJiOkBc32s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cubGVhYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cubGVhYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8A2C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713268762;
	bh=eI7/uOEi/gvvwELAQUUZ7JZPdndIdTC+mMk3k8cXVHg=;
	h=To:Subject:From:Date:From;
	b=cubGVhYwQufrMeAna0tGLMwCPNZNCY+6CyPBksSH9Gfuvyt3Ci4vojSNJFzmRG+cv
	 oh727NsbnQYQ1byEY2EH5sXwa7o7UVkUhvvla6TtoyXfhca21REMrFC1CfQf3LATfX
	 G/8/ETo1Zydp5AG2E2CkL2pzVRnBizzeG4Cztk8PcvMAdOM9u/xdWT7aNfrpJJdUEj
	 KNB6hpxgG5viDrfWOErE4vIxmTGZjBtdqqH9U9fJEjxYHasfkOsbBP3pPKN58rYdPz
	 HLs3fM22i2UaudVAv0I+4kbzqPC275KDBNahOtXZ7rtHgTzls0HyZnWknxpjXCTNje
	 Q7pUYrkppUjvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E5AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326876279.21625.6192172293999124905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de5b522961e3203f42bb24407687977cbfe470f660439627e97ad091d345a3f
Date: Tue, 16 Apr 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713268762
