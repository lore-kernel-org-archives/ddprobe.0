Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CFA2DEA64
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776158254; cv=none; b=DbY/10LYoewtYSnKNY0Fzlt3IjS95VPCXmaeOgAmEncdCiUN4HD9jraHaFbUx3D0CXOC6jHyNysn1EtlgMwSUiw49m0ibxQMIhqiy9VlX+Ee39rhmD+LJDRJf+/aCaA5dqgNncZ/fLqubklVxO5Rz9c0YpG03c5D9h1rUHRK4PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776158254; c=relaxed/simple;
	bh=CXJpXnYwHUIswdrPrEiG3Z7hLI+EEaf6F1tkyKBRq18=;
	h=To:Subject:From:Message-Id:Date; b=n4QSTN2COw+HnFhIZ0sazsbXaUX7uThgyl0EfAd1zzquKwuYHwpoIW7F+1Un8Ljb7CdE4+u865OfCus2CUsxhtMP/2d9trcPQz1AQicsDBrFuGYoiiwyMTTBumP7By7mW66DZrLAF/XQVkydNUCJzRRI0Q2LZlUOeZ1bb4sF7bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQUdE2h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQUdE2h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7977C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776158253;
	bh=CXJpXnYwHUIswdrPrEiG3Z7hLI+EEaf6F1tkyKBRq18=;
	h=To:Subject:From:Date:From;
	b=gQUdE2h5W83zGd3vZJq/p5DNB+bHPsZ/SzL89Mku1DjrlNTUXTdWFL68vwnauNZDQ
	 xke0qtK5WeGfqkLfKLAjAppfn+wrhsp+7e2sqJF3L3ENUjsLGv/pQxPtucuBgiZg8y
	 8J3oj/pk8yMtDe35WEzq2Q5jhnswx6sHuQ1Rll++6NoClIZLRuFXRZGscvwVo7Kb7s
	 H1zHCTJyC2Vs0NIm9Z6Ni4LXw69jTf9j0AcwI1a86Qu82fzg8zOLX9yC6xnBwSEKfo
	 I0YW6JkG2dIAeLcm5gttz8YW4LXy9rIDdJYAvv17mYel80zlWjn5SHxoE1K7K35Nlp
	 I+UDunIurQatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B86ED7B8B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615825368.7418.576366938678388755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f6f7e740c69b45b9bee3180ced6f0542da5018e64b377a312fd1ddadd0da22
Date: Tue, 14 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776158253
