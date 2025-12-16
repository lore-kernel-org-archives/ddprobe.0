Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2680A1494C3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765895034; cv=none; b=p0KtFIl8HHzWhvdWDV1Svz6RQA8Tq88EYNoJJBRVnBDLM3u3bLOtB+SAWWwduTLCI/SgbdvWaQFvfaCqA/o9hhl7QoOGr/92C7y6x2tfpqriK5uNq8Y7p+ZFg3XWLKqmsIvyho5tSO+x6BfEa6yhWug+1DPPwE6BS2bDa7LnOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765895034; c=relaxed/simple;
	bh=nV/djdeyL5ukhR++AkevCY+G457s5c6roGpj9/dzQus=;
	h=To:Subject:From:Message-Id:Date; b=Z2Ft7NkaNYHdcrz5BQanzOyi+5pJ9xzkPkFADLjKnd0q6Bd1/IrZ1CVM0phai5xayJ8q7K+qWpkxlbtYpFBtAxfxnnr++nE9MuO6dbeNbnf5GH/pL6TUP0LrD+i2c8YO+6bCGgMbGZa5x06Bz8fXlm/EHmYsX80PmbJkZdBzTD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ9vqM5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ9vqM5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5616C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765895033;
	bh=nV/djdeyL5ukhR++AkevCY+G457s5c6roGpj9/dzQus=;
	h=To:Subject:From:Date:From;
	b=lQ9vqM5DFjrIwzV8dz0rkVR5hs+OVPkYp7kf6AWMdSm/JFtl4PI1oAM3wi6nt55Ne
	 tSUNuzLLCv0tTjlYnsHfyGu+K3U5BA5be8LRTTf4ct626U4D6NHbu0RqKzJPylVm3L
	 fAs1aPI/jeqzwegNLU5qm8TgHVFC4LNoJvMq9J5kG53DKlGVgXQK4uIx2+7BWTL39z
	 6mIKHGchkj1TYY+a21ePbNdlWAU7ud3MkBn2088dJciiK/L5lg2gj0CzdIV7OmiG7R
	 e/lEYRWX2TYJ84rV7d5v6sohb9gKalPMdrVVlKmQ+DKmLQ/mTzGu5oiixcn4GRIk3A
	 vg6IKp+QSMwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132DD5E374
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589503358.9457.12233481458550972007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fe2d706c08037ec38bff1370b161831604c7efd191ae9ea59e2ef49e98233b
Date: Tue, 16 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765895033
