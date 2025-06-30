Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8DE28ECE8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751297994; cv=none; b=cPyGyCx8ZqyRoe4X9NekJPgQ/ocx+dMuSQH6By2LVDyvjalHpbjNUt3BnKgGW6XSG9QfxS8TXVD2JZt6fD2B6/rLKV8URGqXRM/RhdZXkwi/fJpRATB33UGBLZ2DoMzD2eEk8iV5LICmJ+iUi0Y8Hi1TmMhlqiFk86aXsv1QiCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751297994; c=relaxed/simple;
	bh=9OTCTVRtSgvgdoB9S6fP+OAEpR6EeEIqdmkn3WM2T1U=;
	h=To:Subject:From:Message-Id:Date; b=aFWp+53FpuTckc+w7znzDq0QoA94X8TH7wy5+u9M/mw3lp72un2Wj/WdFhbxjrXaRvCtT2LHFH2lwYZaSqVpq9rhiA6TpAQkmAAVf5jccbDzmCiZ46HTPRE3udpv/LS1hWXg43ER2rJdezpJK+YO8COcRu0AdYkAu9xR9rzkQOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpD2aqI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpD2aqI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D27C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751297993;
	bh=9OTCTVRtSgvgdoB9S6fP+OAEpR6EeEIqdmkn3WM2T1U=;
	h=To:Subject:From:Date:From;
	b=ZpD2aqI3RHbPYDjeR/u208rfpSR8UlsXdzS7i6u/5ImQKaSjnlOEQPwOO79M4Hioq
	 sv/tdMVZR+q+5OMxTQv3X8AqjF5bs2wLTaR7QfHv9/8WdbiEKJXL4jeew1v6bcBgQU
	 1kQVGD6I9BFHiTPKlMesymhpBjMgwUHDOD5XdomcHJp/BjgkTgS8X4FGN1RBya/+RE
	 sDVovjkhHb8YRPFosvm/yxC+Ak8ArnVGD0udZygfAeH1cDijrNfnU2X4wnW2uflMP0
	 Ix9BF3qy2m+48AIhetrGe9wCeBi8fRW8jVV6QFbpJyLCT7nTpu2yv+q23ZkPVulI+9
	 UXI5qTU718kxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD8C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129799358.29889.3577641570952688943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48fd24a72f8da1428db623072bab86cf02a55a7f74ef637d199ea80fc656469
Date: Mon, 30 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751297993
