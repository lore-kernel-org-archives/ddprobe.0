Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C8B186A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754585394; cv=none; b=qXwWYgciA6LUrDUeer4mom6qZYMaJyQSlXuTiP3aChjL6FfKv6gAOyrTEDzjQIqbeYJPpZSEI45oOAx6uCgS2Wz5YYt7viNKCI/hZysXPWzNJdypisvEdJd/Pd3T0y/e/Lj6/6GHTdSY2KlfatnPuCZabYboeHQcytCFBjeQ6+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754585394; c=relaxed/simple;
	bh=fV01DMJnQbAv30PnKFELutT7Tn5UogouU3IZSjrF/fI=;
	h=To:Subject:From:Message-Id:Date; b=kdxZZ3gm+69sWamHVI2V3pD24aMetHQn8DeO4dSYPUduIPsRclfyjsRyGVAREMOovr2gsiA3UE1UpyM0P++dz66JTplcMIfjZcUH7hWSI6L9C04LJR59Qio/7F2D0FwBmiK+U+F56SXbxHWaTvLUJcnwn360fPiUURyZnhZ4R2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaSdLx1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaSdLx1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC60AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754585393;
	bh=fV01DMJnQbAv30PnKFELutT7Tn5UogouU3IZSjrF/fI=;
	h=To:Subject:From:Date:From;
	b=JaSdLx1bVTVSwyAU2edqIk34EfC2E+gfYNn8Gt+2a2N9dsV6P89iyax4gDmVdFIUt
	 fd87YwPCDAL4Oaa0Sr/dQ8GOrxGFXbRhlPP1d5voNweCe2PJbrIh6v4rVp73RZzV0b
	 7DSiWwEOU8xyRBzndF+3KhiViQfs62li0zdYWZAf4+u/fwK3F3MYgG5gKlza3IJ0UX
	 xRBEzWHzlLUSSaOJ6siVNNwluXEhBRfHGgAY9mbBf8kjvfVZju0EcOGljOj7vT3ccF
	 DUFB2OeeBabuPkIZyYshZzOPWx8IhVRHA4sopbAbwmC11boF7VmPO8EtI3CBR4p9M5
	 gruDbODJDvdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F4C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458539361.32507.515389137049289194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c125a71c551cd9f62a341f0b80980c14e27e09fb81e5d379fec2877d5cd490
Date: Thu, 07 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754585393
