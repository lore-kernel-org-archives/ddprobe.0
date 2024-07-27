Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08768181335
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722096954; cv=none; b=tdaQKDqqXg0aYShLOWQMHcIgIWnuCOJY6EDrWmsoVposkF8AyTMHQYCdklCCcPQRBSKf1g0DC14CG8N1dxYfBMx7eFXZE9ww7qlBrTiQNaeBE9nz+ApDGB2XSMMbF5M4nuC8Mseex2A0D33yHCnKz5g6Zb44128buArOBaSM/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722096954; c=relaxed/simple;
	bh=wvQzyMH2pBsE42cIv+DKpS3UsX+FO9aYSfq/yCzxtPM=;
	h=To:Subject:From:Message-Id:Date; b=YxexIEjPVohwYrqnkRUrs+oxs5A25V0oeLVKQh5W5sSFXs2gd4kI0g6PCYxeyoeTqOtEnb6js6HsAAS1VFLKcrp+UzIgDI+MgMGX9fGbnBM1ilmqLusx8JKwgDgRfbIJb2L/hG/fYencXOGusb7DpZrK3KY1y9F2nVrEFA7BmJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ges4788K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ges4788K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD9FC4AF07
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722096953;
	bh=wvQzyMH2pBsE42cIv+DKpS3UsX+FO9aYSfq/yCzxtPM=;
	h=To:Subject:From:Date:From;
	b=ges4788KhSgj3Z/VECt6gqWYunb4/N562SiVFNkJO1zJiuKdD1VHJyDn4c0Rkb7jG
	 wmwEbaOKPfzp3EFDVBcrCI5OFOnDed1a1kAEWcn0qIN6Bkr+q5ac/9JKPy0SWkWZJP
	 uUouUYLgW0nJvVTrJSeVXSn6EHIVnwepQOJ9AoVFeEnHTQp19T6X6rPUbhHSo4Mltl
	 xB9Zh7HvZmTBATdcinBDNjxoHE4w3FH4RgM9G+I71irqOJwdBmOhXoXPQYmWEdFWMm
	 QZ141iJcEAbi4GrdZ0Jv43Lua6n2OdrC5QCMJezxPKTQ4mDZnzT057BMyYRL8w84WH
	 781DDAYjIjGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCDC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209695361.17564.13462681196144414241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac1876ef554c1b2a8d0fdb4d5714167c565d4173b08c7fa11bd6a63e04003f2
Date: Sat, 27 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722096953
