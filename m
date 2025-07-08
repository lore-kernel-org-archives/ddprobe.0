Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FED17464
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751949594; cv=none; b=pXCzLLloyBj/Tm92FYaG2zO/IZx1oXZtUDk+aDa0NSlpEMuHmv0sWBUnpFZEoS6Y50aLRmhGrpYaivLVRc1/Z+rMGn/66MGOvQaF+PNbFhQVncgrJtIbumK8e1FMgCfm4Fz5Me4Nv6oSnIh4J2wohIJwE8cVV2+1Tox/UlhBbLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751949594; c=relaxed/simple;
	bh=dJqWu632sMac3WcYxs5qH30RdcUlMAVmZobAuytabPo=;
	h=To:Subject:From:Message-Id:Date; b=jXb0PsR0309+3l0LB1Ay9W4qVG5lu75isA7FvZ5/M1vOWkjBWQvSqaIIZO7b73QuuTj39moAPTI1V9NuZPN1LZzjf3Ze5PmklZKXi70kbaIsPN4WGVe1nyr/brxseaBTEEdleV8E2a2clyUd4I8zM5xHuJgH5vJzL9HAaadcGcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td9atelT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td9atelT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751949593;
	bh=dJqWu632sMac3WcYxs5qH30RdcUlMAVmZobAuytabPo=;
	h=To:Subject:From:Date:From;
	b=Td9atelTir+FDCOvZMV5qOM+jWHqGbV348RwisY9NR01epnpRUJrfYcVoTi8tMR9A
	 YDJai1DXO6bmm6S0jw+s8moHqsTSYosRxv1TMTXLUGMYhHZXg0tq2z2r6y4zan2zer
	 kgxL885vTUdBr9U8OolLlSCDn7JRZs3vUd7bmFbmXjIEUAghkWlDc1JsY0m1/RnLyZ
	 4yNhi2Q8HNNsAUQmuv9nk3Eke+4xSy+zCnW3ULz411XBHc6lwRB+fAvD/AL/rlFEKz
	 DCNwhet4QEohzW4HO2eg3oPwRiKXX6rV9+e4It79V+7MlIz2vL//luhqpm1n66fs6z
	 T1Ydtz7gQHOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91904C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194959357.5300.16392395685712660201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77814e3d5db0f3e93bb3a17a343869384e907ceee4e911372f0c22a61c7c3a7
Date: Tue, 08 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751949593
