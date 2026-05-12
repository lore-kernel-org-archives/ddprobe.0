Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F303D7D99
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778565034; cv=none; b=BDPcC5ln3C+0V3GII3JuyIApuskqLUZpgi6D0McBD1o+1Pi2Gk3bThBzlUTcxMeWBC1wMAZinr2iAAHs1up88a0s2rJ/rBiukhnAxBKPthsPnX+6xK2euFbJCKz1z3Il6Pv8IzNcl9Y03fpiQzv384NCSonmIkBwsp+fSkbH7e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778565034; c=relaxed/simple;
	bh=FL98YqUiIrKBai4BZF5l9+9fGxTpRXZdyjPsuOMxt1o=;
	h=To:Subject:From:Message-Id:Date; b=mfjKdf24DImwuKF/9/TLsvozIHV1Bq1w9QoOOe4UWsmV2mwWReKV0QxqIy/5PPCyuu4L+nb+wuozJwtuZi4XWpovAguQ5jLPMOo3QYRwUaBQTA/KZig8UgpI2aH46sqYdoKu8YRgpv7lp4m5BgtbHtSxrATGSflwW6KOLCPZtKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcwNBprW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcwNBprW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79B3C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778565033;
	bh=FL98YqUiIrKBai4BZF5l9+9fGxTpRXZdyjPsuOMxt1o=;
	h=To:Subject:From:Date:From;
	b=dcwNBprWoJDf7EL7wEfbfEg+Apa4NRoBnPuZ9/MXgPHPotUxVikaGgDv4QuAw5ycc
	 XUyPB9womiWtjgpSf2TC2BeATh2yPb+OuVYkXX51kALzUqny7DchNQCQQNY2l8hbG+
	 FOE71BWas6XWC1qam90zTgjYWMo93a5A318unK0wol5DvjU/VGHgKXAC4WbBk48V6I
	 F3LEF6zyQcFiPyvCo9Jn+NBQugi0j9s0ZBnmYut8m3rBnQSx8Q8+YwaH9VjAaC+WwG
	 JlOsAboutfd33Ro1ICsrqGcxl6R40VL8Y1VvNMcfu0iGcA3fd1OUKWcLcQK4CwGA+M
	 2Ac8XmF+oXeyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA848CD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856503368.31871.18038489639331835143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4c4ae2be6204dbb4fbc6cc141fcc01819bc7239d526b6a2fb7af51882532ec
Date: Tue, 12 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778565033
