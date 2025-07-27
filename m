Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D042433AD
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753629594; cv=none; b=HTga4S7ACSoacwi4u3xLBnI9Mu2gOT4wSprWWDGBeytd7g1lAz/8Ip9IrlYeFt7NpR0G5IGqzDZ+WhYcE0vS7Lz4R5TCv/9uKH8b6OL0eOe9fhiKIQSgK5XWNJhuzSAhJGcz91s3BPq2pt65xk6pbYPjdzeuPb82ty3nnhVAyj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753629594; c=relaxed/simple;
	bh=IFJVD4NpoAHEqaJH59WIPI/KxyPAorW8wvLD3LUED28=;
	h=To:Subject:From:Message-Id:Date; b=Iy/rPC3iUtBuHCDOPgsmWpxt4vWtPTXUYms/L2Q1KvuipPlM/C+gQNymW5Y8MY/IpRtTg+HZNyoGFODDebXeLgYCPX+sTpF0y6bF5ibq2NEqLTcuaCaweWsqnBII0f30UYSr4WdS+pVbK0lZTyDcvaE1hS2qDABEnHN3z24uOyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbsdba2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbsdba2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4361C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753629593;
	bh=IFJVD4NpoAHEqaJH59WIPI/KxyPAorW8wvLD3LUED28=;
	h=To:Subject:From:Date:From;
	b=Lbsdba2DR5qDMXLNEyL9cFzNB8VdhthHZFMGg6EzbwruRxztSiQ5zlyaKOvY6ZxLM
	 cxI8K8fACdUF62AI8mYW6fU+QuoWtP3vV+QvVTlhpa+MkcMEeEbIxu3p8cZvO4pwDk
	 WFPuuHepixAEgk5wKO92urdWXi7Hmxk5dm3t/qchoPko3MKlRdaXQU1Wg7Dq06GyAp
	 r36SVx8RUTD7RQiF6NZAM06UC7tzG6cITAPuvMdwqfEKUbr30lYA+s6npAeyemCAxL
	 3/mXmMHC9QpuKIxck/u4Jwzkj/prF4UdH95arbisMbhwn6Kbq6r0Wcrt8xKRof5pYD
	 IClaLrgpBlweQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C7C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362959357.19923.6347927285769683419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188f41ff301f1322257459be4e07033dfe4665ae7ede09dc94c006ef05c05cd7
Date: Sun, 27 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753629593
