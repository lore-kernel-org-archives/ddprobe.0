Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B72023AB8D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756068594; cv=none; b=pTaKmR3uPOmGk2deiUcQLb9X+2M+Nvgio84FhzakbU3UrWVAilJpuXxASCRj0wKymG+/PW8BEyNcnj5fqYm/dWdj6o5krAHSng9neUiEUVEQksTmIDTyGPvzAIj+rcRJGzDTmjKX2vkrzJhWIwyvqahZyG1Gl+RUhRqiaXiIqhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756068594; c=relaxed/simple;
	bh=ra86xZB7ryTSOyFSuCdptsOJVwX4vkhD+/s/7Ic1rgM=;
	h=To:Subject:From:Message-Id:Date; b=BSNYNhFI/N5VOyFsWl4qJKiPowMo6rOw30sVFYWq4QB12T4KntPx5oYC3vgTT/msNNcg2kjhgRphbC6qtCXcMpFHxNDvQVfGVLxIOHT38iVD+kewhtsrd3l4boNZwxWK76XEbtv1WTuNV9M7qxioiy9zccksKJ29TGWe7vUy4C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU3l/kA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU3l/kA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D56C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756068593;
	bh=ra86xZB7ryTSOyFSuCdptsOJVwX4vkhD+/s/7Ic1rgM=;
	h=To:Subject:From:Date:From;
	b=LU3l/kA0egnM79E5LlGMYnLqslhx7nz2E3W2L9uZHCg5artLIHPYQ4/fLpUy5kMTB
	 XcB6FEeTobGzSkuNBUHxjInHSBBFkzjD091Acj3rSyOa+iWDNPs3DYY3IiQVQFPHJe
	 lP62nhTs81qHSi45Il/4H+15Kt9svv1dUiLl3zWiGvZ4WKA8iu9OFqwgavBFwVojdP
	 CdGnawwYkRkeCiXjfCN62R5+VBj7IHdAJG074/pqDvtkec0zAsWl226mMXU+phGtzQ
	 OmMd0PAhaZ6lffO0CkQbE4ptVYwAICtqbNV/BpPNN2hPy1av2Z8j4fV0etO4KvWo+k
	 PH98xUCu/G2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920ACCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606859357.3127.15934494882119575629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce2185af87171953c395155d6aa574090d94d6a38abe490279e94bdb2da04aa
Date: Sun, 24 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756068593
