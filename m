Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AD231A545
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766845434; cv=none; b=UwS8txNTAkKXCXDwAaqoB4wI+c9P1EeOQhurEc8Vwftd3fQC0+DWpln2MyKfNXr/E2Bo590B7MPgysdNOAHgpoR545jp5nYeSNaAvcKR0dMhQgU67z2c5VA4RC1iMg1s7BbC1nZM3utspv+0YNQTUS9sNofrlN9NfV83LJAWGpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766845434; c=relaxed/simple;
	bh=DUO+wTP98S/GT3RC11fc7I1/jidJzZPNjhwe2bsdJqA=;
	h=To:Subject:From:Message-Id:Date; b=fql91SxjO+OPjgVh2JEI4uTx/sEFnFCTRYYNaGFnM24Vmastfbv78nu6m8VH0U9GZ/Ujbt/NddPSByeP/7wyYoCeLB5S3aZ7ojiEyGQI7X7xKQe9pZNIbj26TbfZTS1DZAPq19hmJDQhm05S26mMdRq69P8peRn7js0muemyQyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG6+0k7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG6+0k7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7380C116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766845433;
	bh=DUO+wTP98S/GT3RC11fc7I1/jidJzZPNjhwe2bsdJqA=;
	h=To:Subject:From:Date:From;
	b=fG6+0k7ppGfTEqX/055KIe+EuytVuyy0AlPeEXrzSGW1hZo1k/Vs1jBx/O+sxaT1B
	 TRCx0uMi5KGNfP5tRbJso25omJoldzLHBwEUXn56PcCpeaPB1/hDxOiV2bAcsO5QuF
	 JVUpgOKK4pAjSaj0WCDTaV8yslFGiZYyUBjHq7pZMAgG7MjF6/8+urgzrvoEhxyPV+
	 EgBZlqAH6nZgm/ZQeVTjXTgHlvpI9Yd8YNooJCzOh8W2aOlmFXOsHOhg02RtrS5clm
	 XysObeas8QtKXdhJbQXNlTFKc0QiK09dllol5Xo3uQ5juZPUoRy5cxfjHt9AJ6+snf
	 foyhwLW51E0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213EE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684543358.11688.11366273695668467004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f09df3ff77a7fe3a765c02bc60a55db45a3974f24c1aace483fab89882b6a8
Date: Sat, 27 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766845433
