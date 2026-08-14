Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED2846A614
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786708234; cv=none; b=K/NOtakYQCnsB5Vo0P9yPlL0N9piLDDKLLONT3+2GAZF136mBuKFSATeCru2tU10zFGGT7L9I8ngCFO5eO6llxjws95DL3L0HV6e6VRuCmndgdFRrTx3lGVvfvtg58wZfiulGNkfkSPeev2Hvtk0Q/vs8oiT1s15e8MAXTeFjLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786708234; c=relaxed/simple;
	bh=V6e3bswKa9D93WCwRLhrtZyz60R+zxyY6Km70Th1Td4=;
	h=To:Subject:From:Message-Id:Date; b=B09sAQWn3k+eWRnKrKguFRLOtIWvAabVxA57TlbAuYd9y2gRFUu5mD6BEjgwYLdKsbPSLWPmKFqsej9kk4XNgg+fBSCYbFKtwh5JVMqyEEBrYjrNuGk0B8akQ+UEM49b7T7wjIXLiq27itdwzbz0pdIrxgfr+rM5GEIbZvd5Pg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS5JQel3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS5JQel3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB44AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786708233;
	bh=V6e3bswKa9D93WCwRLhrtZyz60R+zxyY6Km70Th1Td4=;
	h=To:Subject:From:Date:From;
	b=LS5JQel324JlYsmJ1oXOX11Ykter7I01JwGnNVevd+z2ACNRdhNPZsz9qeTBS8pYG
	 XsY7hwnh//6O2otbJj+XzBG+NIX9GBkFAvwhfyhMqQDk7nnOGkJNFPED6k6ZpV84fg
	 NHpChTHnRY4q2RBmrnJPS26SKig/sj+LgiP0aaD6PMTO3r2bCBJlcOM+QVTTAbrTCr
	 ADESqACKFllWHUm2bCiDm0sdN51PKiql7fzLCmgtq9LxlQmqYzWInCcrmn++2Xq8Dj
	 6ACICzvwDEweCd4iEY8vEBjQWu2l0HNTgHtWw3YzsRmR23ju6YhfrcnvkG2n3fRZjk
	 thzhVab63x0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A69C5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670823368.10194.6170081966250034911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38413845b2683c20379b45b7a1983bc398b9c82fb45f1b90d9ac5b96be66522
Date: Fri, 14 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786708233
