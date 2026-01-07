Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1133328631
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767816233; cv=none; b=jQMNMUXdzBg3xaIz6cj8opKJ1ViKEi1FXTUD6ybCQVfo2YkGuILczdd/h24DlyiWShD4+QhxmuZKfVobnhtfiGTvDpm/v7Vmgs8CLDPDlaf0aTxTGmaPoDRDFlDtk7fsrtdvj3qupcvWFQg6uB8A9U8eO6nPh0cc0C6SHRPTmKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767816233; c=relaxed/simple;
	bh=X1Romm1NDaWWO79S+veGVWW5zKNldfhvi6NVrlBv6Kg=;
	h=To:Subject:From:Message-Id:Date; b=nMf8TUVfyuX6cR/koG/XqnUk18+eWaC5JYgKEr3vQN8bKsmFOSwsSrPlPHD8EzUwzfAMz+70qobMjR9tGtDWUNMRXdYPaJCy9lQVywrRtQENqDiRbOO2Ubw5HNneWbbOD5X1K6pbTazidfNsV66MwLWMd4jvLQwpnmIaPp2/K1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNEQuYlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNEQuYlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767816233;
	bh=X1Romm1NDaWWO79S+veGVWW5zKNldfhvi6NVrlBv6Kg=;
	h=To:Subject:From:Date:From;
	b=BNEQuYlDA3OofJKc3GaPuAhWHFHfSOcyVewtwy4+hafKpZlW2AXU8IVrM1o9wwylI
	 v9azxXue0WBDmT6pv2ebH6qkGUdpYhD9LnQtyd3aYa1Ui6mhmfPSZI1srEB256jS0P
	 vwVzuYTCcAGGAjYzgTkokfCf16vmCkJNQZstDOXK8dQlQcLFTB+vwOu1m1JmhyJZOF
	 K6k3CAMRl2z50tRi0Ccm76Ri2IbIuqmHYDVWZw7XvKVdbfX1FVHNQQefOraS+n2BwN
	 +pwSnQHlzwAskb7u1owasRwEwrR3zBD9zu9D7OIB8kcrGz1qir7SizghxN/s3p1SjB
	 mdL+JSq/AHQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2FD0D16E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781623358.18765.15058937214222719239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263a918a2646692d1b2a11d72660ecbf26c3bc97121d111ab9e6bf3f7a140d62
Date: Wed, 07 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767816233
