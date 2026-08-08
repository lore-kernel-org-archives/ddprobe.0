Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484A3B2FC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786195234; cv=none; b=q5/tKqXgMTV5RxaSFuyFj9ou/d+Wn8c867YsSNmFA9LefgBr/P1grmlNQ2pG4z+15+Ws+aq5Yt5c1uGHz8iH2JtiFQiiBFXQPg/luoBmoMlT985fUv/jJMLsGn27/Pk/WsHJ/1vQ//jnUieHPlSYeso/R3VdEDp/JzVLXEuTF+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786195234; c=relaxed/simple;
	bh=J4vFk4TuZSY8y26MNP9MtaETUS4ijpbuJ1DZHSaSQLI=;
	h=To:Subject:From:Message-Id:Date; b=LUXQsX4mfpQ03XjVaPihpMsOBX6V3uD0BTqWPpFrlhFv2TcxCGIV6Z1BJwbdW5GHGuSRbmFHLvBxNUVuuEtY0Lg155KXGDvLpVZZ4tRKUzRurgqgNdxgQi96QwFgjvo9YVQ6jKXbs1l2wmXoF1En8SFqBmfq3ti5Zkqsy5ceDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGQvDWhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGQvDWhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01DDC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786195233;
	bh=J4vFk4TuZSY8y26MNP9MtaETUS4ijpbuJ1DZHSaSQLI=;
	h=To:Subject:From:Date:From;
	b=uGQvDWhSMpkY4INVu5iZQshjZBCQ3FpMbz7kse3h3HoT+l4L1xx4YtslICW8vVQt0
	 X2sWXuvomyZEmM2Arbq+N7Y5waDQp4hOWjPqCjchWuJyGGmNUlZjXepbun1meIKFD7
	 WUpHAxXLPtPcjVcrDQWWh8ufmBEOcC+X1/AogeOjb6LW04nft6vP+muPDrLuat6Eh5
	 c/s8MzrIXdkB6cP2r14qDBf6Q3e0mH/15nucEig1WqA7uQrfUG9+TiBEVtc675SyKc
	 nHWgfEBB7EcKDqfzkz95lbgwv0UhjXnGH7z8HBfZNBmsuz7bAZ963K5tTay/gryN4b
	 J1lSogK2Ntx1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE429C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619523369.1929.14331729677289517743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036c71f8337579052a59d3e79e0cc1c37f0177e1e66a31cbb0950b3ee8d3fcc0
Date: Sat, 08 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786195233
