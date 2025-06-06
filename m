Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147011DE887
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749242994; cv=none; b=tDto//WY4lQaEPTvPNC+SuEGpWU1CstiM+VO9vHUNGh/2g1eW4Ass2qWjBIrk53fRPUx2KOGnraYgZwfnib4UTvVCYZYY+FtR+Mi1PwV0wsO3EFQk0yeRcjkBF30v5+n5ykabuJ5WVTzSLVSX6A0G6XPn5oOIS1wj0ZWO7dtitw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749242994; c=relaxed/simple;
	bh=upsPIxpZnixwR2L594FdIjgQgwBTK3J3DZalF5vbxi0=;
	h=To:Subject:From:Message-Id:Date; b=ocC6pkVKx0kdYyvjGx6NQlpvpDJluHRi66p4t+LjlEfGU1ojxmSo81STxAc9HqSXqssTgyCOnai/i3GxLshFfB/vmOglY0A+vt1AJrshfyNy/c7u5oTzoSSKFzh0BUDnSsYwry1JAcobrIjtMrUH/Bvwzkk0PmgfE4Unpyq6DBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp2mwijZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp2mwijZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749242993;
	bh=upsPIxpZnixwR2L594FdIjgQgwBTK3J3DZalF5vbxi0=;
	h=To:Subject:From:Date:From;
	b=qp2mwijZ2eK0z73GVGaPC31d/Y1uTVErPBdyLQi5QdkdQp3QSj8oOMKT49T6t5Hpc
	 sfHTcgyXDigGBu5kbZvrCGuzz7ekDPSPcueMADdUsdMjihxTR/iIyMUOS3IoDU6+1e
	 Dlx4sPUgpUMaX3IS3v7ToMznq9g21s2keVn7aK8+JCB02r/UL703lyFd6Dc9TlkuoM
	 ZnpTLzHr2FnomdKN04y0fdUPlGFulWCcskKjYrIszrSG6wP1faUs1SZiDV3s7E6mtY
	 XZlcvvRvyhC6/6c8k4k/XpnLgoyZAhIIWb9dbujVQjAu25yDiK+/GYvZhSgrQYW+e2
	 XH1X8TqdFRb2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F25C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924299358.4072.8512351623971696387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc601550cc423f29b1f99ac8c28371343b00af0c91cdf5e64d37806dc245e787
Date: Fri, 06 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749242993
