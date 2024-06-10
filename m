Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485CF139578
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718046503; cv=none; b=rK1HZo+WOy1OfTyzPTfN4M7ShkBKShDOf4yip2BIKwKfsJNsk8w5yn6ZcTuFfJjG6A35rJHc4+/ES/Xc9R8FOKRHc665/IJ8gL8mQ4lsLagcNY7KbXLAfiVNGltuTtpCbsT9ZpbTg50Pg1x6OgiZJYAIQox8lf1gEpRnHQ1Enb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718046503; c=relaxed/simple;
	bh=jBrvyyZqXorhQKCLOfN9W2KuHuwT/rXzFRXfAmUpSx4=;
	h=To:Subject:From:Message-Id:Date; b=EflSj1MBpDfCRKixyIiN7lwQ9Hk8YwiA63dEsYWBbDcBTNBzGn36gaNVO/S8XNIi8NhdOUgLOGBhcDiKQ61Hgy3Jh5PAzwEKpyVYQDnswr6FjipF79FBb+sDMu9C8kDpmd0ONEFkODciTegT4/usmGdxKTN6UNLBvVgbIY7RxHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJZei3AE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJZei3AE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D422CC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718046502;
	bh=jBrvyyZqXorhQKCLOfN9W2KuHuwT/rXzFRXfAmUpSx4=;
	h=To:Subject:From:Date:From;
	b=rJZei3AEp70MHO2OnCzA/LckHt0GyfG3loBxAd2McmVHD3D7Wjt0vr7NS9FTUTkEI
	 8QXBUKuyHwNFgCgXlt9J1hksMS3VUU25uMGDhSQQI2vBtk0cvD4nkS8RYpm4Ymrc5Q
	 s+My6eRKI3LQekNWXtlcL1o5DeRy5BezN8eU7YVehjckqdjsDPV+Sg79c9YqsOd6ZE
	 eKxVpJ2fpgZ01htiZvcVlnkzayDpEWeonWVlMey2yuRx8pZ/L6T2mQoU/JVEjrpdnl
	 ntE+UTj/WrFun32IZLRhTdVeXg7itPQKqAywwTxesVTruvSdn2je0gpGzw7z1faG72
	 jDn9eOnldc8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF84CC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804650277.16038.1734714514127506427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f495a53199ed48dab3206e0c01c5001af7ae883471b2ea03b49573ae2865ce
Date: Mon, 10 Jun 2024 19:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718046502
