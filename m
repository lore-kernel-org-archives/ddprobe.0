Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D4A3AEB2D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787206234; cv=none; b=c7tXts4qYbtKZGuzpzgBrzxEsyP9hDbWm/a4RV7YXDvIWYpudUzhLEa7fKZSZa2FhsCLvhZHYU1FFwEjcW2Zxjxb+3qHVFGIFSUTB6/9dAHdQLS8gkCfLJhQKMWGf5sz+ZXYk0iDAQQsu/tfgwx8OwpqliOvCmsG2yUlldhmW6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787206234; c=relaxed/simple;
	bh=aGgVbv1s8uJjB4UBKLTAf5VitnO59Y+DWGYYI/Ph9k0=;
	h=To:Subject:From:Message-Id:Date; b=MIz6iCKZ0azTlAvNc0X/pry6ldOTJvCTg6fTTepsO9Z/aGb5ZQ1HNFC+rWgV/O9wdI8nfarnTq+bCddZjelJvRryTstw65Z881OHoAKiMXjlimeYWCzd0VQkSHpIuTBQvgbf4Jf+eImXMgVMF6wy47chqHrAT+E0GT1Pdvrnfx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY5zWeSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY5zWeSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B6FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787206233;
	bh=aGgVbv1s8uJjB4UBKLTAf5VitnO59Y+DWGYYI/Ph9k0=;
	h=To:Subject:From:Date:From;
	b=PY5zWeSD+TdaqG0NofLJfd8od/PFv4I7ec6mCckYNTiUqQupPR6+P3eoofwyFfVaH
	 Tsl2dsKAsVYPCmomkZKc8ZmofO9Ug2wvqjGfLtVCTSA+sy3/f/Mka52N2QVwfd68Q4
	 +ST1MTyllUpsK/7GYxDf+XtIh2ulgPaz8PYySL6Y1Bujxfy2QuZYm8AmIy9QulJArK
	 IFCIX+dYn1XXGLzIC1dcuSLUoBDHlC6qJW/M/9eWUnWiOxOFFqjJ+LiX0mljj/aQa9
	 +Fp4xgxcEZ4iyW/13n8rVL14jXRFNRoCVvD2nsH5+vWZ97apIjjaFp+TeyrtDim8Nf
	 DvLj1o9EbHdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82AFC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720623374.12296.9389019349639571500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efa124e910f3cc7f936172e89b3138925a1c8a868e9565befb1b739d004df4c
Date: Thu, 20 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787206233
