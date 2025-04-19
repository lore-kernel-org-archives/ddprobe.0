Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B501DA3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078395; cv=none; b=ol9HPLQG7yxPDLZEQlK1/mW17W9xY4jQlHgziX2Ud4cl2eFMugOL+qphdLilfDX/8x8p+1eXQ66MJC3DkJBmrwoiGk0eKHJhk/GpTT+R4GJ5VoN7zDdmh7m6yzrhnZEjksUyk4xzY2JCkfJots+PwbzAnjEoqTBx3OIQKR86lRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078395; c=relaxed/simple;
	bh=UWHL3VXFmkORy3XOvaYTruyGe1DCDlhN65wABsAYIe4=;
	h=To:Subject:From:Message-Id:Date; b=rCiqQmOYcQskTfQ5jNmWe63iIiyvXODP0UeqpfEfBUdm3lpIm9+dixR5h4gUBkbI6vcKtrh1txTuFg/ep7LLOaTaZrspMMaMf+owVtqsbM+mN+HWfAgwydsqqzhvmwDGFQjinSXI78vD5hbR1+cpEW54tpB3U5t8GOWwP/KO8co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDQjWMtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDQjWMtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EAEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745078393;
	bh=UWHL3VXFmkORy3XOvaYTruyGe1DCDlhN65wABsAYIe4=;
	h=To:Subject:From:Date:From;
	b=WDQjWMtMNZ4wls+rptiisHSwyc8qmX1jVJH6/r6kOrSB0lO0VrPt4emKpE5zNZTTb
	 gmnCUihYwxPKPZ5FH36/aP+lKAhA6CKiWX9ou8Gqg4kpBDZww7uaoyYdxetpcZOhFG
	 mtKcmltta91/GvvVB9yJbNnPLw0wuNTtgfssbCzOryGITS4soE8EzpdMWgcC+A6rwz
	 H+136yjoieWtOsM6GTmwW93L9IoJ2tGtXcUT0Tu09uvr5JLYo9yPfrZ77mCzaOKYJZ
	 B8rNf0TJQn3X2EKBc5613hf3ARErxC3Y8EZN6OgLxunKmoAoZThSXOIiusT3+sPdJC
	 UUl1LNQKswD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B4C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507839363.4615.11766155766789014831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64a841d8b5e88eae550251ba136126851337b446221da5f0b65460ab45fa43f
Date: Sat, 19 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745078393
