Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6FA2AD1C
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747360794; cv=none; b=XMTN9+fVgjaUOmdL0b55ABQYY80JlNyWbIY7CkMMiBX3o/s4kSbmuQSXVfB1c1iycujg0wf67CA49oaM6QwFztgVsm3t+OICvlZ8lQlnvPOyo7ArKdmuBm8FPsf95W9ucUlxLO/PTceE06YZ4BIFtaVu3vZe6y8gQRYvQTginwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747360794; c=relaxed/simple;
	bh=2k/RsMY36zNS0DgnzCfNFZ4pDUESwJ9TtsipsJJGeVE=;
	h=To:Subject:From:Message-Id:Date; b=RuKx1Ez3dDmYjwHcsML5oiJhFZkZC/+ouZdGuRHP9mO7B8W8fVN0hCLVvhuYi0bliqjWalJF/fanORDDWHF+rX176wHKt8/hIug8MMkUqEV08DN70uvKxPK21t3HDUq6iGMPaHXB/lb7hODOTOGdHCjHedvPNFeS20xsRryo7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk2zWgB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk2zWgB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9343C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747360793;
	bh=2k/RsMY36zNS0DgnzCfNFZ4pDUESwJ9TtsipsJJGeVE=;
	h=To:Subject:From:Date:From;
	b=Mk2zWgB6+Da6iA2itgMp3PG+UJYfNWYe7J1rDHHMRb3lgz0ex1JhfdKIuLLOjLJRg
	 rbLzrwMMyJVdwFhdakexhIYtylqAr1BdJb0ZT3dMBGWN7Xxz2fdI7mTv7dUjlN39pf
	 NcR4mPcUKm/fKsBxzdD9OySqFq7tH/O4s1AH2BD/Dxe4N9N4uybg0O1LewW7aIDMul
	 Dwoi0yxDRKSrPBElgxJ7seDthKRFado5rGA5UD8xd4SgM2p+QjUAhbh9KsgCqB5AfZ
	 NEtHrlkFNoUcAGdExLNi+xBo7RnJslVw0Yiw64Y2ldniVnp1JV75Yqlp68JONNkp1q
	 KmnFlEwROSkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B30C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736079358.6782.17189589795270400631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88bd71530561975d478ee12730debf49b7a8f64d74b6ccabd7c9220eae78c0ec
Date: Fri, 16 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747360793
