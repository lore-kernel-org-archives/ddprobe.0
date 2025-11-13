Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567273271F1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763026794; cv=none; b=pePt0Ylfi2SYPrn9n8Uwq8wBy7vgTMIFYvbIg2iiu1e0nJKDyGwWjwhWAfN6R5ch/Ry+t3Kl5Vrc/veIM7Cky8C2Iv6usgHM39tyN9unQ2h37jbjYza7RTU0izRGHcUVVcsgCjcOl0bro3nywsltb5+JeObbLYdQ0Cw/g77d4pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763026794; c=relaxed/simple;
	bh=wCd6fUtX5XJ1VKyK31hEjvTxAYkyMzr7nLqmnKYaFhE=;
	h=To:Subject:From:Message-Id:Date; b=DqChYQ01K4lQjhkC0fRmu+OKFStoD6BAo9v9QzZ1Pfc/iNxVnCBidEryXSySkZMLRVfF6p/dyNEWyLOuLK8+WeGj0IEumxB7BD8JjXy6m4oDAZeQJu167meJf3IKXHIvVpL0148+aSAypmaODdT0N7WVbUUKSinQnY+/2NP5EfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2i1y3wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2i1y3wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C305EC19422
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763026793;
	bh=wCd6fUtX5XJ1VKyK31hEjvTxAYkyMzr7nLqmnKYaFhE=;
	h=To:Subject:From:Date:From;
	b=O2i1y3wLBUn4C7kFyzhwyifYVUU75SkJyTTLlykOmD0Ixmp6WhlQmGhrybkGbiSR9
	 DtipYf+crP9Nd6i5POh1OHUGhrF0j1SShcgEpDj6A/Hz9QVD8XRNOs58jc45oYZ0yj
	 D+yhMFcvQaZJfhpm2EaSvwOG6W7eGC2X4Qt9npW7FVrEJEUv7+8Jl5fOtvOOQznDTv
	 zmaDaghDzQCHsvYwQ/3nh3Ok6cWczdUsBhAru5Jjfm7q8aDvGv6rJop1ILQOR7kpZZ
	 yx707aG946wUpx/dw/gMF/JKyiMfPrztRFPUVkCR4gxRGQqT0Sm04+cU/bd0rNDgPU
	 Az6EPAhAIn34Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA22CD5BAD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302679363.16280.13271365126836045365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd88ea302f2dc3a028c363f765769406b2bec5ffae54dc516efa15808a307118
Date: Thu, 13 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763026793
