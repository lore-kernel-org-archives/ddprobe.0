Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6713C79CD
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715478143; cv=none; b=SOEvWPultp37aHEAB02ry5utdVOzxghm9pHFSQgl/ibObTi+KaEvLhMd7K2XVltzm92H4L7UdrSix2vkfsBlpBWC6SA7i/c11xqh8Ew3mSMqtkuvZXvt6U2Aw24QQ6ap0gEVeUaiSNGa3ZXfMCKrGLFBKepwWEhi7c7/7jTgeF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715478143; c=relaxed/simple;
	bh=q8ATeXrepyEalx+xCcpAOLdcyrcPNPBd00XTbKs+tks=;
	h=To:Subject:From:Message-Id:Date; b=WyIWV72QdLcn8eOAAPRpUes5suDA/pCVhiwgYVcnhSPEUyfMXDCeE1SHIIDGSe4b3HzXg9ZcbRC34OoAOd4LMJxqKKhmHK5OKA/7BG9xQRaIeG9NIuVolIJd0qMWnNgBJPkJEusS6iKc/nvs8bFyI06SXpA8IXfTAOH99TSr3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8kAdQmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8kAdQmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC106C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715478143;
	bh=q8ATeXrepyEalx+xCcpAOLdcyrcPNPBd00XTbKs+tks=;
	h=To:Subject:From:Date:From;
	b=e8kAdQmRYPBASUKOc241zFT1wqI+s5D39sga+p/7jbvJXO8Or5ryLWJXhEww782rj
	 E8AInLR32BFrH80Vc72U07IBXDQ83RKPJqUSnsKUlLjwKXHMW9Vkhh10Ly8NjWb/g7
	 TGvlEWQ48zHpLsSIlckoBIrvbyXR0nQkZqtbCgemGAw1QsJ3U93s4q2vWPt91Q2Snr
	 sxwDR6xUZEKNAEJFtXEBJb4p5RS27Bk6xCAWn2pmwiByJ8UI5v/YaMaKgWTSlx8SLB
	 f8zy6Jfk2ct7AMFAvdhbqyA+MUInxwxTWsjMUdrZC7uebjKM0C43VBlqXS5Cu72+X/
	 +DOp3xMortKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8228C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547814278.2649.13519905891840215968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68414bd8032fc42d71942df252b5dc72d83d7b23a83748e4ef2bf4074683c5e
Date: Sun, 12 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715478142
