Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1FF3E49D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790943034; cv=none; b=KkXaAUV4EAx0C1FXpU0T4/ee4E1bI7U4UphGmBIgIyU6IxmxA8rvbhdRo0Dhq9v0m+S28FygqVOQJ1oizlKrduMXREC8JPySgfNrGOXyEA2OzUWe+pPqOfJ3F6P8y44PsMEVpypV1+eKdNVbzfazNfJoB81K9Y1YwOdI2ELgrPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790943034; c=relaxed/simple;
	bh=fchbBB6zczrJHEdfDB3mfXYEm+DxG+knD2i51jbfE+0=;
	h=To:Subject:From:Message-Id:Date; b=XKIVCz/3oMyZyw7ZLWJjaRIBiqT0/vX+/YhurTp8EqGt3obLUwM5UMXdKf4WdAQdAjexwoPLS8edD9HecyAxmfUZWTIj7z73yrJfPH+SNbVzopesq8Jh3aDLILTspZq7/Ptb8GZOOVr1Cxd8j0O8w7IO+0F0xg8iK0K/oq2FrLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfutmCyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfutmCyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F28C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790943033;
	bh=fchbBB6zczrJHEdfDB3mfXYEm+DxG+knD2i51jbfE+0=;
	h=To:Subject:From:Date:From;
	b=MfutmCyFx/Er6C5sSZukBMO0R3Bd8vpbo4SiKz5rNdFoihpDyyNxBcivHTB+ST56f
	 orVG9tANsGiLG3kSsWIl9d8rgzRHe2cI1VgDEJf2d1ikBNd59SGJV51gdwahDgOCKH
	 ocxhjLHYQJJ1IwZcwGJ6FkVCqHSLmkd8zLSvCFG8tsMzI0G/jEy8u97hikdf9RAdiN
	 8V7tjxAdP9Wd9SdIIfNDLH75/MuuOlNJmM5VKWTv9RmDlqdOdpYlLza18jWhsFYU5L
	 +Woij/5vUGm99uiuVk4MkYfFQ7Hb0S+V6V238e8Y/9pGGwNo3cu5oKnfeHBqZpZPUQ
	 54vYyLN421C2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF3CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094303369.12529.5603955530368545081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0330b8a74f25b236c2c9cad3f0ecd4e851e01fe20c1d2391843992062d17a868
Date: Fri, 02 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790943033
