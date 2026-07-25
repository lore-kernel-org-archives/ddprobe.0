Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FACA768EA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785004234; cv=none; b=TdvPvtbRkrSe7dyoN3CcKkg6nGp9Zipx+97jZuoCwvsFBQAf2BXT7sVILxC8M23g6HW1W0UlsW3tUB0nuknnGWL6y1EDk/FEg0OXicpLnb575GFd4SKp+eC8O6IqGIVULt2uDI8z3+EcHP6GRbqUg6bMGiz0HXOsyPcaF67Y8hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785004234; c=relaxed/simple;
	bh=8UPEd34/N7TvHr6kdLgfk7FyHUcCmZPffSC+bHwYn7w=;
	h=To:Subject:From:Message-Id:Date; b=bjWESOk9f+1RF4JSgoOyMwg2qcU3I6jBABFgICs38xdf1KdijLagDjTBWUMZ/3KZtDiLLz/ze7Le/P+DLFKOyVS6XmlEITzOEWdi/yorEieihJ9SVj69MSW4u6Q/JzIQcoQLtiPC3FtU21H/PX9ybp4/rlKMC98qV+gCbXFsMXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a61F4iFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a61F4iFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785004233;
	bh=8UPEd34/N7TvHr6kdLgfk7FyHUcCmZPffSC+bHwYn7w=;
	h=To:Subject:From:Date:From;
	b=a61F4iFsYxpY09S+HAwtsIlv/rWMKkcJZUqRSayjZWAIC7cPoLImTXAMqELMaFQJ1
	 Yf2PFBJbmyNIu4iII6VJjspAO9Awpg3QLb5H8jQJIVp/vf4yHFZzZkOE7aqnsLxY85
	 ZPVPjh+owKACcqivy2hWzwm6bhFLR/+NY2YmnNrk88Z3y9DuvEYYLqF9uHsmmrJyCh
	 VqEO7fYrsPZSpRoJzLmQ1yEgaW/LBFpm9jQX+NxfUZE6CHchKK0DQbuPdChIdtwfgc
	 7bVK+8FPPk4tFhUSCnv5ybyJDX5sCH+nwvhPo5KG4zMIhQ/5tofWvk57dDLPB6ddU+
	 qchB5Hop5tBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB728C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500423368.1762.12005918257306826585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9dec4ccf7e153e6124650e4ee5ced4ead4be68fe918065b82ded38841fd9bc
Date: Sat, 25 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785004233
