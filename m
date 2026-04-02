Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476E333B6F9
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775154334; cv=none; b=BcoVUyKd1s0MGya+lptx6RSMtgxk9dYv49rWMl3ExPB2QO/g7S22onfwLiGFqoABwrkrQMjjXJaf4AbRZf9BF3IGVCxZnwK0VQHAO2jVASDJ4gvl5OnuuezeYrAIlZTy7wO/XCFXm4ArfN5dje0YVdubbg4kImDquouLuCTi3cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775154334; c=relaxed/simple;
	bh=9if9LaLF/kY4PCoVJgrpTHnSYfu/gTvOCHFkkNWa2Qg=;
	h=To:Subject:From:Message-Id:Date; b=O6YN4Pq/yFy+KCfwBu3uEVJ4q6t7AyXE/lmX5wRLxqUDX5vj6RhwKuOmh4S/MrM3Q+XLAFv6exvyBGsUhCjbMZp6xY+8jBBJv/2GEtgVDItmUeC2PoVpAjZaty81z4DXdVgpKemTunaTw5okFbEX4J8A2K7W5ppIm8/J4Ci/PeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B66bNklZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B66bNklZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C659CC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775154333;
	bh=9if9LaLF/kY4PCoVJgrpTHnSYfu/gTvOCHFkkNWa2Qg=;
	h=To:Subject:From:Date:From;
	b=B66bNklZ7El+my1ORnSlK8tvC/cArl1n3yNfQsMcsfrUoVGVq07BRPi567qAcVniZ
	 fWdKfUgaCSCz7CwqGPReTWj8njZZpnFpMbxROQgij7dn3TwmFhCrFNkbE1MTvSSPCu
	 7tBx13nwzQFlN3Jcw32EeOlMZ/lNU0+d4h0qMVx8IUT3oifeWz93sqOsvz5UhxRVyb
	 68xqAvf+G/Y7gnZrAxt9wa+7E5yrRjdIi3f+Z/MTsy1iSON70vYprn34EtoqcS6XFn
	 BGdlFOz+P2aIDOJdRarTPLr6eapCOcTT2vmnsznNZxWCf50Dp65A0Bo/9rJd/rAdtD
	 6JpI0JxL7u+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3596D6AAF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515433371.10414.9507208060252722927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c030f99edffe653113bf750e54f6a14b0486c9458952f56ad59954b731499888
Date: Thu, 02 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775154333
