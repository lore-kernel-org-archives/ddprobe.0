Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6FD17BD3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748639394; cv=none; b=sUYbnYk9Rcmmjsn5SK894jWdagMnRH2OA+D1o+clAelgxyRFeGg0V6TH22EIWHQqOD6ApebWFXYD91yejWwMwc4HDSM8R8z1Ny3MEy1qrR7MYBYXlivuXtM7Ggb4t/zAlqUrCk36tI3tEHMRz/LI0ffGaI7dWFo+ymhmWM3oWWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748639394; c=relaxed/simple;
	bh=64X0d5NS/451g+0k7YXrDXsa2YElEpo+jA6Il+6UNw8=;
	h=To:Subject:From:Message-Id:Date; b=QEUvwZjYhL2/hvNL+NB51pN/96o325lQaKdkQ4TakgRH/UOekKFJZ36ukETYQ1YGtd+l2LgvnB5pjmhnhGMVk/fs9YnWzj+BguaDoNQ7uQYKVi81KX9rZXU9c+TLm2azBNAqOOI66dRxjbrFQ+i8IKDUqD4xL+SbbEhkXO+KmRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3QRzTBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3QRzTBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F96C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748639393;
	bh=64X0d5NS/451g+0k7YXrDXsa2YElEpo+jA6Il+6UNw8=;
	h=To:Subject:From:Date:From;
	b=s3QRzTBHGs0mq17L0SCShlZWg2K+ZyD0CmQqwQzUg7HOcpeYa7DiKMI+VSUEu+Ov8
	 UNzA7mhiUeFzQFmop3j6B3Zi4sqm//TJXK5xtkI3bnB1SgGlZ9B3M5s4djnumKnT8v
	 ZERrrTI7NVWLTA6PrL2Lvc1MTrDF3AHbp4wb8Yj99SB0CfOFsllRraYkM3NKQG+J45
	 tainhL5AWjFdPd6SYj0wTkmDhZzqlt9j9JltDIcd/G99zs5oRlgEr6g9sze1ZkFdQg
	 R2gcoIgLtRLe1aONiWOKkSnlcKRytyGO6nmGbJdTWOCuORUuumtTKgiQJ4YlsgLGzl
	 UE4AkutEv48ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA0C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863939357.10338.8809270491319696286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab716f5f11ce14b0f22a3bcd430abc83a842d415d28af68e31ac35f9b786563
Date: Fri, 30 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748639393
