Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435D075809
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772413494; cv=none; b=uoXBIXFEb5RIlus7GaQ6UavJETGT17ri3Qb3kpVUGAV3seAqce+7kToeL4rY8ok/oWXw6QmmPhClw/PJapDLBIxyC0YEeBtmlIl2AUWbmQ2yyO6anIw8mjX2TLvXDUmbkeD1gLY/xAOL0wyKqD5l7s+NSfrjH/n75DtOm7/eMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772413494; c=relaxed/simple;
	bh=Hh2izEln30eWy46lXw4RSMv1VxKNgPBhY+YKywR+dXc=;
	h=To:Subject:From:Message-Id:Date; b=S/+94axmVHTRx8u3S6rA3fjIRX06WMyFdvP4Z3perXFH/FMnk0hWf5KR5R3IMbmyhi02wu/qYBYnHSMznnqmnZO0cZVkOKa9Kjh3vGBFvM/biZhy126AF+CCXkhmuWcOhzg6FX/mm+sy+Vbo2cSwrYu85WMxLvW0ownpt2Ra71o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apKP4tBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apKP4tBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA353C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772413493;
	bh=Hh2izEln30eWy46lXw4RSMv1VxKNgPBhY+YKywR+dXc=;
	h=To:Subject:From:Date:From;
	b=apKP4tBQQ7mC9BXCeCp/CGQjrp7YGDdLKW/A4vhpM1m2QurEYJqmHinrInjgh1EIb
	 goz/KO2e5KHK6ABYtUln0XKsXmqmX3RzxGSLDVcXdJ6t26+f8ZAzAG10T9DEw1tvvG
	 nItv3uH0y4XpLqlomR/mEmwXAgLW1cEQrVezqS97bVRK8TWUJ4dUUbvYCOqJI5WT46
	 k6JP0dyBF3nhpYvhnVZPGDtCnWUKfMyuhRTvLX7gbdU3h2og2ppk+QE5j+YPT4zDEf
	 wIHro5H11yPx96CeybqWcOTkRj+e91l6JnienfjQHNIud36rh3ftWM5QhtWsHGLXOG
	 2zovwiZ/unwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4AD58E46
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241349365.19147.18082488260503841754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3ec7656ed711725ced9fce7144afac40d2d009720937d1231783cb68731a4e
Date: Mon, 02 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772413493
