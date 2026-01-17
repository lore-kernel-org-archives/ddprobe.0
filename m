Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CA3288B8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768625634; cv=none; b=V25SaBIxOPciWiEFO73lLroUXhFrIeYjulTqAOmlnPhtw2zExItjko9G8H/wNzzBeu9J7zEKSN+KaOGgEEHM7g7r0wLVqU7YLzeAQ0esOrCZ4vFq7sc1aTTqOETqSonyJLX3D2QkvIOKO1ceCm09FcLtkvzmS+X7vAGCUMQ9GP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768625634; c=relaxed/simple;
	bh=+hMieodcyHI8PvDiyIdXkosPrW52v2pwVa6+wgR+bmQ=;
	h=To:Subject:From:Message-Id:Date; b=rvOUZIO4nYKwHgBWVEtRBLlv9hRzvvxw4CYxONHG4RqMFa49i3ZrQRGTNubkEW042s7d6JbNP0muMIZlqpsAZnPq8JONVN9dLWfGjUoWRgWyutzioHhLaesI/LNz7qWJReknnmJUsGOEe8g2+nHvKfW6yvGvCo7IPs5MGC4OLEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSQaZ+5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSQaZ+5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7438C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768625633;
	bh=+hMieodcyHI8PvDiyIdXkosPrW52v2pwVa6+wgR+bmQ=;
	h=To:Subject:From:Date:From;
	b=oSQaZ+5JG9uoBHkIDJgkA4pDsURCQseXoECJzuvYxw2n4Gi5V8eLcHnikwVW5pZe5
	 Je3bH/I+87d4WWzxE+bcLCid/E+mQY4oOcwkQ/vrddRBSc2hYARypK2LnkrOCfdiQ/
	 LjcmylgQ8cQ/vxuG4zm2vsTPVZEYUvHje62/qfktDp9MSzPyYF+EnK3JvinMoOyNc4
	 eB7nToktb+hni0zbUkNjRaF/iuMPUC0ghg+ur+5P2vNTvLXbUAIQDEf/H2hc0wvwY/
	 czYNELaWMFsTJNLN/aE3BFeA62XxF3xWe6b3wha1PSKuQbmHSn0fCR+LF5hv/oq9pT
	 O0GoBs1JFz1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962ACC982C5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862563358.5169.16761456191157362005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639c0b5cd719958815d13c481023eac1f4239f4fef6e833ca683d74346f496ea
Date: Sat, 17 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768625633
