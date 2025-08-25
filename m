Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D30A221FAE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756123794; cv=none; b=q9ivOJzVYsupvve0oH6v3qOiHwY9hU/JD8Zc2G0VvmH9i4vaH054Os6Tu7igh02VROTL29N98ArKXv5S1IHINZ4hG1nVp0U4EpQauhJrlZJJ7dJ7+rAa9C93duWPZ7ypRcfW6Ep8u5ZV/YOV45oIzEI3CRTcQLtS/fhExXShk+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756123794; c=relaxed/simple;
	bh=DAojzyPE7nfR8Nyb/R8Kt3R6vYeOwKoaBxwrREBv0Tg=;
	h=To:Subject:From:Message-Id:Date; b=NKL9KtSIYgGekTpGINI4wu5ruW3xng7R3Whm8tDI2A83zYXAM8iH8BmvcAVhrKw1AOVOcy8KB8Gnpj9UDP7Qivor+7K4oVeJyWJRF0DdX1Loq29x8psDdIc2ebJGD5sofRfRzccwEH+41eLBE+LTG2i9w2nrAVJb0EG25RGwb5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDn9tcuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDn9tcuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756123793;
	bh=DAojzyPE7nfR8Nyb/R8Kt3R6vYeOwKoaBxwrREBv0Tg=;
	h=To:Subject:From:Date:From;
	b=bDn9tcuFfI9bCznxC3w9kvc0sxmB3Qv89HfQHyTWFUYJq8uwNvonezPmtjK6MW0y4
	 z6vBMWjXL+YntAY8vafcaNfyqFNHHZrOJ15HYPtW6QBQ6BbBp8QH201QR3NxjutOa1
	 gMK+eziZ1AMuBulQNnrnSEG6xhMnxImWX/i6yso4wFWSVybP9PqmYe+jtDIgJUAr+9
	 EKZZoSqySsWxJNXhv70wv5WMRzvepiSF9Ybc5oyRLXRxHocWjkjGE0rRZHycVI4NFS
	 2Bz8givEzJLbd7qH5HnqT6pypIowJ+vNBvv+dFTG7+7WlGvESrupEIg7VUlFrwp2MV
	 NJN1nyCEHWLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F896CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612379357.6117.4350487567249572135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d2bc1ec95e016bcaa5c12bd5d0f59e22afc79edc6d3eaebbce0b32fffe1445
Date: Mon, 25 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756123793
