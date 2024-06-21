Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A8D11CA0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718978543; cv=none; b=AOVCGGWuK6kZKMU1WDwOA0DFdtyEmZx4ThaMDB07NKeqNMGsvFKG6X/e2LaMQMbsqYhTwC7qgn80mWv7ysvOVgjGWRa9mFuyJkZHpZU2jcnKduaxy0p2FU/GiIo5aB6fKpTniYlt4yt4/XAH2PoAWAFwLDuj7PSqBUnhwBd2NuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718978543; c=relaxed/simple;
	bh=XItZTuRlWoxJv5x6625pwV6DxxFkjXOSOLlEjHpcZO4=;
	h=To:Subject:From:Message-Id:Date; b=KWGgVtwMd2psVAYuf1BLIRisOjh/fHb+7Y3jXTN5HXGGuUU+/nVJkq+U20F+62T6y96+Ek4q6iCkzUCNE2oFDk4JBbFJH7ReCYqcF3DklQQFdWN4xem22ZUJYzQRBQMAwp2ut0nSB5wWyCZI2Ajot7r0KyBnFpVYZ8pxXYVCnS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYDGr2jF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYDGr2jF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8027C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718978542;
	bh=XItZTuRlWoxJv5x6625pwV6DxxFkjXOSOLlEjHpcZO4=;
	h=To:Subject:From:Date:From;
	b=KYDGr2jF2uiYj1CkV3Lt+0/QtlHcCbuKjV1/WbJQcjZAsPIxLS6RT000BIOsI6Snt
	 FOUOWFo2rCJ2zdgK//i/JR1wxCo/Oem3uDpyplVtdDNvA+554hT5jhEujNXeTTMp3x
	 ITUXffl2TCTEE0eHRSjqCEQnHMHE4OzSzghOVDQKFrFBX8xA3lkiM/UtvXkUxb3FZY
	 +yJNaPEe7nB86ebN2pYYvHQl1hlExUjHOxV8KWoNeGA5cBBYpyXCk+9sisXvhxRAGA
	 lDYfDxOWmNnwOoB6zgv/QuXy/rCLiSFG4Os0zHgH83VwhVQMShX2uxpi6V+cI8GJ6d
	 3TzWDtqawq+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A90C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897854279.27648.1636526497309033486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e35250ffaadda4ef077cb69c83c9b40c1819f93df0dd4f8925d21ea740071fe
Date: Fri, 21 Jun 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718978542
