Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5F318DF89
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744471795; cv=none; b=rE7usoo6leZDONYDvPC3mPwCTxMNdIew56qvghkyB/keoD1j9DiHczgiwQOsf3h8XPb+1+Ut+sxX9nnsevkY5NMI8lX8ncVc6Aj2eSt4HAkEguXWcwz80Ajc3F1LqAWDr1lJyPf49sR5NeK2Z0lhEbcHmFtZmLyiOgicNn0FJ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744471795; c=relaxed/simple;
	bh=MraieP/+G9Eyxqebc1wsODv1QtZu2foEg3MiK9z7h+w=;
	h=To:Subject:From:Message-Id:Date; b=bqaPepRipHL5EWpwEpqjGuBbnXTMkivuChjplxjRvMZBCgUqyrUZHqQ60wUjBgDVMDtRg/53Hs2DRGNOpqOGkyWHyeFrXx8tgKg3vNPXQUuMC2iLgEUJl66K8ziUDHVl5Lm+dQzbhj4Qkl6bk7ZSU8sBjbWvtdAizHIePEgb/aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwyDznqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwyDznqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC75DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744471793;
	bh=MraieP/+G9Eyxqebc1wsODv1QtZu2foEg3MiK9z7h+w=;
	h=To:Subject:From:Date:From;
	b=MwyDznqV2u0fGRe1zeAecOHZNQ+DQMlQTXS3bf4EzHvL1FC4//6WWXeSmf5u6Kt++
	 G54iTzTn2H9mn5rcCqpWEGp3b3gUHc+OKjMYXolj3fPah43pAZd1F0MvVIOQg/zrTw
	 J7tWhQ9P+HpyDgcWTGoR18fM7dcNmzH0FvR45l36/Y+ehkHSJDTL4j/uNVSBWm71+B
	 hUUC2PE3FUdI/put4t2tMQ2l8sCkvZ7kz0znPK34q0UveXTj00l92i8fhGWbvlLQGJ
	 s1ktm8t9Lq5UeMbcM4AwhhhEb+Fy1SxKgsV4hlQiAnzx7TjGuZd+l5zRjl9jeuFS52
	 Nbt0GVGP1qTtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1643C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447179359.18212.12832806063836942611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6302000a86c9a68ee7ca4d75ac98ffa9f3cd5e1c0bd733da6240083e4ad52f3
Date: Sat, 12 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744471793
