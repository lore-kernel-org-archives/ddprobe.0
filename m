Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6568533DF
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717915043; cv=none; b=MZQ5Kx89E3Uc27rBzie/zxpslxQBdVmpXnOgnGmKciJfpwuHlQ40kJdFxvXwGyEcLEqqA6yX2Yy2sX1dAeehU4TxpbV/f6Nvhr10a/57UOmqKfzJZSZ6mqoipZ/RM72oZ2XOMp4QncZtjIFMzeS3ZKMRaP8rrHcTxR2JwHKK2so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717915043; c=relaxed/simple;
	bh=HNGUY/47WMDb5AtKcWR27yRiAfdqifK1Wa7LMn+ppjc=;
	h=To:Subject:From:Message-Id:Date; b=hDI3RaePeNUMv1ryBCjtGySUQwGd+T8VbITwgknIz7akbqgAo/R186L+SCQDzAB2bf8cA8L6eRGLlEM51blxiN6KALLMAYvDFpq6RvzCZFWHl2FJSU0BuDi84DvaNYu2eEVyNclJnET0X98GJpQklzGV/ReHBY4IkrIBt38nq98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdJyYpRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdJyYpRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D986CC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717915042;
	bh=HNGUY/47WMDb5AtKcWR27yRiAfdqifK1Wa7LMn+ppjc=;
	h=To:Subject:From:Date:From;
	b=qdJyYpRYgZY7Xk+ObcacPeK3mQ5eLQpeRr2TX5mfePsw/I3RcxJlcPu9eVpKfMjZH
	 /q4nc8N8mkfG4ne0ALbWlJkzO8AHtlqia1miAvZWrDDzz4GrDpDWIfUb7DS71Lq1Oe
	 glKOnn1hPqvp2j3sc5BRygLJi+0OdfNLK8U97mVddZjk5KOvPthewy4mV4n8R9yW4Z
	 erlJFrzpp+n9Ky82HTDrTJFeQdjoz0HCss/svI7H3UA209El7RofwA4aYS0bO1rp79
	 uaPYwBsfQ31rXPJWNHOigx+NeMQeJW5XuMyAmbQ7lHcNBEZFkJVi0YL19prJOXz0rP
	 FLoLSQpNinRbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B0CC27C5E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791504276.24406.4355413938060531220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6dfd1c693d8d325b7b1ead30893e2eb939a456fa39bc402a6a6cb6ae6883112
Date: Sun, 09 Jun 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717915042
