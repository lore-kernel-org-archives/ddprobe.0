Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AB32C302
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777563454; cv=none; b=sboa+b8zCWw9l0ntAQysencULzpYECt/moaAFrKBzNB4j7TnHxpXjsc27YiuGow2BAaOQvLAP3ZfLP+ndhA/ZhnQSMBvR2wrKfe0g4oKqrlZjvYmBv5P5LxF5gFgbEai7cfR1P/0EGum22gpxE+RiCXF7c9GOD2lpI2946OGYRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777563454; c=relaxed/simple;
	bh=wV/24AM9Sb8chDkOGr2Gue9eV3bZRi+/6Kl4nABABPI=;
	h=To:Subject:From:Message-Id:Date; b=joVbnQgwNcg4cUOtv+SVzovtynwVoBXbsDlkzxqCCt/XYKXx9pygTZ3hr/ux18Z/3yfLoXdyFW0vnDjnaQ9y2Z2+FQyYbLOxjwKK6qvEIeRiM8n5m9B6/i47c5pgftlXZlYApZuDiQ8IMjYCwQYoeDfQiXzLs6H20RuW1EKioBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2d9tNEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2d9tNEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A5EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777563453;
	bh=wV/24AM9Sb8chDkOGr2Gue9eV3bZRi+/6Kl4nABABPI=;
	h=To:Subject:From:Date:From;
	b=T2d9tNEXbbDh9BZwCTDmvm152EVzRVBVNrtv3sSB7TUBnvKxcCH+xKLEwRB9R4EPt
	 h086bM1vTNmbBq0UV58BKYJO0jv2CWO+Q1SyOwHV6A38jJfhntOEZHMRkppqE3F25m
	 idn/2pZBKxi+JqvckXf4m6Lztkf5XNZ1duzeZqPK8jyEFSGPpEZIhYSGox87Y+ncmX
	 94VJ2bUVevKjbl124mIDTCAwO9miAD0IaDHtpfbHMqbeUgV3KjU3PIIhECBnwD+wdZ
	 +gOe+VduajvbVlpMpVqXVGP/6CMwO/33g4waXE9Gcd/8JLcPGqaCwabrzFoVOUhNZR
	 G5lpcasngWGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67FCD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756345369.7398.6935487176065076103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ed002aa2a31d3ca6200b68045a2110e6d2db4fa7ebc094e37dd0d5661729dd
Date: Thu, 30 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777563453
