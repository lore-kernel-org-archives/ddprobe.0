Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225FA37B40E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282834; cv=none; b=r0v3NOXclXMnKeJ42FcDz7nFFyOiyFVkrAEnLxkyEwpNw3rqq6TY5t9WqSoClwtVQhpKzkvo1dCPzHvMvVi7fE/Wj4uf5zEtKX+lXWNZs2077FJp/13WTjKNarZBwoS49awS+8KiXW+uR4F/E/cjowDgZEjwUhzBu5TA31wWhcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282834; c=relaxed/simple;
	bh=DBVupZLdYBr0TLahwRtedHBaKxtAkMbPSKicCVB2xno=;
	h=To:Subject:From:Message-Id:Date; b=n6PstTLSCdDOt40nrx13p9zXBvwwyHOcfFbotb9wQ9rrM9OAYtOFOJl4YGvG13rzmuDCPEcwTDr2xFLRdNfMdwtKnoRw6PsyOhzrOM3oQDDKfxDdHN11B2OGUBKU0DkzWsCJD56rxL39hMU2gvkY46Ikxe8ZJvq25tgIqyseqzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGWE1r0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGWE1r0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA734C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770282833;
	bh=DBVupZLdYBr0TLahwRtedHBaKxtAkMbPSKicCVB2xno=;
	h=To:Subject:From:Date:From;
	b=BGWE1r0K8k6ihYlqgJQcajlbCXeY3kX0XbMl9b5frRjq/p3FU9U8QfDmcEqFAMqIU
	 Wswvmzn4RUr94VAKpp1WTKF7VqfEqYb6xcMHUjDHrsdrdSYRiptoiKyzIXae3gsegz
	 zqIEiYvfTbSsKg1zkRef2ooz/rLyOtq3bwuvMnNRu1Hhy2tmKkXbAGmnngkIjfHMok
	 5ktz5x9reeBOVM+JAGbo8hmW88VRH3PKJ/5KBST3W5wwuxLh0wd2iWy9y+EVXquTcA
	 EtZSzcz4872xY4IuiTfYirI8OdOP3NiwqAeLpJee7USrLAhjAt/s3MVZMd4f+0xWs0
	 rYhISvrrPu+yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F040E91297
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028283363.17740.4984973711893139637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27118f477c03a75d6bc289a4924e67b0a849940fcdde071645347acb39529cb3
Date: Thu, 05 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770282833
