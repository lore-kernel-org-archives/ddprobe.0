Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256A4287506
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756414194; cv=none; b=mPsBG7yZ/HaW22KQxXFlavNpM3JTDesDjUr2C2qlHA+1lxIGmupSyj6TL7S254oEm9ZborD33r5ZLhzLpMZhBmRmRHbgsPwCd8HhnuisfkFDWqYwKNjYUp4ZwNyPVJkYfvOU04I9PAbQs39w5Gsz0mtYSvqNnU1KaKpUkdvCK6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756414194; c=relaxed/simple;
	bh=sWUPMOv3LBNN8rStaShtHRExH2A2lWsTlfaTQOnZ/80=;
	h=To:Subject:From:Message-Id:Date; b=PHJCDy/Rn9P1I4TWEYIfqMEJoIosFM5fqE5pLKHMzZVYbZD32SQc6e3zA9QivhxbziqqZxga495SugfJh2Tz3pNogSDZvBTmK0/c/3+mOXgaEsSHGabqlG2dL7U1csmrxEUIiFgCsdpM9ZjO4s8m+gwLOaKX/F0JSulL+NKIvEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nnf4g8ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nnf4g8ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2DEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756414193;
	bh=sWUPMOv3LBNN8rStaShtHRExH2A2lWsTlfaTQOnZ/80=;
	h=To:Subject:From:Date:From;
	b=Nnf4g8utOb1KYXwJKyMJHxvDx3B56iVbQFRxCcLPmU3B0eH2oVxT9sXCXaB8+7tLd
	 /nTaXD/x4nf7vXkOnNk93K8DcXzk6VDHvqeOAKL5ZWlInKw2uGSQPeC3FXJgaPVRH2
	 imqUxVQxZIRAiPzbOnaGm55ndpuubG358Vl0ioAcexKZO23AQCl0zU3OM0qJ+VtINN
	 F3JvtwEUnWXwT40jbI4mqfAVBKYrGqnzkTpNTL+J+Xu5jn5h2FPkUQmIDjR+UMz9H6
	 cZbGC8WuPZoFw5Z/D+N/GSyOkI5IQl3vMyiMqPUC4f/F+6NSn6108+baGIF6XYZyAe
	 ZdjZqMFPAGnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19ECA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641419357.19449.9786214591029477541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e392da5706741a493563711cad49db8b5e97097108b3ed4f7568c61d56ad0f47
Date: Thu, 28 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756414193
