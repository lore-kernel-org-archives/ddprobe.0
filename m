Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CC11096F
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753528794; cv=none; b=WKE8TMwJ+3TUYZibiWlo+HtsU7WjDMWBxjngYTq41ZA2JjI5fBSH+FdPcKMXAoU34xjsbKmJL83ArYQwQMv6jK2cjrawxXBbGcnxKB4bix/8dTAwB4v1sN/4FB1GpTGxhzWagcbww/E0D8du6UX7h4q6dseA+wdK0ph87QTEAj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753528794; c=relaxed/simple;
	bh=Q91l0gvMZZ227tYUMRXdngrtM/mWHQP25ff26p0h+lw=;
	h=To:Subject:From:Message-Id:Date; b=kYiaV90QSjf9Hx4rfLRfQNGt+0Vp6nZGvisMzwV/oCqksTxwIiraek6t3hhXFyXvej9GNa1ZY8pijCO+ws7mzdbO4WUml7yEjPqKkoPIMSe/60XZolweV4SUrRdjYMkbZD6vL1StpmVnls0CUdznJlcL1L9TI6qcyj+3DddliL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4vTeQSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4vTeQSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0924C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753528793;
	bh=Q91l0gvMZZ227tYUMRXdngrtM/mWHQP25ff26p0h+lw=;
	h=To:Subject:From:Date:From;
	b=K4vTeQSGslMQdXaL4Ji3gjwl5mI76xQl5ZJ20axBfoZqbH1e5edV+C7MM5BIcThdC
	 tYYU54fdxO9U/+PZGrpgxfsDp7LixW1AvO8jVgkDfpuNSIPsKdPITF27xC+7FhoQgk
	 iRQjpn/e4DUrxfURhMtYpTzTEGhQIzajiN6Dx1IvyvG+CsDfMjGt8cWll9OSqO2MT6
	 177QwGqE1v5tJZWFXMhm1B0ukRsw7uFslSbPG2IOk1nd0D6mc2NdBBHCDdv+tGyINI
	 XFxEJKLYgnn4EIUFO0braOPTsuhqdhSsk7bXM+qqn49ULtHxOyLrkGJT9nNVWbUF5v
	 EFIErBEpxYGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23AC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352879357.14845.3300722350765236765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736d4935d2665646660967a925c49e6431e6f7244144a4e1a79e368ed0381357
Date: Sat, 26 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753528793
