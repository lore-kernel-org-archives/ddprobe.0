Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423C31C5485
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751813394; cv=none; b=rj9d3lleGBk9x1nkoq22PAhgqTo++02fedoiAJtKWQo8kTNFMELTFYO08QoMFCqHqdpXsY7a3/KAF+xAaAK2LVpM5hC0/T9aAx1IjniFO+KxEZMbyPoFQDCQ9ZoIWBrcDlnpaHekItIZr3Hx+0Rljv2nwV4IbvfkOZb2IV7xpo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751813394; c=relaxed/simple;
	bh=MNpkxyqEsfomdluoESOeFHc2DW7jzSkBvN3tADnCZwQ=;
	h=To:Subject:From:Message-Id:Date; b=Ly5pNjbSfCkRIHodnUS0CfU22MlWj7v2zjdCbXx7MRiI2dbWjjd8sCKofehzAVooa0lGLQbCzECQH8kmw2p8VrRPUOuuQwGPN+XMgc3YHCtuQV1rmjhxNheVAvQWbYO6GrwLdJIqva/NtDfOoKObYhDpaU1ymqgphi6r4UAqUcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyWrUeV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyWrUeV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB131C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751813393;
	bh=MNpkxyqEsfomdluoESOeFHc2DW7jzSkBvN3tADnCZwQ=;
	h=To:Subject:From:Date:From;
	b=ZyWrUeV5ZgxucG0AfRA5Xab2duco4c976iYEXUEBXRsbF3MZB6fCk2Aih9UrCUPUv
	 uorZ7dzoU4EqjjmSfLUAMHeMKgURzN5MKmmWBO+DZ4A2onqiNKb5m/NAJ9AUCuKtLf
	 mfg94/kp1u8JaACPWcQOQEwCc0T3+dfmxgZeXEKDqdVECXyyQkTwl4nDwANy3CPJUr
	 PGIxE68WnAdIy29QeZG8aR4jJLSGf15nDXKMUPHcwTA7X/9c4GOgkb3qL+wcnc9mEC
	 FjZ/A4AKXi3tRxY4K9sB77QCBXsGGd3KPQiNyfFQ+tE+H+pWIJjzKtuBVDC4ML2EOo
	 u88O457CWslWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E71C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181339357.10656.18409062460288936490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfbb9e2d6118bf8fb523fa1339b26731a073e0d57414a2f90c4f61da5b8d236
Date: Sun, 06 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751813393
