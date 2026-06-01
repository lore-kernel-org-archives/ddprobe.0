Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E636DA03
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780342474; cv=none; b=uK5OeghGAUiVjNB3hk5l4XR9slcwti1Mq0kBxfBSY8obOgzFrMXzUeC1DxGGyeGPHdYjhWYVB8hGjio7smVUM074+uaBuUoGtnw3egve/p0mTQ13EOQfB4jAwmkU6fc8lZ3flg+5z63OD6HAl6KE9zk0N+aoJS3DruEtP09XDhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780342474; c=relaxed/simple;
	bh=uvOmROEl8VDExtzMHBgaehu9gYgGFgU6djbYCX1oYpA=;
	h=To:Subject:From:Message-Id:Date; b=T4OTU8+1y6QZ97QlMFi0njyyIWuTUDOFYDQFGYY52LvD47TrEnc7tvia+H753z1HXQeWkcA4cr7YzltHKiwnZ/t2K75ShBYSdIlF9jt/SrHNXg+GE/5Yzt+D0x+GM28tP1vmCXq81lvtu2FaBFmT9bKg76AGLpIH0VkOzvD9IEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfV7bNeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfV7bNeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62ABC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780342473;
	bh=uvOmROEl8VDExtzMHBgaehu9gYgGFgU6djbYCX1oYpA=;
	h=To:Subject:From:Date:From;
	b=AfV7bNeXgvjwpWyxmITsdVAAlMO0eu/MoYoMY0gNv5csx6+wRFq37W1H0x+5nTwy/
	 /REqs/hER2A6w+Xb30r9iIlDPJyy+QSDTZM+q+MER4Q/bhT2ENCVTsb2QliMvOxDu3
	 2iOebTaprpDQeSykjWHW9a1jjjJVX8Y6VcIxEA+R/5TOgXbCQ9XRlVOnCmYN1lEGGJ
	 pgNQpiL/STrFXbZ+fVqGcX/A3arBDoFvNGTvjyPFEqBCWj7nbHMuSdr9tWdZK/TqjU
	 ApmB7bG72FqSAwbxVQ8M2+FycRWdmakkNmj5bu+AtfyCgWk5Aty2oiORunHdJ72Bv7
	 EZGAc85fSy/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D9CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034247369.28029.5404427288545208249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5979cc793233649d590ed2a4dd7fd7dd49d0fe19a7924d099a0e134f1aea127
Date: Mon, 01 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780342473
