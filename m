Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42E5408017
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789110034; cv=none; b=GFW24U5CMj+ETr3end3Mo5jzgsQOdNn4mYhYDHnOWbvfsZ5KGdEsfQb4Ks87HBSYvPh9JM9XOcU1+ncPJGPpowHOFz7t8U67niBrSnU4z2dv7t+4e1/yopdUFa+fQtY5oD0GN26UgIv0NlytVnLvwa6F4epN4jXVmh089ZE9XRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789110034; c=relaxed/simple;
	bh=rDi9la12wX5ltjAIPSHaVWAGun84QlrNe0i54UB/yls=;
	h=To:Subject:From:Message-Id:Date; b=UOATcgWbBtVDToj1A3XCFnciJBDsYeNF7ToQV8WYnNwdKpA7p2Yzmex0gZJeqNMBMvrtT1lXRtx73UbYQ0sOrPWfkMobw/oM+nvSBxdSAUAvbzK3j8fQeFdWTnLwt8Wt3CH+H2AqwphL0YAaHj6PaQO3XlChBYbRbXsVr58Q4RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob3Hw2co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob3Hw2co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB33C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789110033;
	bh=rDi9la12wX5ltjAIPSHaVWAGun84QlrNe0i54UB/yls=;
	h=To:Subject:From:Date:From;
	b=Ob3Hw2coNGfe2sutuLEMC92fPCg80A39WWty4chSpow0UnZqyAZUMB1hBwj4WFbHa
	 nTjoRwuSx08UfsHqJZiV05QlGQEiP9tyjpFpHqcyWwrfXx3by41L7pBwVQ9DRhNYAm
	 l3/89pTKP+MXuZpCCSxAzYQS0STqRAfqAWy2Iu752OrI2pwzfsq2zAR69RIpBuXhsv
	 BS7vc3jfQdyGAgFxB9+CH/REckbeMwnCsbnhsRm0Q3f9YUcl5m/VnIwGB9ehFcRxy3
	 HvYTNAQQqDnbxSxiXtKhz1I20M3fJNWALXcwHybYNoRo6bcbaBXY6QKnh9KfuBfBz0
	 PnQ1Fzl5CnOcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABED5C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911003369.1904.15435344986681784176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86833fed2b427a8749b6abd48702448e783b4be421ee65f82b9de09d429af5c3
Date: Fri, 11 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789110033
