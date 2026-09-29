Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9023DEAC8
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790662234; cv=none; b=uhCjiFMHMmox/KmyJ+iQ6r6xKNLiCSELMVSB47ZKWm7i9p4LXNtCpuAvVlCdSas050M0fTdqd3euhqN/biFcZXOyC+S97ExEn/Iso6kWBeW0rwFhvpum4rbbi5JMDtv3h6+m9qDkQa+VLJafdiF9PkzkxYYD4rf36xP8K45w3vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790662234; c=relaxed/simple;
	bh=73kb8RmRUNnVYi8BM5fCOQDYr6DXPXrqcRb7RT+G4o8=;
	h=To:Subject:From:Message-Id:Date; b=lhC9A0DnI/W9GFRgH3950ku9eP/pQYoLwSL6QmU92Bm1xWhPqsjnFb98/rHU/TjkUcnhWSMYhj9IayqIlHyVUL5HfmJT02hFmC/7Nc0iuVCzJB62IF/oULJnVKsef9SV7YuFyLKmxHfV/FJhTiVStXlnKHJu2n8NNZNZ2vkdAEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0EeNXr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0EeNXr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A03C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790662233;
	bh=73kb8RmRUNnVYi8BM5fCOQDYr6DXPXrqcRb7RT+G4o8=;
	h=To:Subject:From:Date:From;
	b=o0EeNXr8M85pzFuoQH5Kiu5O/tsqtEGUrdGmLdNWSY1PJneZnZSJbZ0VRgbC1IHUk
	 ChfwCTF3EdqKeNndqNHjxT2/L5WiTFym2LhjHNbVUTr3FWUhXR6VB/2/qlt0vZGA0u
	 AOHeg/8AaFteh3cA+873FyLuez5vS7qPZb4iItTJtD9zYyWyDlO2aZqHQA/NvISFAE
	 wPVgy742xdMGztO/qOMe3o5Tm7xy4o/Cfb6AUlSLkEaSbu5OkZeJgXfyvZSmYihbqZ
	 iYbeQENoKW0XTO8q3zIqp3g2ZNFjvMpjIPR2ZtzLllbLxKcZ+7FBlokpzeniDarHfj
	 KXnFi99bXNxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8CC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066223370.7282.9872308839395246964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18982bec994d200636f5b39d874dbb420604d5f55820986ba5b17f97ca91ee60
Date: Tue, 29 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790662233
