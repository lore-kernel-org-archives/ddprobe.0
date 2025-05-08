Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B4F22256E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746733194; cv=none; b=RuNDgRpTWUxvLPnwFv5OjKGZqMjMi+WLJ2QDfUt9VlAW0w+wfj3RsoG9ol3esfnG2Mv2rO2HMG/FgrdQHOEmRE2a++YbvBkZlY9kzv+4X6mhVVelMlxfbEYmfmSM9EdBpKFFT6If/HmzttvVmgyuUxyVqjoa3wEOEqlL76Qbi3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746733194; c=relaxed/simple;
	bh=PY1BueaRyfcZASLs9rH4+APsMOQNjIj/RPcHbOmwjSQ=;
	h=To:Subject:From:Message-Id:Date; b=Ri0GpDBwniju5kgHcLUeHW1NEzoe0vFGVlt0LYjqbgJ9BRtgWjPvPoj7mpGjn4BMfPSxcXhtw/EtmqFk+jUnEpjggVVkyu1bVSEIzghGHbOmDbmfgVtMqwP/4Xvf0H2TGIMC7GNPZLPnv19/9UhZLT36qHl4QddDBV/+vw/Jb24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDQE4oDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDQE4oDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746733193;
	bh=PY1BueaRyfcZASLs9rH4+APsMOQNjIj/RPcHbOmwjSQ=;
	h=To:Subject:From:Date:From;
	b=RDQE4oDrHOiDi8ZgMXBN5Ujsp8LkaZeQALkafsA7EjWki1LvkPDe9sF0wb7mEVuDX
	 70d39VcBO+I1aEfmmr2PBkv9ZMJcg8FPWvAzcQlfoKBX2GdRwqtu9qyuvAV+Xz8orH
	 2G9l7I5ZEg5uVZ8iVL9/2NVKE2Q4YH3DCYlDYyuZeQgcaHYPyozNN8Hw4YkFzK/gET
	 4R/5bv06ScFwxMeCp/bnAaF5YYJ0pM5A8yhSv+/pZ2pYxpVtQctHeCx3aXQvMyrbG7
	 0KqxwwTeqRtS72J6La8kSZ1SuAgrvL8HyIQiTKUGEcW8EvCjZft179KOTn7f85/CEW
	 wq9G/1GgGQLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95706C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673319358.6682.9854340070760627274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0c529b169f09bc62820d1b9d12f7bf73ebf3cb5d13477fe5b3798c690db950
Date: Thu, 08 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746733193
