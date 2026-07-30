Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268E34A795
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785411034; cv=none; b=iwYT5ix/Fjmo+1YdOUb4X2+lKDSy6STr+cXlep4RvzgZShSYYGI3e/dKCK2wgYFx+r+qQwL4isoyvHQkoLilV6771LiHhoVUxs658/ILePOFjaiFYD5jSF2lTBNwtq+NrHZFT/s339fhRUEttwHAg/KotB5PxZrViGdoIk68lWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785411034; c=relaxed/simple;
	bh=8DF7JHG7r0WFbeROH+qni616muXGtJZIbao/Mga8+dY=;
	h=To:Subject:From:Message-Id:Date; b=tPajCqlHxch3zJwrLzJXIfJyTEs0ZNtdcnsQIFPp+oZt16hbZAbas04+waqh0xK5YfQsndVNbEmceKIJb29+Qsn6sbLQVrehn88y8c3QeK9951dzJHB18M9LVWngSuq5N4Xb/6cGFzYW/VidiLXQbe+JLcemZNcmx1js32v8a6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrfTYKpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrfTYKpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CEC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785411033;
	bh=8DF7JHG7r0WFbeROH+qni616muXGtJZIbao/Mga8+dY=;
	h=To:Subject:From:Date:From;
	b=QrfTYKpcwEFhE/mKuloaI2pqFceiqkN5yY9Xuy/1/Yx48M1xbSWc3SYEz8FghH2IB
	 6f8mDXZveo8FpoStnmp5skRLFnN8HIyEtsTe/uuoxJfmwhB1MnRlDRTizaE9w/35v4
	 o+asoWRcT4Vto0FcLHCQJ8QgNMLw6mQnaXTf3dEuj94LICuIVHqMbTDr24Uf2hE0ed
	 bVCYTqehzzOIjQtBZJFUp3eMcQlK8/AWHxLjFT0tfmazBN0M7WLQoPG4Lu3Iz+soHq
	 FdjjFD98JXDFPuabfDFFg/KSpROHIW2NFSiD/dysWhdf4TVyo5oJxtRdz7HRWKKK0J
	 IyqNwwoPLNV+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CEC55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541103370.25657.11648367636048358992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f29dc0ecf894ef5ceca9f0fce23bd45cc9604788033b22b61f951ead272db5a
Date: Thu, 30 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785411033
