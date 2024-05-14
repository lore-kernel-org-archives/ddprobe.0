Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27966320F
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715688143; cv=none; b=HRk+zWdAPSYIgqilfhRwaiAXmE65TZeZWaYUZj+Zt+CQMI7BFM1T2ka/yLnFubdxC/WFTmDSLAyXEj1dkcKKWYU9xpm9gKT10NjV3TAFjpCmxQDqpxkGhj7ch0VseHXzeMo6+iAKSKn8rYx80+3woNhpSe3IvP21wVpUPwNvGFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715688143; c=relaxed/simple;
	bh=TU3lHiNASoAOg5W+ZL2b/SQABj+Aja4GkUnou8jdTJg=;
	h=To:Subject:From:Message-Id:Date; b=LUSQOJaTyarRU79KJz/vRGh2A//Z+NkLL6Cx1ZY9VIb4hdKWyKdqJDK2bL7puQyAdLG+X+B4rBtoE5dhuSKlbnRDcfWnG0YQfWNt7X3bA1Ed21TPIBiOegooaRZT1Aso7TkA83p5MkfWdkAI2hpZoLIAB3YvERiU51Fa9Z6atg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkZVD9up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkZVD9up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE86EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715688142;
	bh=TU3lHiNASoAOg5W+ZL2b/SQABj+Aja4GkUnou8jdTJg=;
	h=To:Subject:From:Date:From;
	b=dkZVD9up+m0IlFGjHFKztK6A2Hwcod8AaAe1kXZjWaazMiepu6nSS7ZMVglB8ALvD
	 2fQTjF71mEdpnDVSsOBWse2O0dfHbNNS/RiQrzONMHUTafFOPm7epu2NL5SAvNxS3u
	 MdN0gmMNDpC3/c5pKj4RfxNB74ESoyTrXVTv6+MWCoth10IX82G30RSA1UJ35LjI7S
	 ziKjzY9tGwuwySXLeVieRAURD4ndW0C+elzWYeFYk40Uy2Vrqi5l5gw/z6WcgeEY9M
	 t+6MJcm+dH/s8bEJItMoH/rITHFUDpZYMAZeLSbjnRb4DH4GmwHJCxjYvg+BA3+OUQ
	 EAcUHOAcJiBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1119C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568814277.16075.7065239080941296045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508a9ef26177fabe7b60e636a78ac462b4f4f1939daf7e217a0f285f9b12bcfa
Date: Tue, 14 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715688142
