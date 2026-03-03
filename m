Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7193C6A5E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772535894; cv=none; b=JTRvOh/Sb4y6CSfy40fCrQD3AXZ30+0hiTYBOgzmxLE+/jQQpHL3L45dcTdN117MOuzREkOexjao+2/qTmR5XTK4cPSjspZaKjXsXXc/+DAi1vVAh4K8TPqtKB/fR5XxsyFdAeop76k/WfMWnKt4yVWdd+fyUKKQzwneOLZfAp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772535894; c=relaxed/simple;
	bh=5f9StVsUba6UCr44lEKUwZGJ1WXRJLDTUxyPO0sCnHQ=;
	h=To:Subject:From:Message-Id:Date; b=Wk/lettS3my6/VhkMhRwseQxC+TrIoctAoV6N7fVATR8k/xz7E4UdxZVB0S9o700mZm7sEVNPwdjZsk8KcReoBIe9hQNgBimAi+YDjDpgvZqckZ7HJ8Fr7yBY7r6Dh/+AVysO9ZBtNIuCgfLtDHlJxRdjo70K6DZ91Q+EBnRJ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx/T1R4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx/T1R4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B994BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772535893;
	bh=5f9StVsUba6UCr44lEKUwZGJ1WXRJLDTUxyPO0sCnHQ=;
	h=To:Subject:From:Date:From;
	b=Bx/T1R4KPPfK2njFnvbQ/jL9tnbrVn4a6TB7qzd5sH5JiLRJz24WHnbcFaD39MRTa
	 Et5WVAgtC2TRnNtrk/v44wfNn0Tg8Yj7mn7tB3CbO5ATfOl7ketRypwah18DDJJV1C
	 oIQ8MjZ9kPiFu8pZbCmqz/yjXoddYMvO2PTZ/5+cy2jTS8Y3an/1Gd9GK3fmz5n1yO
	 AYwukvXdd52DQgKO7/98UTntRQPS3lc3sXZr3VCXmeLKrWNEEd/N+p6IOaMt9Qs5Go
	 kCDT8n/3+1RPbef/b0RMnJdMndHanbkf3zmxhtI/z0uSzKaeZbmMkXmZQoMnYQKzHc
	 RZggsOLNf1nWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1572EC142E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253589364.17565.14642803407411613596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc80bbe1d47c60c198f3d44858720bbc319947c34ec28fd443a4b3879c382af
Date: Tue, 03 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772535893
