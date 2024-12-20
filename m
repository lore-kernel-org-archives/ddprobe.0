Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A7421B19F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734714953; cv=none; b=ZW3HgeYIkA8lyKSAM0gkVjxruH6uZTtlpI1DNK7q26l9aZlaRe6nlClXK92mHVlFdvjwoTYta0H+2Yde/VX1ImND5ztOKAhQ1Xzffg6ctvyMCpXjKNqKM2bP9hwlj/RfODU82dNGagZK1vj6PWFOJILkqzFXB9MTkmNdupVKSlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734714953; c=relaxed/simple;
	bh=tZe5X1V/oW6bS8YGBaMBVnDxQyVBf5ZQ3O6TDLqTrmI=;
	h=To:Subject:From:Message-Id:Date; b=eSdC1NGrsF+Lv7/L3P81I17ORqq/xIiookANXrFM/LL7tak3Z/Y2FC36H+DhR7AxuxgvIIVWwKXz5J6tFM8rfa58AZUqZZ5XJhYRQT65e1ZAcGKF+uEAwPR6Hw0wR6r5V0qgImvIWDNV7DTkbLmK/xPDgGpGH7MPgESdzsD2yAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo8DQN2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo8DQN2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CDAC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734714953;
	bh=tZe5X1V/oW6bS8YGBaMBVnDxQyVBf5ZQ3O6TDLqTrmI=;
	h=To:Subject:From:Date:From;
	b=Zo8DQN2goMMSCnstdjMfAyBV5T9G+enEZ32rVh1JCXWF+5uAx9WwrAnv0gVR/7oEt
	 7Jj/E+TgbfkhtqHxQawi7/WULPNENpFYsH9nYls6YkLEzMrg5TMkoAFY/7xlV3Vkfg
	 37+56oX/pwKjsJgZEL0kFo3VOdR2/pDMROtLJTVHPuqIXRudFO6Hg9/ttlUI3FXvny
	 ia9ueQ2OeJlApE+Dnwh1Womk/ROKTHaVe2R5um/1G6L1B81sq26bYWUTiFO7YMPBXh
	 VWUQCUac75UttOCyDm2Rg2agtL13txOnCNqJhK0EwFWmA4nXyQ28xbRnTbwJEFwiN5
	 4awlSGxCeST+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96619E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471495360.15341.5565784504886483363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6082b868d0f84a2c4380e5785c8e83590ebdf91f44553fdf40dc6cdeb5dc80ad
Date: Fri, 20 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734714953
