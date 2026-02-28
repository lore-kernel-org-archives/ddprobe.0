Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C054363098
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772306694; cv=none; b=oI82Zy0oNOQw/z1ACOY8cKjZBldaL+NBPxmbV7707o+mUSf4+Jfg2DCvgD3p2BLZ3doGGziGdKqNjt1/XY77t/oepjCiQlOO3HKG1USpgIg8rCgl/AnGoasw1FeOt/8enQ1Dy69tSSA6KaPZfybObeoMixgNMbEs3/8OTK3zguM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772306694; c=relaxed/simple;
	bh=08jA+OyL9XUkVNuElnZn3ekxGPs4LioSA/3SiKKqwJI=;
	h=To:Subject:From:Message-Id:Date; b=sRPc/82pNcMsPCfdHlhWFkKVDtP5nb5F84BpbznvmitnUJvs5ylMcNgqF3JqjWjG8Tyos3ad1xZPR8TnjqL7x8U3GkpF3EtJsNz7r32ApIUT/m2VKZIv9j6sKEElMVnKRE3ZSu8tJskKdxJ1nrEzEMCjVUrI4GbGE9GUVSA4Wx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmXzHhqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmXzHhqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772306693;
	bh=08jA+OyL9XUkVNuElnZn3ekxGPs4LioSA/3SiKKqwJI=;
	h=To:Subject:From:Date:From;
	b=cmXzHhqG2AZW/D8c8kTkUjQZ7Sk63SeSMlZABLN7Ci3DABE3guE1mliPpf/l/Awy8
	 7KGSW2Jf5l4/LwpRfIXPi1EgAC1LCkOwuTZl/0jeVMdli3HaZfAs++mMYyuerNsUFS
	 Qb6H639Rt5Mh7SD2MlLMfMhXgVptNG9wBuSDB4v3IrjjJiMadyRER4aEz6b+Rra7nE
	 wKuGP49R2OHf2L4YF5GECDD1mUb+k7eeoxp2SLLVppsr+JY+8IxTaoEadPaXd9kMzm
	 GgwcOklEIZDTz7dRgnQU3tnaWGIVdszVFbGmHIYSlAELhGn6SxuUbpjJ8JeKAyIGjf
	 KXZFPjUPCiJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA3FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230669358.18576.8909549347432364171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b794c3d777b983f57d569a8b3334a4e656eaa5726be2ebd9e1d1e7e2610f72
Date: Sat, 28 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772306693
