Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B93B2AA
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766865234; cv=none; b=hYjQYpJ3Z09OZJt8JncDuo7nZseKsPgsapj2lGwZWJ1sUZBxDxpWRurVURIV6faPElq3MKJw8B/8POnSvX+s0UC15FsXAprR951ou5XAJx1vqFtzM3a5kRDK6H3C2lLUMAVPsd3J/DxKeA6sdmj+rnVbzab068uRtPYnL4JM2XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766865234; c=relaxed/simple;
	bh=B9daJ9QTq2Myxx2vcAlWffOg0XZsrJHehcYZ9hROZ2g=;
	h=To:Subject:From:Message-Id:Date; b=Vn+LTbwgkFeXxrtN10+dFbkaNBvYX2lhsdhUm71pSyscBN+jNdhIC2+PiPV+pYyu8GaVGxQg2XUaQUp+DT3WA9Ddul+9Sn6JH1r6OkHjDZ1IcmNM7cldrpfWlux4vMXSrgPDhR9VAF58TWk1mKFjXnVi+xnvS+hof+B9piR3ZtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXdZrPlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXdZrPlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB608C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766865233;
	bh=B9daJ9QTq2Myxx2vcAlWffOg0XZsrJHehcYZ9hROZ2g=;
	h=To:Subject:From:Date:From;
	b=QXdZrPlbSQbk0k5jxtB8lJJ2A9v6LDoEtG0s7MH1sSsXkxRTH5QNAhfomHDFOl6lC
	 1vCoop/7sd+HlzU24vbnDsxEFOJQrhNaZXVtUvWZic4+tZ5MJAWvhIr7IIBh9tpYA3
	 WKSmSklgJTM9iQO6x/cNwoq3TXntkxwL2+7dUfQGKULkSiMjPdXkqkGzCqoCAn8Y18
	 kTEtJ/K2puS+/zU0hJ8mEYFFPC2I0KnjSrfSUJ550zrrajok1fxL5gLCjpZ+cuf8vl
	 hRYmZMBa/nTVuH2Q3l6Rfs/rOsimEua1QO9tCnpuAPlszE6R+ggKu3jJFT3hLnguR5
	 Czg9hqr2mpNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A511EE92710
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686523366.25432.12384285858963592510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fb290c6d9b19ae9a2c2f0dbe828fb9bb11b1a0d40db676ef4b1d22985a7629
Date: Sat, 27 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766865233
