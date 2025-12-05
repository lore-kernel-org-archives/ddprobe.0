Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C282330B24
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764948174; cv=none; b=SuGzjmGB8k26uVh+NKnGEQ2J82Cq8gI363oWtWBgliOiMCfPDm4ppoc+BKEe0OINxF6LaMANCA5HS1wOnIzzIsSgmjvGhVd8Rlyl878Tq1r+SR0DNQI0o0q5v0vY8raKTSWt5t4Kw/VQpugUiOhLFYzqqNTPWw7xWBgn/hk4Dws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764948174; c=relaxed/simple;
	bh=jeLEUlk96o58HGjrUulA4CmfwmLjy1lNhQaA92ztmO4=;
	h=To:Subject:From:Message-Id:Date; b=qZ85we+fSkpDJ5rxz7UKuRQI5NEy+2wCqAywOaimY3k+G/JYfX5lw4MRNJb8NpPBiQZ/0LJWqAu1q8DMN03xj4NET+uq/ZMdTyAhCanOusiC66rEPgOIuaUTE/5Y+UZ8TR3Nv92zDX7asvZqcCQ9sqsTiagdSkl1VPSF72O+1rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqFOhK0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqFOhK0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764948173;
	bh=jeLEUlk96o58HGjrUulA4CmfwmLjy1lNhQaA92ztmO4=;
	h=To:Subject:From:Date:From;
	b=pqFOhK0HATXvQquIj4eDewzAXi1ok/czPfhuSg4hEj5i8lIH2nrqL6LH7W58pGM7R
	 pDurK9Nks63zPsBcsBzy40tNTAhESokSlkTQF5K9K/d1zm9W7DRjFTyIvDSIXS7iwZ
	 QpqT+BMawVETNBG/nJAlIT6VsbQ2Yy7mZyvx8Q3/w9sTleCM9uJbXfCxODRiAmxGYv
	 7qXwOW+IiLOJNJSK4O4GzQV+FJrnLzRyMqSsRKOQnERUn5WRLzl0d1RJZEZaByLYTG
	 oujxeZsPXAkSNNrXcne9rdasN6oWn8eYRAsh3rVO79j7d2/YWQsrefvPoQ3kkKcnST
	 NOA6n4EKgCpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92223D33980
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494817359.11378.4253779802848575998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bd49f3c73987679688dc75ec7b4a99205446c16fe7464c5d0616d0246f41c4
Date: Fri, 05 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764948173
