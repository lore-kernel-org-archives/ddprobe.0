Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CD4322B6D
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791181834; cv=none; b=Jm+AzpjF7KO9WraSER8sTrNuVaIh5rTyiGFJ8mXIuR9OyrRF5VK8TAHgropuasnLp6ecCYIFGCMgQfXLt3fpfWqnhgLkt/T52eAem1WJCYhe5hMXv+WzpKhr8Nj60CvuK37Vkk0HGUhRC8dZNUekY06enyJ+qOxPO0QJVGPrDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791181834; c=relaxed/simple;
	bh=Jd9OhUSkmjZf2Vuk4h2Nd0YASb/X2i+WG7mjoTfO4pI=;
	h=To:Subject:From:Message-Id:Date; b=C/QeU+yz84D7ICw1APqJFlHk/+gwyh0KB4RC3D+0ukzQKwLeErPZ9WGMFU/zptGVHZ2l5sxZjJhu318THXvjrU72Hpr321/KLZkWyvjSK8Guuvs5ibvdJ/WfXSHNeNWoxhFBtessZPZhJjBmelPu2wP8EzvWqi+syq3hJ814Ja0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeWza6XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeWza6XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41ABC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791181833;
	bh=Jd9OhUSkmjZf2Vuk4h2Nd0YASb/X2i+WG7mjoTfO4pI=;
	h=To:Subject:From:Date:From;
	b=qeWza6XIgMaX11VTImWEA2VEA9X4LoRwFHHPKxKAPnfMUjDRB2IwUmAScaIaUUx5g
	 utOwwn4dSkqxe6Mbjy12InC/svy2YlOonujvuW0O74ldH4GZT+AzNtUZ6B5BPiaL1N
	 ek5K4bLI5tnJ98V3lt8WAx3Wmm6XF/6Jfgxr84udwD3tG2Q34gwZaSYD2CcVw5EthG
	 ArRi5muGOY2t7V/bp+xfa2cqBrDn1XAiwXpVgeIF9IsIm41jsHulkfkigBznRx0yFP
	 hABotOx0/O7j4GWoyqMEQv11Up2e11xU0IY3O+dSMSrGBsFK5MfnZmZCf0TDyjmIzX
	 uibsq2sBGK6Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC11ACA5FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118183369.8750.5400354750650460077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909ec3d7c3bce454f627696556ffaa242e6e5e3304f1019c89c0eee4d703eb8b
Date: Mon, 05 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791181833
