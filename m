Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F2042AA6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777198054; cv=none; b=HFfNUJPtecvxtBZ8x0kqt+KOHdu8mi12PIviljOoGnj7Tj5WOVLM2oBLEEfNj4QNCpfTEj2rDsRikWbmQRzBjopfL5stjHcbjPgvTP64epIZXhuJM5lmOcjt+Eet1gFo73in+Jls1JA9+JnzvrATKx9CNQktveij61COXuY8vWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777198054; c=relaxed/simple;
	bh=SRt8X92BI/+IwH/+D3KnUAEk4fSx+fj+yPe1A5iDrBc=;
	h=To:Subject:From:Message-Id:Date; b=syeRQlmi7E0WUv7tu4nYWZsVMoLi+t3CEsaXtIM/fF2hmBEwcLkU6LEToE8Q8zNL87BpqDYsahrdJ9i59hfhbgjElGPCgkcICntYuM6Ry5RDvwbvKvkdGbrGr3SJxUe2VMMuhhcLn/jTzdf9fpnOL2pbKdJJXNFdhjdgirj6Mq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCQnLLZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCQnLLZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20EBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777198053;
	bh=SRt8X92BI/+IwH/+D3KnUAEk4fSx+fj+yPe1A5iDrBc=;
	h=To:Subject:From:Date:From;
	b=RCQnLLZF/1UxVXMgcYHlJalwf00tlcD2PbRvgSHMl4ZdINtiiMiA3enGjP3syS9k7
	 54VvUlRX48B76qq/ml8Si9helldb0ChX29iry4ePLTgmjeJfLCbSGLVzQP5IqRGy3A
	 arljkOsYJsEv7H8EKO8FFJ9mJS75yL/sSxw6EQmC52WDm+MrTYfdk02FT/pGBt3ZCh
	 d4GzNOXGTvZeMQ3+s1nwwzv3oFEwK8NfYmmD0gpLas2Bu0Y4VvCqznnd+MpCA7mpiA
	 82gmB49HfiiokxllIpQwuzRLdwsUrBwuVramiOv2diimYmcMcxGwSJmCDI1ASMGS41
	 +ltm6LAentIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB97FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719805369.2049.6887663963959566628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08cb55dcfed8d06e591efebc4cfb12dc0bd26f3cd89fa56d2cf21c26fd9077a
Date: Sun, 26 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777198053
