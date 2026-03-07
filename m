Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19152BD587
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772922294; cv=none; b=XXUYOcFcndmLJmR09Gh3DKskzYni3DAN6HwIpeFHKs6fZdy+dyLTuKwLxsOvajBzMWZenYr8WZuLtkmrI+SQbAm3vJl5rbCJuB+0Eadtop5R0rRi08X4qvrUPJ1tTFOK1EkBrwLOTQQFUa6LnDGw2lWuPgrR4YCl565O8BStiUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772922294; c=relaxed/simple;
	bh=BxQMNH9ckioQWuV/vGZiajj42tLME5lp00OFNGtUB2w=;
	h=To:Subject:From:Message-Id:Date; b=dTYATOvoVcwvGv8VYFgbdhLlHXyPonf7bHpu3sDpJqmwyWSNCahDGOPSKlWkGHEp1a+ZmVLhxDSYOlQXw3XX1QhU8+7Lpbh83QcZZm+HORF4/lw06T1d/CJz/jug8km80SIBw2sgi+LgnH4g0g+ssQdnIl6cr3529xdlWGzWsbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbQKeHni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbQKeHni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB3BC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772922293;
	bh=BxQMNH9ckioQWuV/vGZiajj42tLME5lp00OFNGtUB2w=;
	h=To:Subject:From:Date:From;
	b=ZbQKeHniKo7+dOWcI7GStARAJV6jXJYarGyb5qzIEDTC/7BtwvlHsSrM6az40TogD
	 95wq0yWaOUaY707bC7qP3lyP2HQPgXJ44diGH/3reMcSeKR6sA2em1vBZUk0qox56N
	 frsKcMxuF7xz13adLYWT0AKr13Lyj4S6ZR5t/PUjeGq901mTKNNnELD9dfBH9lNtZw
	 HNP+ToFzMcpiV+ADTYgaC7r+POTnV4I2Fo/Mk5ha0G9K8Y/vP6L4MabA64mWjgIDmY
	 YdjUrv+Ca4gBttssIWLpLF+enAff10k+h8AO498rTrJOB2W5p1To9lY1wNAgrpkzyZ
	 SOK6vEqb1y0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D6F55111
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292229357.25958.4528660635238484008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb808fabeff2c7cfb75bd65a4382dfb9488a2a037dee05b479bb7348a67dd84
Date: Sat, 07 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772922293
