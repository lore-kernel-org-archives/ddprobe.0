Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5133433A9E1
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787451634; cv=none; b=Sl9LGMcJraVExplFAPhJVPIk5l46TLZX2+ubENvYkeW215fB5faDfWb+H/fuPiPo6sjkIv3fW8bGLpt4x8NBFK/TaYrcpQz3Rqag6zzD1YgwTA7hse1x01wfGQ9bQdWTcQCxleRey1qeaoQlRKkqIbpz2K9kU2J9sPFd/Rb9gxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787451634; c=relaxed/simple;
	bh=OQaQF53iwGsqS0w6btAP6FLwuJy3UXPQCqY8aSCKCpA=;
	h=To:Subject:From:Message-Id:Date; b=qxwO7W/W20M/UygQ7O7cCepdTmyoPrdbUhLXv0eafYlhgol0gej+dQvNlAG0FuxFA2/koU9C68XeQ4dI2XOM0sX21lwvt3GZMykBFEp0E0lrDVKLToy8G0FmCtBnL76lENc0yejF81EO6lDsdSS3oyagVwSBphqJWHzK44Q4r+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYskaDRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYskaDRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E80C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787451633;
	bh=OQaQF53iwGsqS0w6btAP6FLwuJy3UXPQCqY8aSCKCpA=;
	h=To:Subject:From:Date:From;
	b=KYskaDRlMOF2zp0mWuvj0tLuWfy3hGyuiaNQAQthMRAhGjmSHyV9+iQI/M7cDA9zr
	 bKg5Y5QtNeGZkoTyND1v6oG7edE5ejM1G4xzPAwv6uV2GVvdGaEFsz86o8zE42SiJM
	 FluNGDu+iqwMz9tD2GU74nCvhSequDYwqZpwakmJTT0eGA1gO0VXwIg+Bhr7kUjHEr
	 WipOMouqRaPXkeZpmbrAu8s1y0h1iYb0b2Ti56SQHgZchahBHzQ1nQVHP3UDuVI+PE
	 GdiUVUh/GKzElDKilbxAMi1JIO/CPjYtQWogjY3C2iiTxMCe02xj62hnswol4F4R8y
	 YjHdZNp3yUKkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF8C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745163369.16584.11443621122936322226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffa19a1266fbd3d5f7573285a92369f1851393311b9cefd02270cb1ebc4d5b5
Date: Sun, 23 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787451633
