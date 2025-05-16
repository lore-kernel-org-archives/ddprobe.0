Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B7928002F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747432798; cv=none; b=loxoFaijuXpL6/7ILG7fjNy+I9eEX0cxOqsCTTlp2G+J1l8QettwL63hvg/oK7qU8iZHPU3sG6HjUXXdrtIyXZCZGzAycRTuuWhGaXPxeCAdbNyHcNwisCzcIV0KuVA52lbMts5Em2avtbQGULWQqZ7p6bDHsMvdn2V55KSNsUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747432798; c=relaxed/simple;
	bh=xq5OiN81xPtFSabJM3UaYmY0G9juk67r4hCAi60mi8g=;
	h=To:Subject:From:Message-Id:Date; b=ZRnBVG/+/LhSNd6DMD4kW48pc4FcJ6hrsIDWnjon1fSs9re25m22iCDPRvO7psTgXLhomWOSM83HTAv73O7N0WqaDdpOEkWySbFCaq7Hj7VaGOwktaKYWqUOezwRUayIM1iS7tU9xHIpAE7eQPaX9owuBhbvN3UvGXM/Z0Gvues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD+rJgGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD+rJgGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE4BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747432793;
	bh=xq5OiN81xPtFSabJM3UaYmY0G9juk67r4hCAi60mi8g=;
	h=To:Subject:From:Date:From;
	b=CD+rJgGHNjiI3gJwD8fwiLt+0hPtgvMGbfO1zWkz2q3eTSnK0wHgDHld6vP5Xk4Jz
	 ZWo2ClkjN87f00Zo2zsuplBncFpS4b221Q0NGPG5ajO+0v8FhoBXYavLDhYJx4PN2L
	 4dmmGeOy7gRVwx0SKAA9TRsBVPAGVBzIWZ5n05eKLFwgnmurG6ueMoLcXiYlsjFimS
	 1AxBkTO6Fojr+hGqznzF/VfulYFHrU6oImPaPRbzdpoGJWCumFsM45pDORoCs/voGN
	 l5gwU9j4Zfnv7j+Ite5MMNxrWx66XZZbk7A15x/YYqmms0ffwqJA3616thBSlWCcEo
	 PabhfRWPWMh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B74C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743279358.22149.12571819815279062164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc5f2999fe7dade26a539726033f6baa88ecc03b6071b8a6828cb47f07c17c3
Date: Fri, 16 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747432793
