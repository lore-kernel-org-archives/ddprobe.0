Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD1639FCB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786617634; cv=none; b=HNRF4MPwX+lEHvHsx9Zv5iPDIhbBwbPByUsQszk6QHh6u4tY1O6AHpMmsAlFjDuNi+hD1Tst75PZ63ZkasfJxoLvUEjQ3PNAE/UyoadfkdsGHpNY1h7xVFeuuIZGRDYJTEAOY/K+eSizpR8SJNW6q3HoqsBWmksjt9vRBF+6FLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786617634; c=relaxed/simple;
	bh=M7lUTY32Q9JrakswjFIVCjq38p/hZl+ytYkoTDVgPU8=;
	h=To:Subject:From:Message-Id:Date; b=lcoWanjnySWF4/ml2TlkD8EVpzR1D6kLKYYtb6bnQFOl6X+VpaDeeqnyKLRoXbH9QdaKk1pjhWrbN9BzT5LY1J4ppCqFqwI3qim99gEcDMVdoih9IXF9X0vj2dIctCKhVZpuSERnXf6WLMA2uYq8BvZM6hBDujDOIDWKs7X2WHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtkS1kMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtkS1kMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D911AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786617633;
	bh=M7lUTY32Q9JrakswjFIVCjq38p/hZl+ytYkoTDVgPU8=;
	h=To:Subject:From:Date:From;
	b=EtkS1kMgX0qA5uwR92wZ7/AWqnz9h8TNyBIeTQorO/6hFVbHpex/ihzeaBnO6qf6X
	 h6lTep/iQxfotspLMuc3PuWc7vi1oKWfQakh4ip+EDPlFxlcym4XJmOSEBNqp30S2U
	 D6EUHfpTaS8p6fK8QQJvnc7PSV8GBRRteI05paIzPKza4WjLS3hbOeMp1e1q5BcM3K
	 ogdI6URUAUz3uByO4a4aHR7WWfcT7w9dAb9PR+Cr3rfRZgzL2cutG6MuEvZnV32QOq
	 DGNPMreE5+ALuv+OxwWAAQttZz4ivx0Cmu7wZeEphXskbx4YZqPTuhLW70epAZqO2d
	 G1Em9MU99llhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA22C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661763369.13691.10706916259746348985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceedbc250118e926e19e94f0064bcadf605bc53f0d436e31655436bb70920be
Date: Thu, 13 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786617633
