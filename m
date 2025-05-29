Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33288220694
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748560194; cv=none; b=WrvqwLxa89oSGZxy3eKAPjctWh0pgIFpq8j1s3Qc25y6biUQlXiWrP3S9YZW6wjuJfF9zOuJ7x1Bj6UofPAmumtEmdvFgRS8uBDo5T7Exda/48dmE4Fcq73wh2HJzbWyFyJrpxv73MnYef5G/2qyACxVAP8a2mhgVaFFPqL8cyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748560194; c=relaxed/simple;
	bh=KZBlLlMZa/RPKpAka1dsvRFwnSiPW1lk7bmAVLOw/xg=;
	h=To:Subject:From:Message-Id:Date; b=FZkL/ih+uuF0oNd2iVhGlcXdgoX4/VEhaWo91H1WvqWzz6C2aoxJg+efaRBRQFSVctR8DoMtBGOfBo8ZQtkfOymb1kJXtGE64mS/a4aVVrRqrRPokAruRK9j41+WSJzmAw3eWsb7va0/4Ap0ATpE/HfKpr2k55Jidw5C3XjpPcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3IKmqpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3IKmqpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A359AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748560193;
	bh=KZBlLlMZa/RPKpAka1dsvRFwnSiPW1lk7bmAVLOw/xg=;
	h=To:Subject:From:Date:From;
	b=g3IKmqpSk1646wU0U+6zL6ixmhVflM6ICAHDUfTIdV2+RlYKnk3NYATX81IzV/zWP
	 8Ndq4GhEn6N6AWkK7XqiUQaO0GVMo3qtY5h0QlmaHEWa/yoZsVRmPkF1cQ2t+4FgF1
	 NpGJ8iRk42SeSLBfdD2DB4HEKwLrkT9DPn51pLjNb92V/oALBAU9JWkc6+1c/R7KTV
	 fF4NWc8hCyefIfQ9K2B/E00n1O+kR8o38zo1kUUGDck1DuRMfh9O45yk/sDNEFGOMb
	 GQRIA9cmXL3ArtlnJCjkMAh2M4igZ3nlN3wsmiNYN7qyihAeKuTnn26NOJY4ts5KHf
	 3EvcghVBaKwYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE15C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856019357.7977.15629527870907386407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2001e824ac3001c2e53b053c2b2982890425ae786581ea43e4aaff8357909c2f
Date: Thu, 29 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748560193
