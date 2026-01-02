Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10188230BCC
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767365634; cv=none; b=N7uhSQeyJ60H5UHXjWVPSrqmmsJScnBoHfCAImnJ5HEly1ADYd48azB+VtW2wA1UiTk7dsAzf5dIzb1FAJyXXhH/Cds2oyBvZLYUDpkKAx3zim9uw9aK/sm5bN4V7KIy8HZQUBgl8i4Gc2Ypmo/WOhVND4Ws4ogIPLwCfBDvF2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767365634; c=relaxed/simple;
	bh=542a3+TfO0WbUVHGUxpb6tQz7KDv/7YH7yFLIqWIyMc=;
	h=To:Subject:From:Message-Id:Date; b=dRQYkyPultVLk0/G/pZaP03um5PIR0swEkE+UaJUuJJdqtpXP5Cem7tlMsaU8r6A1+I5bQ4TOZkjflzKYwLZZ+Hsrs0FDmOdA2ht8JYfO0+KrZviu16Pr/Znj72iyqprmklxrzQ9DV0nBBk+9YKHbNP4e/9QDzneZCZlB2L/M4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evWJfbmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evWJfbmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2811C19421
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365633;
	bh=542a3+TfO0WbUVHGUxpb6tQz7KDv/7YH7yFLIqWIyMc=;
	h=To:Subject:From:Date:From;
	b=evWJfbmnq4tT0W/YBAuXS9LW60lntVCVivGs50iXMSmtDAxsY7dpxTxUwGNbvQGAl
	 xR/nlzbL7mHxZqenrBtzSUm4laB9mgim+nD9N+YsTYc/ppqvAubVjeFO/mZu19HeL2
	 PS7EtkMm/7qgo18F6LzMp8QNwBMomFmMv726OOyg6A2ZodZ1Urdgo9HhAdpYpk18eF
	 4vh64QeltQ+vQPBjctvYRbCf/U7yfvBFGcCefs1YjE8IEwMjQXEQ9VWvaKdpf7+G3u
	 3ypIdcWqdMTAQgElrV1UIf8nsxPevRRn4Tn8SxMEG7Dk609bWoWq4qrReoV9d/5YCx
	 SJclJX0n8V3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944DAFA374F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736563359.31831.17493058104354858193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670f57fb3138f4b0ae6ede1905db3cd9fe0d19b3119157d70b51947197b33d12
Date: Fri, 02 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767365633
