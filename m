Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCDBE6F
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726240554; cv=none; b=ca3iFtGm1m0XNNfzy3P25NTZViWvq9HglceawTiM1+qvXkRDiZAwPTUbgu5V3iN6GIX2of+yqmjIdVHQ1U46UoMV4cFfAu5bd50mHyPUVoVu/Tyx1TkrDC9kb7KT/8UWh10kTPOR+Vc7lzuVbOervLGJR15nLeIsqRmanXNdGG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726240554; c=relaxed/simple;
	bh=Dk8+TI+EGdfLs2cXerT78qMFjSmOWedz2UWoUT3ua5c=;
	h=To:Subject:From:Message-Id:Date; b=WiTD24Po0pHrBuTOy8BZvKI671T/X0MJzo1THWrCsRsL3URlz9coZzifu6jlZGHIkBRl6HNrAufwOKim7E5M5qzPIVzaQ0QfaGTvobw8vw+rHLAwEgVEah16DGwgY9iICKemIXhhjaL2jjSGM9VqA1dqI0doxaIS2Kwg1IgARn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awWVu8G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awWVu8G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7882C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726240553;
	bh=Dk8+TI+EGdfLs2cXerT78qMFjSmOWedz2UWoUT3ua5c=;
	h=To:Subject:From:Date:From;
	b=awWVu8G1ilAGRwErVVRdWUm80vq0GjiZn9ZdXwG3nR7yB9kyBUAiibvyUaeZ2unHz
	 qt7zpV+TkTnf2UlHu4/TNR7BHzbiyMuKGPTQei3zXR9GGUy3KI8EcWNTug/hnJRQUM
	 PTmNg7zuZ6nyve3RV1aEu6phIsigLb6AvNjgDX6CWNGHvXz/tInpBXGMwCI/tLKv2g
	 O37pBuhExibTUcQaDP/yCOsc2iL0cqAZGQ3siF1j5f/hA7+YxQZjtRlujwx30B1WWo
	 oYrZfRTjFMsNs8ODNi8mKabYI0O3apnpNZptv1FnIjywON1Sp+3kqXz4qERLFVqRrd
	 6CVhOJaw25D7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324FFA3755
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624055359.23231.14595572191369605444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ae5d41ac01bd1c3e1d4c467ebf2b1a68260891f4780cf3ca5c01a3b0255bd1
Date: Fri, 13 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726240553
