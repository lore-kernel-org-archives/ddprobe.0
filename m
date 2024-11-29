Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DB156991
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732885554; cv=none; b=q0GGAjagMH9+3XZh8EL+KRIqexDnLOXftmmKoM04SdOpjAQl5ge3fg9bYmDIQz2aI7yDTRzAPj0y8djLUTGEVRggXKv7Z3CzynQ4r/sIFvSlROmUdRQJ3+MJYFiG8mmLVk+rnPF2atQTLXzopjpWE7xmaOjDKhvAD1GCzpijtUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732885554; c=relaxed/simple;
	bh=KDx+O09ivCZ0u8pNrNseHhWKf5pHBf3CjpWYv81AAg0=;
	h=To:Subject:From:Message-Id:Date; b=sQfylNR4ZALSx1IcST7OWCokGX/gG9LUP/NjbI/67EFPYmftbuC90mk3DdjvYzQEQhlJ2+ODjuW/GgGkfjhdQKKtyL0FDT+X84qeKYDrXLqbZJ/8JyCghqDGG0Ftq7psPukQo7eP3iU46Wxbt4RL4BpNxjebXgffXAWuJMtvxkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u51zCwzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u51zCwzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F3C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732885553;
	bh=KDx+O09ivCZ0u8pNrNseHhWKf5pHBf3CjpWYv81AAg0=;
	h=To:Subject:From:Date:From;
	b=u51zCwzDCXixFcxQfjJRNW+yf5mUzxNnOpFVGmXnv4WsmVsWO73CJ6/2N68nTP5Ct
	 +ar6oYm3gitTjdmzXnII6GffRKdZgQC+0o/H/B8Dx/4ELeT/WjUwZQWCnz+KOYowqN
	 ThAc0hL4zL5tzDlnTzPYAJxBd+6NmdbBjulrmrRDnHlgQezYUr2qYxa+DX+NQzsp15
	 xDCR1/MyEjLklTvSTnWDt75M3ocRzld8ysmk/Vf3Uefk/2TW8/yumWL44ZcHo/yBoo
	 ZaP3F5E5C5VF5eQgABi2a+GzVIWmRAIaOj0Ei5mz6UG2+KMOYNjgJGTADSzxJiC9aN
	 9ejBbPVKWCZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF49D6EC06
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288555362.17900.18323081494685278231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab5631b6eebebe8270bfc6f7054505dd8bbb1a5d4ce812a5064cdad1c38785b
Date: Fri, 29 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732885553
