Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4813DA7EA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781121994; cv=none; b=WeuFU7q7xANArcJFEzz1ZYy7MtTAMNBcXgOKFKz33M4W6Mb4qmkB+WBt2bbIJk6eSkPAljslwSz2A6AwbwVkaHL5jGoo0QRHukfGspl/WR0IiimH1/cpZpLrSPjkE0FkRRMamkF+Ag7CTP0dveSkNMRjKeYBddd2zsQC3pJdtc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781121994; c=relaxed/simple;
	bh=ISeucIHrRKVPwxHgX74RhgMAGkn1/LMFMqZ5/0FhuG4=;
	h=To:Subject:From:Message-Id:Date; b=jEwpTYfowI31Wgz3UF+HTyO3dHIBLm3J/vWY4a+jL3NnR7JOJB8zTA+7LTJTWYAjmepNaWY7zkL1nCIzzDWAYQgff6Bf60MoFzOuZQSmPIEWWwB9VshouGKwxML1S3TrH/nDj9Lc5bheW0+JQImeim9Qd+bG/2QkXVHaUA3NFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyhISuA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyhISuA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50BCC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781121993;
	bh=ISeucIHrRKVPwxHgX74RhgMAGkn1/LMFMqZ5/0FhuG4=;
	h=To:Subject:From:Date:From;
	b=eyhISuA7BiZQA2YrJSp/XDt4ysVJzq9Vw2OwuAHgw99sqdb7kGLwMAg3117NsCBeU
	 gfSw3QPb0n+KUK2C4eH9XUIpaLJ7sVPIVXfMMJrtYAlwSdnir4GqfkITk6u7X1QKiK
	 Z8Jgd+5vyYCZ0G90BeQBXZJtGr78lxAVK5Iz4PnRoRq71tFcxiL2WblkDq9q8dEa+g
	 61hK1Nyzqg2/jUnI0sif+f58oiIizJJQJuEkSoUH1zrVUOV/SI9DiXEduivCtwQ56J
	 wg1+vLRzJwmaTX4OphVLGqia+IcCa9qmI+SSCtOpujWFMSCUTeiFurkw1TbKN28n0c
	 6okTYUiglWBiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF67CD98CC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112199368.2575.3603678627361377229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b8125a1efb07a7918bc9056816cc9991029c3207b38440aa065f674666f2dd
Date: Wed, 10 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781121993
