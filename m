Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B330224FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777000654; cv=none; b=sJ2WoA8YL0cW9CiV5nfIpwmtfGTAnP8yEtcFz3DcVDOIUCTnvJ8cztlm9RzTlQ7J3jM4apq82WIaGgDfWcMGkuwBeGb/QbLwJLu50Ca4GBgTqARmV9ewWsgKWqORWrprMuofvwbUm4vpkigruCzSZ+RPdbk4zeYnPcOdOi4X5/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777000654; c=relaxed/simple;
	bh=mAa5ynz3/XXW1x+BkZ5vRMdn/FBOUO2p2ihIH4qRNOA=;
	h=To:Subject:From:Message-Id:Date; b=R02KzPI6XeS+P4oIcm6uKA+FO1laOxmIegp1Lu+4g/8D14AgaM7FZVDMJ+MmBrqy8XQpXUYoK+NkE2qV9vfCuJF38r17f6dnLIl8vDDcDzp6XlRg6Y3owOXuFZrX8easeQLxfdTzF71VnagfB+7W7ECqVYvzM6WM4yacH7muBo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK2Xjt4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK2Xjt4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE315C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777000653;
	bh=mAa5ynz3/XXW1x+BkZ5vRMdn/FBOUO2p2ihIH4qRNOA=;
	h=To:Subject:From:Date:From;
	b=BK2Xjt4+X9JlwGLpTDS9JTncn6LFYC1M3leHyWqx0mRODdFuOnMLQsE9/8V3PRHog
	 b5gFOs/EMybRgR4UAR8PqasadyzeuHf58NoHCInFNh5+lUqQYza++zJUGsP1NfdHOu
	 kFPeWvKOLn0Dj7JiOhv4Ana5uErk8KM4LDAnt8mwmJ6+40aT/8AVG8fQKfr9PfKpKA
	 LdhwqPlX4CIC/oovjQS/7qfb+kkH1dYYQkML4I3Vc/ST1SALQolx4WG28JFt5GVgV7
	 P9ntgc1wLzT8WaBcasiSoudBP4Qeb49TAcCpkJxaGQ477/kZ15kcgrM0g22e4MJxCM
	 CQbXBoK4c+SdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D8F34C45
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700065368.10066.8114428695684666483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c696c8e00e7d59ee87ca929192c3044d435caa7ece273004e7e9c3cd77157ef1
Date: Fri, 24 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777000653
