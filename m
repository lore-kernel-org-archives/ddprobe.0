Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2631F4CBD
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755916195; cv=none; b=Zb/KlG02RAwDZS0E1SFfdsnWL6bm2XXXZ2VqbfhjbT54OhlPgQQLE1Ygn13jpAA8dd+2MVfUy/fKBAvFy2OqMzvdM+YZwRRSQ8+IcP2LHupd3Cb0YdDhfj1vrTDgM0RetjR1RTLLIPB4UBzvxmafMFFhY5K8OG8+a8NBxRso63o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755916195; c=relaxed/simple;
	bh=jZmpnet2H6IKUikvlm+r8YodFohokeGMAQPBWrR1tSc=;
	h=To:Subject:From:Message-Id:Date; b=sY9A2/GPIx1gve5V8b2i26jS8Y26MZt9T4A4ESjqYxU0MOvkz/mMqAWZ1pSSIWBmooqZCS7oII/TXpNnQLSumpytqwPxORw3jJxpi+I0Vl6b/UaecWX7KexEhQjKc5o/ymn2rWhU7cz239sx96zNqj2cwq9oUaQb92rDXdoH5FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBIvAAAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBIvAAAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755916193;
	bh=jZmpnet2H6IKUikvlm+r8YodFohokeGMAQPBWrR1tSc=;
	h=To:Subject:From:Date:From;
	b=kBIvAAAYC8bMjZXVFygoqF6AkxZDGRhpktwArD9mmoFypdHStFPR4NYemzuwMmv03
	 7Rjql04H1/YrNsFFvotdiFrICF663KJOa+5Me7PmHBw2p/MSbWg9B+X13yo1ZpstCP
	 6EPb2QzV7dgEhRhbaCZoPojlU+/qWSk3NkOTl+hoq0/EmXg7ZhTm4syZFp5A4E4IFs
	 zt1aGa+63lgHI8RFxJ5vixK/VjARaZe0FpniAGd/LHXU02p16kQ6RwccLGekxxU2Ac
	 gHXZuwU1GKZ6ZO5LpcMyuPbKY+QiCW+aOvU+CPvVWof9qxhz6qRTzP47q6Crxj4Zc9
	 UD0+evNM2U37Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A9CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591619357.12992.17979407428590842744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdfc39bac1b767bea7fe414f8da2769e21d3e99fc4549f500d4e103219a1048
Date: Sat, 23 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755916193
