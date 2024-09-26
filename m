Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FC8188733
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727387154; cv=none; b=SNvT3OYATUrfqt1NA4eMFsy+RpAL824GsuCF9W/RQmJJb8rqMczLPEGyapEYNq+ucbSILLCJFKIrpf5CyWLX1sAN/9fDupEKCUW05HU8ThWfN7ZPiri5pRCmAIY7v5p2k03O757X6PSqkZ1wki17dgSEZ/Hxb1cTEBP3x1jpD9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727387154; c=relaxed/simple;
	bh=9Pv50p5XNf2r14EycvTT4qxAQ2v/+bPoRsby5m6Yvcc=;
	h=To:Subject:From:Message-Id:Date; b=PY1yxnqvPgJG8M76zyYAN3tvMR3LwgVsQA+CzLMhJ/qZkT9+lryAxYu/hoNxPvFlGnePsSCi6WUs/KA5Z7ejuaOZlY/AxkE3O1SvXZTES9g1jckM296WvBu/QBFDHY6YncimIv/Xqr7ZxysY7L4zfygAJ2Pgm/6/BD061qz+oFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3fZkmua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3fZkmua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FEC4CEC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727387153;
	bh=9Pv50p5XNf2r14EycvTT4qxAQ2v/+bPoRsby5m6Yvcc=;
	h=To:Subject:From:Date:From;
	b=H3fZkmuaDit9j0rxittwZ+ak70tRe72V6bXyx66jTsVM5DV3yhdVBRFu/8r1Z0u35
	 Hy9bROoYvvWXKgZxCDkr5LchMK5UtUzMEH68IMoOW0M3HYPZ4ndFuSs3/uRxNwq1nB
	 W0ATc6XMYBD45LSJjJItj9Wlb02NgZa/nmThygf0M7kkVKJh8c4OaZVaWqJdrt+gw6
	 Qwi0geEobQNADtVzN/BHLrVZKYcwt71/m6FHKb79gwltlXrIRNjYehaerqQUWnqIF5
	 fhuFYN4Xu181+ozsUv8W1VN+goCv5gspGHBJIC+ZUyN/x03WghhPphcaV4XM25pmvy
	 /Ppd8d918T2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DEFCDE03B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738715360.8928.16342430853363608589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0042e6793c7729dd2cd3329f302e6e1ee7979df22766831020c38efe76134e2
Date: Thu, 26 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727387153
