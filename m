Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AC720969F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733153754; cv=none; b=dkScgHzD+rf4MZ0JqgrE97C1LlnGsJVOlreV7ZvBExqedohcr+BMaIraJPmeO1q0sbcdbZAypkhJDWI3i3hvoNB37CFpzXoXTjt0+WwA5kaSC6kInuqP2NKSrpFJWuHB6ptZBGI/oFb+2ufDtLP5liyEgJecdzNvnTU0zCShfg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733153754; c=relaxed/simple;
	bh=4Lu00jiuCvKuEvuVTmJOTHeJ5SiPRHLcv22NGVc1Ku0=;
	h=To:Subject:From:Message-Id:Date; b=j49H1oM7yNSELRPiKMhR0Ye5hnoPXvkd3c1S84E+bmGLYN+Z+K4082b8DxPTvXU8zOlCR1m83Is5FpCbJQtTBBkG0dfIkejT5CHEI3lzPsrZ+yi6jOkcfG0lWnWg8toZCx30tbQ6JTZV7QAByfidqnGa8c/GBAM4nY6AGcyEP4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3rLcPl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3rLcPl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21E0C4CED9
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733153753;
	bh=4Lu00jiuCvKuEvuVTmJOTHeJ5SiPRHLcv22NGVc1Ku0=;
	h=To:Subject:From:Date:From;
	b=u3rLcPl4OhM8Y6a6kRciw9SY17DtKUtRbzd4ApHigWicLWyNX+jSa608UWkdYJAPb
	 xa/BsGc3cUcpgknerUZQgkoSdsLhYQcndVHsIuTfN2Wm04oGI1yhs4vGGm/kugYUiz
	 c8RotTzoth7aZ6nIxYtxm8wc4heXO68AFNBaMj14YI61uMDqCnIHEHHRKRw5lyHY2P
	 jRaj0kxO/Ikdpcb5JYw1eceh6Whfm5L8qN8TVqbiPJtGaEVgDRBEK+ZsKpDsM3Uanx
	 SvA/NPHBkhb0+W/laIlGKJ2p7rQGK1wQXZ2zZLxNB/chryeXsXIDrcnfXpkCFCAIFP
	 qoMQnyiYFo8GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF975D7832F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315375364.7938.4574910478469866307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bf592f890f2482615886f614ecda1c5497ad0c9955cdce0359facc5a482208
Date: Mon, 02 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733153753
