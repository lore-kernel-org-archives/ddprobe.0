Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD7D2F7F18
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779960755; cv=none; b=Uymnz10+5sXFxlZVCGTDQtvG4X7b6tFxcplmsbyGxLGI3GGQNxlYBbknqVsC54h1yp6mCspvlp+NHGsOHaZustpwyVG/h7jpImiw6N3VYSAzuX6G2Tjf6rxMy3BG6rcYIjd9UDvcPjUA2UY2fbESQHdrKFaYcSWoYVZvZEp69H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779960755; c=relaxed/simple;
	bh=RxPSGoylzoMHLjrdgRv8g2JJwkGTeafs/ie5LWIG7Sw=;
	h=To:Subject:From:Message-Id:Date; b=UPQkVXLgs+R9JwwvmvAf5nPWLB+yq34kjKhRpqofGaplPwhAAHl7D464isotLfjZfuiSY81bevnwWHpm2de6vjozyG4LvLfU54qKJwL50JbIyrFgmfU1BciyI93A9XyX2hpS/ImBE5TNMqTuLQqN654c0kXY/WbdO54LDtuoHOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkmNTKRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkmNTKRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1939C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779960753;
	bh=RxPSGoylzoMHLjrdgRv8g2JJwkGTeafs/ie5LWIG7Sw=;
	h=To:Subject:From:Date:From;
	b=PkmNTKROfJyipwoyO+cqAos4jGFdTvzSsZHI94JoRcw+X9eHtw9eQC5KS64kPz7K1
	 a6gQqLU5qfsE+FXID1PuS9GrAtJ6nu1e9pXb2ri4stYgE8pp+Ge1gi1Mo2vQE2Eb4W
	 0QFFvMGY2KiRkNFtTWAAV1o8z/LJZMEBfnysAIvA1FtRTnHSYgA58+whjzAgbJyw9X
	 zeCnkQztncIurf5rMmqBQgAtikVq9NoI3kbNbqCEosuAtBPT9eDJoOnwaLw6L1ON7t
	 NHoAJGunTkV2VL1Kae0V5k8YsCo6QL4Wyen9paP+TKuVy0vLdwzb4lyC6Y6fpR4KXP
	 jPn7Mx0sDpzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED8CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996075368.19260.15010549344899577824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5387aa7f35e6fa7a3c53cb1b6ad18ce2cc84ecc40f37415ed13544cd2d83e8
Date: Thu, 28 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779960753
