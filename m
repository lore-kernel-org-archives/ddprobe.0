Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518473A9014
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790427634; cv=none; b=r9ddXroU7el3xLYXyGJxdw1Caa4BMVz08MVgBQ0PshPXNsxfu9/ucF2blzcJuawkwgEr4gyYn5uMPF4kfoVOpVYUDhz3TGH8JxV6irqxz0EnvAxxZp8aApyMESY8NcXVEtpz0YnMtpd83XHRetr+ZFJngfBLRvxhqG+bNGCJkZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790427634; c=relaxed/simple;
	bh=mlpa9oNXIaVjxO4YC+TP710Nt2oAigw3vHHVwQSZRPY=;
	h=To:Subject:From:Message-Id:Date; b=XLxsiLkY1WMx4C7Kw2OpKcYsPtoWbsBcvczGEKhRofZUG9WHeRODoDYAmaOUlxCO7DznMqBCy5w36G7qRlajuc+vNHy+szaSbBNavgPpMItQpaj1nUf2j+GdCyBPbuz6cqVQJQT87sLR95RcPiO+VQJ+0H6El5P7j9hFCInHhMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzYmLMwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzYmLMwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC4CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790427633;
	bh=mlpa9oNXIaVjxO4YC+TP710Nt2oAigw3vHHVwQSZRPY=;
	h=To:Subject:From:Date:From;
	b=JzYmLMwfWZQQyp28o2Ig9W4Q37O8J5ltDqYZ6yI7pWcceaMh1qxhugxjjc2e59udj
	 Dkr50y+dWp3ILDfkFCfqQtVezpoQq7QQY+y9hf16mfm5p518v4ue4XAAPpzx+9b5/K
	 Npa42fr1M29JS4p8uLdTNKcCJEEyOVoCBP0+EoMWqeMGh0E+sHUgcnq4sGlcdgj3qc
	 VBFEv5St/tvPPpDAHMkoo2FhIxdHNJZRwv2WGqFs3PmwgPOvxaWjRD9FODeIiTJkWQ
	 +0LqFPHpZbNZD3w7eRE3fcGEr25IZCwADFfZhRYmYJJ4me04UKY2UUVdM05VWpH+yG
	 1Hpg0hhDoutCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE24C98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042763369.27121.6062947364845216099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3549e7a51531a564768a043923dc18adb59106990c5ab2b592dc531149aa39bf
Date: Sat, 26 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790427633
