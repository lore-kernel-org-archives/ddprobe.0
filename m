Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA8C3009F2
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776371854; cv=none; b=unT0/YAa4Om8Phi/aNkQ8aZYhOnid3CeFPkar+TcNtx5rzo6lMFwfDWDgfb6rv2xXPyDlt1dDYMksNmTwz0kXBPVoF3X7FYtwPwo+DLQwbwhmzoMJfkYWuRQx/DFyRg3WpWyeUgTtB+UdKJR+1yrIl3w72RJGwRV37NuHOGBf40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776371854; c=relaxed/simple;
	bh=PjpM/ltdVtP261q1XjaJbgYbsTf72oMbFIBCRjW0k1U=;
	h=To:Subject:From:Message-Id:Date; b=a0qAlXkA5D8M8YvNPYGOn5KZ5sRdYrfnPfhQmh6lxLd9ohE8F16qpsv3zhH148dJ6s9yGMZ3lS++kPJbrLP+46dX36xiQeXNgIVbWxlsmznvYnCKjNMrpLunrxRdrLMifxREpTVf5UlqaJHFtMQTKwtdRR2H3uK2ZNRTLWO/OV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJig0Ma/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJig0Ma/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6300C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776371853;
	bh=PjpM/ltdVtP261q1XjaJbgYbsTf72oMbFIBCRjW0k1U=;
	h=To:Subject:From:Date:From;
	b=LJig0Ma/Gq4gDReZLq4AvAQnJmetVPSwV4DxC4r7C2mIdTRBI010BiITYkNGqzJhB
	 s4/P75B+mTZ5BUSKsh2IT/5AbdPETenLkl3i85JQB5TejWsTRBDUm4c/LF5gYV5CDp
	 a7p2GMg3cX2l32m7vUBjoP6/3DMntrGlG2b6tOkhhbei3dCyHchVwYDadbcfG+rrIV
	 tTn6gvg5qxGD0HUDVf2OR0+hrc49epT+0QTa3eorx0Ni0LP0EGqDCOuJV3ijv1lAOm
	 Ck+d5kUDLnXXpjeZh21SRPpIcAy3RAVUgqpVzABuNyiMF6b4LG319GAlu/D+ddIc8l
	 TAojXd1LXVnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B16F8D779
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637185369.6696.16164491557953161155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0d5455b78c3e7ceb1d878d50db439fa5d7991df04edcb3d451fdd054d26c76
Date: Thu, 16 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776371853
