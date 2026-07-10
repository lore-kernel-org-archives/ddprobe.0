Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449FF2FD69E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783700914; cv=none; b=X8LCIu2jO7QsBVMkwwRZfH1M6gPQEsm4QvCJiAnnYDjmT/LYkIXeshw3qTochlPuLZv2M6cQK1o50FTMAX0l1Fmypm+p7u32aNS5EFG+1Bs2/n6yZlVmyskiOAsqGpCDOXl6SPSdkYj7SjLQvdXiCFFGB6X4e3p1pOTAV7zVm8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783700914; c=relaxed/simple;
	bh=8x3uXMYdFzwv9ZD35Ut4U9Vl7/2CCRwHwfQYAQO3Ln8=;
	h=To:Subject:From:Message-Id:Date; b=UfxufCIF9MJGoKcGFcgP5zZCVw+G6xQywuVVVmvsZiAb0e8LgvsT8tBY9rDenN+LY1LRmmqHninhPbiWAXcKpKBlGTLbhJoBtzBTA1Lgor1NilL9DUXjuas6j/cUGV4Hpo4sr1Xu0YRRFoca+eJqW3g8vOuO8r808Or8V7bLUAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRwGxxSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRwGxxSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB458C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783700913;
	bh=8x3uXMYdFzwv9ZD35Ut4U9Vl7/2CCRwHwfQYAQO3Ln8=;
	h=To:Subject:From:Date:From;
	b=NRwGxxSi7oA0e2sUmRtWgUZZNq8z5TENauilWxCwrlDp5oBd8AnDwsqAGpKYvso7A
	 Xiq739RQApJN5w9+CzILvlB2JcrhRjjTh0AR3CH4RmhuEWHYPrxUA/o7aAQmSKZDhq
	 ssVbQa2/cA+hMKx61CSu7hA62TAqzA3pWEs/BDGNioS1XjvI1o4DzrDVpoSBa9uHf0
	 woOlzCiu8Iir2WvzzM1hAoLdWvNciAdY4vzWadOBIOBIs/nKnNYg5Qj6sjN/qqgvv+
	 2U0BGF9Q/vw+saCMrCMEr/xsjVVya/IL5dcdvQA0yCAa29kZHtDYFMeofV9DTlSEcU
	 vR9VNXV02WP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C3FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370091368.24655.10242195795979812340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d69aee09f79f99fba7829a7278af9ddfed2aa616a383f6b1215e551b48cb9c6
Date: Fri, 10 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783700913
