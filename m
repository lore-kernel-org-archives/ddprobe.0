Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C1028A3FA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768028634; cv=none; b=jS6l33aIuah1S8Stb0RarrCAMjgBGrIbBTW/Ryatl8VcR7k8PqppEuGEzFvVrpQm/8F707ybX1Cg5RUDU/JbcFqN4mnMREPfC+lPT6JyMSYB3srRK+Z5MnHCY7cNWNQeBSm6I62cdqoGDGpTo3Pf7nzhLbUj3UZHYA5Ihz3tOfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768028634; c=relaxed/simple;
	bh=h9epO+reIw1J0bqPox810Vb+ptl6LoZsi7dbysOPnGY=;
	h=To:Subject:From:Message-Id:Date; b=f6uUf3d/cJipIAsZcR2LFtkAXSlfY4qBexg+KuStzyoQMQ33n6Rrg4cFPv8gFB0kbDwJqltQgs2SzYC8Sls7hl2lhHKHifNGY4rn9scIV5jSRxmfeYkKtR/gTySyT0Aw4Uzqg/mIaKb1Lyy7sH+WEosNOQJhLfoRwX5k/UI0074=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X76K1NDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X76K1NDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768028633;
	bh=h9epO+reIw1J0bqPox810Vb+ptl6LoZsi7dbysOPnGY=;
	h=To:Subject:From:Date:From;
	b=X76K1NDbjrJJeE3VU4icEKTmaQKLCSyLovQqjlX0EYQLUYFZg7WEY81dFQhGlMsBc
	 /s90m76/yrO0Cn2ydeyNWWbB363eFvaKohg/Hq00/ou45oFZbv8tNZaZUezhuA4+p4
	 T3aKRHkn/SoJOw25o5ABfptGDevOCunGosAgvN/Po0OoevDmqQ8bJO5BpBj7eNQBZk
	 SveJ3cg62EudRUvS9x4WEg1xypiu6e+e4ILp978Yq/3oS7hHDG+PKEo2obpFXCozyT
	 BLLn3ybL6cs9JshTRa7tiHgNAMy+c5ZF7A/n4gc0XDeRPwi+sbeMBo/zweCzqyGq5s
	 LUSh/fbmYgvsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9FD277CB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802863357.24388.15939280763567580186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f980398eb44da913e0c786350af67598cb4e69738b7cc80e43a94d1c447c51c
Date: Sat, 10 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768028633
