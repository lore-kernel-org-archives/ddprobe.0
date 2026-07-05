Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54426280CC1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783222114; cv=none; b=XlNfTSrCbyQCIzuUrfpzjiwGCxrDI3SPea2vfTLGv+eThUHHs1qPj4fH2W40ITRAGUsapP9Hv17sO5zrdOcm/gkmNrXuVcYCKbVUw6YFSYugpekNXaEgTC/iQfSIdrd+c0S3BshTpvxxIHIvAh0I46qw4BGNa7eTuC4/VCaxq0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783222114; c=relaxed/simple;
	bh=/h4G69GfZ4ESnlVeJ8EhDflvlOpj3ipU9bRiiritQO0=;
	h=To:Subject:From:Message-Id:Date; b=Axuksn+JC+SkCqPS8OyLO/1NboqXHGsZMFrDOlW4kLI4ZHZnshdAaxfE3gauj2dABPkaLJ6YlW/TU4R9Dgq7xbf2eruNL//NljRe3mSkI4i+R1q3vQIxX9XVQcZLT0v7CnIuWUBOp6oETMqulQ4Nxi5kMCnUNobeimmg31uGnSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIvVcXfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIvVcXfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC250C2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783222113;
	bh=/h4G69GfZ4ESnlVeJ8EhDflvlOpj3ipU9bRiiritQO0=;
	h=To:Subject:From:Date:From;
	b=uIvVcXfKwqLF0GKyKggnRexnSrC1bNBhuvlACYBdoOC1ieAkbTnI8nqdHeH6b+Bov
	 DN/k93F8qF3ku070su56/pKHa/fHDu/SQtnA54Ud6i9vTpbhfQSS1G04OuU48jKSRU
	 r7bv8/Z6Jf3mj9dqvgQeRf9kBkmnjHdMOSLaQQk3uTLBRGpNvflwW/G3SPESpLfxsy
	 uLU1+dNxGUoBavBViosbNNaaSAGvqBEWsmwBtjoGO8Z2REQLQIh7Y/zML6moZHqzt1
	 EliOgFvFuuMcnQ+ggNzWcgevpAErYuwGkEh2ccYXUw7sJKxAoDRzFp75x0a+vPAfLO
	 TkSgU8xaw9BTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB95C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322211368.12800.4253042065012170643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c2baa3cfdf4d18982f216ded04b61b898c4def0f66de7eeef80cffcfd88866
Date: Sun, 05 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783222113
