Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A415667D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762640394; cv=none; b=A3TORdruRb11EKFwIqTWeaV6gkPV5CSsLAKppUKJTK66qgjMivxOCFt/0TMcgoKJZXKQ+bE208kD3xOQ9oQc1lhXqumQvBuIt1xHWx4hJerf4zllYAiTs8B6qNY4G5zmSpQl6GyPtHz7n51xYFh9tVBTTqqrxVhiIYfvrK9xWQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762640394; c=relaxed/simple;
	bh=DxFOekmxco2TG3UYSVJAoEIHHqGRJf1YGTXCrbExtt8=;
	h=To:Subject:From:Message-Id:Date; b=Vfu2/kQAKjuxhawXDhogBno2wzpGveHvTU0PIPP7QujhSQvryg5BJJaECJ6Fx/ZSFueerz0N7Ga7tYdHyzU9IjW9XlNk8uGhrSZ+LUPOfS9oWQdUSywKGjXKiyHi+rbKm8rW9nx1nnJJj5IdmbIsyaJzKC62ch58lfL/wxbbFtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r957lS8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r957lS8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A9C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762640393;
	bh=DxFOekmxco2TG3UYSVJAoEIHHqGRJf1YGTXCrbExtt8=;
	h=To:Subject:From:Date:From;
	b=r957lS8L2I1fLWo0BBi4A0rfEyQFVxnXFKwutV9V2+r/hvijEuBDs2QjhJ8EbwoPP
	 wZ2+r3ef28N0IR5YAJuzw6tsyhK7luyoiaXyJ+ykX1RjoTK1yqkd/UO/qTTW9NJjY3
	 YSG9zctrbir6wL7iU+JJuaxq96xDFMrCTfoZshmgIPB07f5DXGqsSilSCPft5mHIGN
	 W+659Iaa4cUCluXOTA/2BwF8G7iq0k40ntXmhW4/F4mIazRwWjxczf6uZj8krh4xcq
	 bOdxm5F+6Kh2PMA23WVS8TAQVKQ8gm1MbIDZn6d7Ur385Ws45aa1OQyGLgvgYZJjWu
	 jiG+6d0GhBL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C450CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264039360.23218.6167963186950304717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f509023cf11206fbc5f61bdeff78f09e24f5634ce229667a50b754023ff11def
Date: Sat, 08 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762640393
