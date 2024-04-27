Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526481DFD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714220543; cv=none; b=mVnM83LsgHY3w8sYg0f3oeefFcIkpcDrwSXP8qb+jwwHxVCyLe4mA93RxhGppLT54CuMjXaaUyih1TeJkHdMGBQOfst/Fz6ITFp4fkIjqYiRPbGOqJrzthCMVymKECAmZ1U3xh+eAxK/qh/EhiYIOt1nFTN1oi2s6hj7R7MCV1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714220543; c=relaxed/simple;
	bh=ERGwqQ1KwZ2HvJREgA/Jd+Q1JDjtKcDYFQTB90aLhsk=;
	h=To:Subject:From:Message-Id:Date; b=OcTKvW0g8WseImIP6G076eoBj2ek+qWIcsJNwUK+SmReY5l9oPbThusvURMjmGK8g2Pv8lhtzdZdCI6FrEtBfOLhim2qo37mP5nSJfA2MpoY+fPbU8byE4KJrgdo7A0qwE3MCXEosILpdV2WAIMoz/QuypYZb0n3t6CHiOQIN5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv3YhMFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv3YhMFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0D8C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714220542;
	bh=ERGwqQ1KwZ2HvJREgA/Jd+Q1JDjtKcDYFQTB90aLhsk=;
	h=To:Subject:From:Date:From;
	b=Sv3YhMFZ1uOl+KmZQ3cteKhRm0Gws0SqWXa8DBcesov5bh7ByvPsvKTQd1hxPyO2h
	 3Ey5YW3ScJZCVqimTUz4RUKt2Z+tkQIRPVdZuAXyOmiF/evgJpwON5qqFLMz6pFOoA
	 DPdF1OpKLbBqFQt39M9JmSs4ZnDQr9jlhcPfmY4BoX+fDBjBUhLARZH/v9xPsHqpcM
	 5c+/mZOFfF0fDUllluerKXLSYph55WbdqpEutVOCb4eu28qBX4ATfcNnn8AV8HNXZu
	 XpkEHriTcgCMdCZXJzpeFcxuaNXtpD8EJVLcYgNW0KHyrjaHqNVPSaLw5p9W/b7we7
	 io1SYz5WSHt4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D2AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422054278.25060.11140232719386217200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813b7104de9ea0a100af0afb2487bbe93f9e619d676ca316e1cce272ac60c5d8
Date: Sat, 27 Apr 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714220542
