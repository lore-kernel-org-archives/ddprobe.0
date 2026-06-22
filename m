Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA4434E766
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110194; cv=none; b=XKjES9GMy3GSxA2QdQS8CGGSrxexzA6ecGAb9b4ZGUd4Qp3UXf0w8XBEy3Ap0hQCOClHSCPP/Ix2ZS6cuX4ibA8CzGYQXBBP2Y5CM5oK9LYa8bgIbMdHsuCcAtc23w5k/wkH/tui0aDTtACzHMfgZSt5lBrqBBO/RZpPw43nIVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110194; c=relaxed/simple;
	bh=JTuA2B1Cw+HOCz3rl4rpDosKhHw0gy/HssNT+H3llV8=;
	h=To:Subject:From:Message-Id:Date; b=rfJCBJzORKU2kfH4jMdGzvzAmp/UhQYGkwwVEQ8aSqGjZ6LNAEhT3iHMpn4ejXVyelkkNxZypmPCOzTFLk7xQtX4koSNIk47vZclrvuH/YJysNu2F620lGLe/AofsEdpOYiRMmfV3guxH+Z3yae/Mpp8D7E+VctNDOWw42qnJq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd9ZMtt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd9ZMtt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33DAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782110193;
	bh=JTuA2B1Cw+HOCz3rl4rpDosKhHw0gy/HssNT+H3llV8=;
	h=To:Subject:From:Date:From;
	b=Xd9ZMtt8j7GGUQ0+OBw14chwzDpquOjOsOc8NI0jgicHtzh1ZUCu7bt1LvJQ3ulbC
	 GezdNF7Bc6tQYTp6qoux4LfRo4/kDQIPvr4+WaSzLtgkBEiQ3lGKhfKmumelLiigSv
	 0IoUNPV3kSktoPvKr47dIjkyHVwvt6JxBFz6OOIKqvBBUJNz5LocTaq922JoMr07Kj
	 aQXIHaJVLCF2DFUx0U3t+5QoEktq5Q2Eq8ZSRwaey8A751FrP2qHwqk57DmWbGOGyN
	 aJnc67enBVI9Ld1BoOnOz4Gz+aMBA5caLI7NPEzriW2cW/6g1w503PAQ4Lc6faW0ss
	 avBNtGF6WMvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81C3CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211019371.26375.1440659065682701492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c6ba1f1eb2446c17b65677b489b086d3d40c73ba6ae406be3eb2566926b725
Date: Mon, 22 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782110193
