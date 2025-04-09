Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288EC20299B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744229396; cv=none; b=O5fO0FXpzff6xTHQXJ16nWqL8Y1GF4AP9aPGUE7PwLx4+QGNsqyWf3NLUIVSdYY/qM/wC+f2IcrD00JAZIksxLNE/0JcP7+6Rn/c6pdV5xj7qrhC2es1jv1JXHBI7QJpHcUJ6mpfkZnWPN5QoGYq00QDYpcPzs9k2Xdjtcjd/Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744229396; c=relaxed/simple;
	bh=ZxROFr2RHWZXKZQ7RwDMQ+BuLbx5C5MZn54u4UA3jVc=;
	h=To:Subject:From:Message-Id:Date; b=ZR9VICgdG+t7xWUSTT6z/UM6AFhd8uglXGuau94v6sV2jmMAa0NBf4ASmlJ7jEDOPkmXE1QAsfxGtV9goK/QDHTB+cqvCrzhPFvY9r3SBLMmbPwysLxKrb12X8A5SRlEWDdvVqZ8RgIZMxJleHGa6E2jxppQfaVYiT1NwoYYfoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WagUDRV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WagUDRV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A76C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744229393;
	bh=ZxROFr2RHWZXKZQ7RwDMQ+BuLbx5C5MZn54u4UA3jVc=;
	h=To:Subject:From:Date:From;
	b=WagUDRV73n7Q2nbbTjYMPUrJNuXkznzpo2ivzvmKTqSZhMwyvGmphloaq3lZ+5LjX
	 Xg5urSOkDptVIzlK4eEHklDZ6EY3ZkoIzG1UaD19BoECejRpOWPOeTLaKUXyV+eqOl
	 Pl0Nk5kcl3NZo7615Xtbe1IceL+AWr1D9vmTA3Qeg6e+rP+1bT5WRJ2rvLdPEm6sS1
	 qyfYdoz/BHU2YebOPyYUVV2VBzK0LKbgzMk/+64TAXyrx/w+p9Uj6AT9qfrGC86WsA
	 h4QcBiO4BI95ERSCv903quCd+XH1V2OXGSv44bobVhz6beJtPK3Si/tSYo9FB5BEqQ
	 15aKCtGaggSeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422939358.32572.4581970577124457573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d478e228b6d696cf4ecffe564c4539d51e412dcab8c1a47e304716350da9f3f
Date: Wed, 09 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744229393
