Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFB427B347
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766906634; cv=none; b=VsgvgsOP7YoGkqY07muFBK1dCDu3dC9mK7XGJ3St1HLOYGeWvyqDvCtLztxI9OPpCsCv3GEXnuNKa7tdGvh36Kpe/4OpnfJ/ZNhSDwIfZ9giM2QQf7/strOcLJrv7hpcwe2hk3lc+hCH8kcsb/OMbrJbeZLbcdV4U6O7qRa9+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766906634; c=relaxed/simple;
	bh=pFaXG7dWG1UD96cNOnWvUNbwM3DHXFpob/4NmbXala0=;
	h=To:Subject:From:Message-Id:Date; b=JqV0sqt7K6kl36rT6MmOExdIvW/Z7jlpfI1KszJr73NXINglYG0XwBXn5W2ET+wqR5GMqmvou49bmk+1deDhU2iGHQQt4zJHISJYb5xufF9RhvPUF8laRZAMrb6o2t+b8Zcsp+ssO7RuCRH2wsmZkDHYrQwfcPfbsU4haXDa4lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulzVg8/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulzVg8/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6DBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766906633;
	bh=pFaXG7dWG1UD96cNOnWvUNbwM3DHXFpob/4NmbXala0=;
	h=To:Subject:From:Date:From;
	b=ulzVg8/PyPcBacgBrfmhy01Chf9bgA++yc6j5wGqY4i4F3PG3rszTywXSL4jkmY3f
	 CscBs0P6x/8jWbbiRFmefZBLPdWXij+DiJD0FnHaEMRraIe76tJRs95fLVnmVbjnTS
	 zB5gvgWgOwos1TKl8+TEVdnj2f1DuJc+EBxpvDbvnAIkOdqtMyFFWYyNR1yYPwOnpK
	 oL5XxvQFzenfnpcDag8+Bs85BzGdW6YF9ZT90OKVtp+iNYY5+5+K+QufZRiHVyTFzn
	 b32bhSfO5nCEEvD2PYAecBNEwERFpf08BUGUwo6HOCmmqGadZB5WmN5/w8nav9AB3E
	 YU3TTIGkO/pKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860AE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690663358.29936.8911715027569440221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1808090c67eb13c5e3484a02d6135805aedfab6773e4eb47e5f44f8f652af74e
Date: Sun, 28 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766906633
