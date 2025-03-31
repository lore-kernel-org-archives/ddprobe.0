Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC34757F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743446394; cv=none; b=GJnN8yEKk772OCOreBFiXorXvZlntfWs9wgv1QGAA7jjXiBbUQ+8gN8P9HiWrVzx5CHoQvgH/mxPeP6GvtvWk4ASx/uU0gL/9ZXUwpTGs0qXHS96K/wHeJtJitYoLSLoEZo6nPEt7yZOtnRQsM+X0y7RJ8bhu8kO66ZT4vD0AEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743446394; c=relaxed/simple;
	bh=yFWMJqiVO7ZQJ89gug5C+WGGk84g0AMx24l/KG7GU4I=;
	h=To:Subject:From:Message-Id:Date; b=akylsg/czoTDK1rWvnfOjJBX+ijC2kYUIaUZhn1U3/g7o9bZiXY7DZyBSOBdtQY4jCHsOWic2K8+EIEA+fb1xbmLFZjhunDwz+E+85L71Cn/ZPHKHWRTbdVw59C0e9yXlebGR/SRbUMBn+3EjgeyzAC2NVQ7TW/ZSfNO2nq84ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXMAqryu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXMAqryu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF805C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743446393;
	bh=yFWMJqiVO7ZQJ89gug5C+WGGk84g0AMx24l/KG7GU4I=;
	h=To:Subject:From:Date:From;
	b=XXMAqryuEaGxVIGaeeqkuNo75H+OR20GJZEtqs3SEJ11wraEuPFUrwO58LzYf1H8z
	 aeFpyIq9i5SZIG2RFIiB/kwS7bcP1S+NCCiOaVXlw9QQ8k90UfngaZ5n+QKMxblw5S
	 WfjOuSyN7YnXNXYKLUEmGlkCuM2wnGe5ybJzl4/i/pOCmcm8a74NRFT/LzrsBp1Kfe
	 aXYUse5NewPJi+dYUXO5h/z984KHcZql0stpCWQFNTORFKdFwkoZTR602h7GkIM45l
	 vk5uLyfTmSzlKk4xdA/uEMqGN2aDQS67p6+754aoNPe1SxKS+8MbRHv/wCc+N4yL9U
	 8Pt7Mi4nTuiIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344639359.17011.16692925641370860618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116c2a27f22a71353711574953eec269070c7eb763570c4f86bdfc784e5ebf35
Date: Mon, 31 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743446393
