Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27876442C
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735020955; cv=none; b=dMW/6ko45sfd9WREJni8/WmTgJXoibKnQg5AEQ4N3ThA1uU93uWpzODcRnS69TFBCZtVT6emuDV99YN5+87TBZNN86ZSh90sqZgzGaZgezWu/uz1lBA9AHjI30Taa4y42VZH9CCbETK8zMdN29MYaw7fJBz7PM8D67AC8aS6YY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735020955; c=relaxed/simple;
	bh=xM67xDcwjRTYtoZifxDuXi6DHxD3KzInfVhYzlO0jAA=;
	h=To:Subject:From:Message-Id:Date; b=HPdLLiuFXbu0CSe8a2k710EayDPitXbGYF9ZYr5OPHp4uxatBGDDvunVNSmgV7cbCi71o+OV0TOF9N2yvShtY6nGkH+L0OytRe00EwcZIrK39XR4BK5JqRyZNB70PQKIZyuRfiCfu/kyXMMLxoQp3IgZE0xUoYwrp9oVmwq8Np0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV0v5FYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV0v5FYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F70C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735020954;
	bh=xM67xDcwjRTYtoZifxDuXi6DHxD3KzInfVhYzlO0jAA=;
	h=To:Subject:From:Date:From;
	b=pV0v5FYNyVMbbtlh/nVC+lqcJYQ+njAxOZ3A82grh2fEKCotLx3w9izxx5UjkHegR
	 FlYxG7c04pWnYHUa2UqKu3L82WchOTaVt9MYZl4DvGVYp3w9DRdtxJZWJu3tN7oF7O
	 aVyiwQ2HtzHIYsbpQhZM5DChu8W2yx6O4G/eGam3NcVfPF/Nk3Mb+fr6k7NPXQ8edM
	 vrWVKXdDtG0I8J8n/4efWXtfl3D5+EtbZRCSKhWH+1irRxN8ZsvX12ySpLAQCttbKc
	 ohoajX92T3FXksHqB6Xf120OJnnICZbL8uPTTjAR4DB0NtXUAHx7cDcdsEmBwO7UkS
	 /G2vDT4aVGWZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA6E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502095358.28513.11986201290299404505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a4aff2a23154892e181cfec6555d48ff074739add35f46aa34ecf3ce0b7469
Date: Tue, 24 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735020953
