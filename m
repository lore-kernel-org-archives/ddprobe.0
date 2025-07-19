Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B501EA73
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752923994; cv=none; b=d7EAIMsxkXTUPaihWeyQ6Y9bzg8LVK1Vnh6n2SZxZ56Gxfg6nnu6vcHVvdgDI10kyGcttIzfPeTC4NeGBiJOsbJ/9JIyUTt3GC3Kyzqt0Yxei2Oq6sDjcx2Exh7zyuoP9P3mJQ9uHDlQPaYGPWQHa+09IiSc98tIlfnUAUDyTi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752923994; c=relaxed/simple;
	bh=bAsbHQWRwL0TJL9lcPMu4IKfbwxQcBHnaDmyNh/CMN4=;
	h=To:Subject:From:Message-Id:Date; b=hlsVxu/kHHJkL+liUEOahXOMLuYy1VqdJRBPnznKxu/lXl7tViWh7GwH/r7gq9ompxp4X4bkhF5pcbeIsFytRWgANkM9duIxX9rmlLDS8qEAWXOpRbH79j+rhysdqZziHa2DQ/um+shZqoZTegFwYrf604+ClxTQ16qMCc0bcfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVeOpi/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVeOpi/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752923993;
	bh=bAsbHQWRwL0TJL9lcPMu4IKfbwxQcBHnaDmyNh/CMN4=;
	h=To:Subject:From:Date:From;
	b=GVeOpi/MwCdZrOv8WW4EPlJrwWQ+4RW2bZSrbhbp0m1fIdHWrLUUFOeVkLnSjXqHD
	 wpIOEUnRD6PYCfbJuF5A6Da/cAAnWmzG5a4Vf22/4Ma5VEj64PaWAy6lNM0cst0nPU
	 tnbx/mIGG0cU08a4l1ZWsn5q975ZM31JeE5Mpm7D3DlHLexzUXv1b0eXjinySRxiuS
	 SbO+ikc4R18kzmzH7WYOjt2ecbpmxABACJ48jdX+CDTFX+4KJRXqZptK40pppycT9Z
	 EQAyA/W3twuiaFBPi5vX3owwOx5xTI04lMLM+xf7hpmavHZ2O41b84CEVXJQaSKm8g
	 pAG3lddJbmduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF53C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292399358.1342.15569307164032996581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731679114eb8c1f08d7106dee5300dac80288f7c93bc436c8bfcd6cb206c555e
Date: Sat, 19 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752923993
