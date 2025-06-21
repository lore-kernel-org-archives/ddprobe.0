Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2728717A31E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750549794; cv=none; b=iFnzvwpnyzTBu7WetseTB3qYVPhNchfL+JZjTcjs77z9FnqWx9ZvVmK6gpkvYIiCBMkZqW7i1tru39X7XoB87kKDL/T1LLBHeB4UcPy/ZeDvxp+3gOskNzIZhN2ug2mE2AqIfF/GGGuxyRzhlbzRduA4rvp1/eeVIeVK1JYWKmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750549794; c=relaxed/simple;
	bh=RWDMj2Pq5/Uobxl8dVkHKPOxTtB/de289RPDvxNl4MA=;
	h=To:Subject:From:Message-Id:Date; b=u9QaiY4FVkFD2uoEx7/OxshdsW8ynYOva9tV94aLLOQVskqusKKKMFMRQz2u2FPQj95RLmYFbeLCFcwYqLrFr63U0Xrou+fxRoSvdKsSAETZO/u0iWfGCK73duv5x1XuTDQkVIPKx8cjh6Tq9TmwpUAsPs2Itr6nqluhMgs6VT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHRREtly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHRREtly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750549793;
	bh=RWDMj2Pq5/Uobxl8dVkHKPOxTtB/de289RPDvxNl4MA=;
	h=To:Subject:From:Date:From;
	b=GHRREtlybgOfxRfZGxqjnQw/ZxoaBqSDJfJCJJw4f/0LAjo1reTk0WL36uCZIfT78
	 BTHjPlxHhu7F0gJUyzoDnbaO3EKyDcBvjHBdjd4bPDTptAyAYxJCAAMr4A8i5f1dAV
	 /rrh2N12kN9Os94vEuNyorSeQJhL+ZIGsuOYbuNclpOPcijRtUINAPZWC18rB3mV0U
	 YvN5iytGLq/3pP52R/yLcmDjRPNpOPhSOhMcdbByGs9inGE+N668vEhckWkeAKiP15
	 YESzBdwUhnaYfcjdW6ASpt04GNnkMkf1Vk2X+qIHAElo9mrONaIOcgMZujd3iM65AO
	 Bv3gy58LRGH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93677C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054979358.11932.2597834815019946016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7134d9b40345e5b8e247b17ff01bc786aa025efc7b187f8bc2b7a7fa44391a78
Date: Sat, 21 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750549793
