Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204311EA65
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760227194; cv=none; b=ESQHjH/xlaVTojJQILS0Z5EUjUNh9ipFm3Y6m4GtTXd+/YplFeYCHYjTRyA3dxdg3s572gH4eJ2C1M0m8GsIlDNcK3kVDO/9ln9dMUfEFYt/S1awbrBHX4Py5dgBxUIW7sp5K7AEqmTrdv/kwoyUIAJFMV+2s+ezNacO3LzQZgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760227194; c=relaxed/simple;
	bh=J58+Mz4VQelU3xXoDiUo/W2PtoVwulWqR2JfdhClMpQ=;
	h=To:Subject:From:Message-Id:Date; b=Q/04Y/oNnwu44t0wPWXRc71urVMYtNb0U9enk1MLN3joZQTiXjyoyhLEt7Gj79jSr0s9Or23AhOymMlEp7KF3TF9/4+K21Wz61HUUfdx0R2oL8MDpl6InrOXGd90ajDKXFSqFSJdzO4yQ7tYs3p8BQ4fwFBCfza32zuJdM3EgNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLeEVRtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLeEVRtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EEC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760227193;
	bh=J58+Mz4VQelU3xXoDiUo/W2PtoVwulWqR2JfdhClMpQ=;
	h=To:Subject:From:Date:From;
	b=kLeEVRtJk+Jip91g7ObNmrx7bs9L/XHmheacwKkFRfzAkrAO6FMWlrhF/qpjYPaDd
	 8tRWFVT+Y/qPOHV41pFNPSM+0HJQspMyJ0Uu6AhXj5qwot14L5GJ+cl9TvRpmzeYf1
	 2ZJoVW4R0IjAx7osf4DPewDdEFy5aOnzo8M96LQ4Gvof84w/2winkw+boGiFGNV8WB
	 qP8WnWUfkNzSLXWQm2CnlypdU2gbyFzCgBwPYJ+dVVGFYerf2Rga9KLZab3C7rR6Yr
	 9fLpsyLSNc6cfS6uA93kuaqkcyVU4ykYf5DKPRoiaJ3pd00Z0XPJuZ8+W7F63bbnDa
	 8kul57fyqQkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91483CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022719357.2198.2497276462595621278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711483e3749f1cb215a438f94db4b25b4d5d7687a67e12f49a8609aeb9d24eb6
Date: Sat, 11 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760227193
