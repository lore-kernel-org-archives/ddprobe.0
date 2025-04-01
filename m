Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCA28F54
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743481194; cv=none; b=RdUit4h2VNY07yebpXvHbrJ02M796EvNIIsT32ysVMTOKKLTow16dnDPQBNsSrlqq3Gz6kkL7W9j904bUS0+I0+/Ud0kuQU8LfOL3XQraKt9Y2NNQGMhiy5fssqCA/1cNKIrvxEugrtV3on1rfxthsflukJuB7ieeB7neQYNafc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743481194; c=relaxed/simple;
	bh=B7tmihhUosoK2FOV3AVX7JK5LOQCIouJPXHIm85S0t0=;
	h=To:Subject:From:Message-Id:Date; b=KT89jQqiWe6wnyxfJV6bR7G86yYw3I4FFDXuGlh//2JkdwTfxYtBZY9bpQ9Eb24JvBCe6acDMc1uSKSuK02+YSwgPqMsE5rubvvCTRyIx5pAehQeMGcBsKZg+yzm8amwpIs0c+oerHcHKFylsFhEAm6r9yR12cm7B3RK+DG8fLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAg6fFtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAg6fFtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC856C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743481193;
	bh=B7tmihhUosoK2FOV3AVX7JK5LOQCIouJPXHIm85S0t0=;
	h=To:Subject:From:Date:From;
	b=JAg6fFtL78OeXj8sEh4rYdQi6KKY/k/jN+v6qR2Fy4IE0jD8+A9wvAht+eMsdNmew
	 VVHXbiUEP08C0M1KbrlTlRSc4QPBg4hnpFYAmjJovhsLYGrMKfUnxMub666ZBbPRjm
	 VCsxG7AeVvW8q6BYxCqttkw0yl9DGGfU564jzJdeD60sPitWHMBvAyqPSCCN3bFjKV
	 q+uMYojNyClPKbzuK1qloRSTP9vzEFu6JxocgG4muAunHyI4BlsIy3/qXeO47Nt1Zu
	 cUE8aEXX3JOTuzMP3SeAAYrYtYzCJl6NkeObYO6G2u+ZvtCld3QvVqJWpHGPhd+8Zo
	 2RIQHbK66cDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11DBC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348119360.328.12224031601636889798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6065c2989744849d16ed6d000cf900fcbf55674664294055126362bbdb098205
Date: Tue, 01 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743481193
