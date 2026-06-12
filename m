Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C616390219
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781262394; cv=none; b=JAa5ZGn2hTREABzOE3+kicDMACCSdQI/x5NK8x5XBpa+VSSHSc2+Rq9uAW60Df8FUn3xuJtNNXrG4B652eQ11ClGm3tHuF/ysVaB39IipZ5MLvD0j0xKybqmx0y+cQJwYGeKnom06Ej343UI7Z08+aQ04UQR8x0kFgTAQej0cH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781262394; c=relaxed/simple;
	bh=WDR2Ed70iIN4d5+Oo5sO4V6OCF0pHN2Mp4c5kJLK++M=;
	h=To:Subject:From:Message-Id:Date; b=j0e2LPuuMTjgHEH3bj9faycBYB0FjpinEFQiusGa2zZg1hwC50aQL641+PHu9I2WGPKHp+UbScTJrnb5uQDkbUZpgwr1tw6Ye5F5hVqrVtdLuDEl5PrV6kLSK694WuJlc1T8IyvyioRL0GpGiZJvmLb83tg7gfJ55ViH9etzI4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuFAcL4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuFAcL4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBE6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781262393;
	bh=WDR2Ed70iIN4d5+Oo5sO4V6OCF0pHN2Mp4c5kJLK++M=;
	h=To:Subject:From:Date:From;
	b=HuFAcL4cn+MVkdZgDv14EzyPhgbtkMHiW5U2ql0tOVfPJHSvKLjphrxDCOQ41vUnm
	 tj/d+/JWa3VLPRtZIWkqB7CjVQJFLxq4pvKHYG1TroXk/P+v76zTWRaWtdqKjrXxK9
	 k+aBp6A4Ffjaek0nWeRrQOME1Q3XwKfwF60PHQCYxtlAE3UqE6hzAt8YcenRBQmEv4
	 J7p/5rEJJNAubccdV+q/SMl31GfU9EIMapmf6oe6F41huwkMdaxXbIUnmlAXmQGg5z
	 6jAoOALtvhStoQrYY57LIhWcyngFtahsFrZ0PFfeGt7bkGm5ysOq2NC1jkPapiYwEJ
	 IliT2MWc0MAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D91CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126239368.11000.2233748750358266213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a127e6d41888b782f1495f74908c317814ae2afff2a2de140421030d47ee19
Date: Fri, 12 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781262393
