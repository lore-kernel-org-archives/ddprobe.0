Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC0C41747
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705952896; cv=none; b=BUMX2JZKagDb5TdEoGu4gi1X1bTe6kyEPseGMzX8UImYtzO27yCK1lVPtLSPZJuNpBJZBbNyst+N46AlowAQkPYK5kDr/EQBYIjDunCLUzjyyY268Y6KSWtAPGg3Xj635K8EeUeJi5P841hGpSK/HJiPuucgW7m4ruNsujXnJTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705952896; c=relaxed/simple;
	bh=6PTsfEClk6m+JkJ1FPZWB/S7G2Dyf1aPCj4JR7osCdI=;
	h=To:Subject:From:Message-Id:Date; b=prZFBKHvS5gf4hrL3StyxvxQmrmb4zI5Cu/t2uvNPq30Q+3of98crQWdz77cggxbeUHF1anC0UpOc4n+hjDkjZZafWBa/iiRu+3YVbtNSI2ohRHQWYdgxp3cD2oKRVR3Mz0z4SJmi4tbu2mWPyzqn1UVCXjj55edRpgqeQsi/OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o00aDA40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o00aDA40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F1DC433B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705952896;
	bh=6PTsfEClk6m+JkJ1FPZWB/S7G2Dyf1aPCj4JR7osCdI=;
	h=To:Subject:From:Date:From;
	b=o00aDA40cZYQyIBLH/FzPHRorJDBCqgm/IjmQ03gbeOe57BLLz+0IzsHZX4ZRQoE+
	 qxv2oyh5COMo06PuJteleXp7vGwsZ0MSa9HlveSWVI2orEKhn58Ch1jl9wIkWAoWVD
	 bf4XSC37H+oV6yumJyyIg9MiSx2+jV0ExofKxWmI8T38V8roNSt4wypIw2Vn9aHwr/
	 6UD7rjqv2wl+dQhbrdBg4TnmN4ZtlBdwLWxrvb3JgOoOrcWRGl2YYWy6Dj5BQG8kdo
	 g+CdjF8deNGOYzpwrODCrJRaET3U6FWPMctEkNw2APo9PJyCeri6AIT9GnJiGALw9c
	 kFmV8tPvongCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654B1C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170595289640.29296.672329653566257999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9390e5e6df9d43a055d7b817454824c68cf584d360084a123e5ae6133bc411
Date: Mon, 22 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705952896
