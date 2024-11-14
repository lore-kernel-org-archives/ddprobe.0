Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216781F12F3
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731562554; cv=none; b=btGP9uweWOe2hxe1PsRpWDikRrZh9BMUdLVxEkBOFBPu/RhFBHISHYiG67/18mXOmHcrnlOiszwZgyoxaXERrLfzVQsUPPY4sFVGwgBhIiOdhAOr7pv/BHuS/a4mlzXVKsLv/Zcg9nRT/V6qYM06V+ci8Kot1u7ea3WBjQ0tNnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731562554; c=relaxed/simple;
	bh=vvs/Q7IaqJBdQfKfv34UFe5dQ5Ug7AcDuARM73cmETc=;
	h=To:Subject:From:Message-Id:Date; b=eY4L3hxI4Y2B+BTd7QMKB5ZQ+bMPQW5kfbAn0/aLD4lv36aAiIc5V6mNubjBRt4h+fQNKmA0JO0p2GYfSL1MvbZ/dxvVhe4eNGn27UBsebxBJbBMMc/bXAAlgD41Q4IDzng4o9CsaZ/d0KvSnQOwi+/lLLz2aa6qelPrZm7tWyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMlBCfvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMlBCfvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA968C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731562553;
	bh=vvs/Q7IaqJBdQfKfv34UFe5dQ5Ug7AcDuARM73cmETc=;
	h=To:Subject:From:Date:From;
	b=PMlBCfvT9xBZ2E19yRVMr860H1JC68FX4u+i9PuIX1qxiVujqsDQKQpx/Xhs5c6OT
	 CrCkwddt6Zib3cXNTR98WF0Az403gYZVVPY1oAPIJJVM+fa+HAznhVhMuM07ISrNEZ
	 cTHBVZAQRf2FlMfxl4sWN7cHtjbmmtJiODPw1TBkF8vucHrZ3LKc7pvnTBaYs3Wdld
	 P94Mk3umGNRPptfpTmTlzcAhwptFCWc9g4wGyQIUl+mMDNn7Cn8ns+xZDAaPdHhprR
	 AoUWDOfYfDuNBejpGnLQ3dqU6+J/aDO59DIPi6nFTEpgpfqiAAukoRKXNrPQsHPzi4
	 j73OO9untAXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CFAD41C3A
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173156255361.25279.5415663843417322558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a636295552643bc9d639b92de636b2a319b726ea505e33f9f1f0d86945132d14
Date: Thu, 14 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731562553
