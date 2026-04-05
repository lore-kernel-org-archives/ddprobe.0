Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1767612B93
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775352334; cv=none; b=QKjGMk+S44JZjUxUiT3JTxllsYtttPfJbTwb2iDKqQtt8PwAnjZGSjN2OWloCl2anpXUb7+e8ulyA8U2lU3dgf0NhwnocT5f1A8F8Nh9mzYLPxZlJjBmymYZIakLVr5JQe0i1NtCQtI9B3AymMa+RQXJi8bjwrkY6bMGSjkZMwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775352334; c=relaxed/simple;
	bh=J8DU/Zawj1X8SkhaWiQ5VBmyUtiEvUjmvsz8FoFz0Zw=;
	h=To:Subject:From:Message-Id:Date; b=oFOye0zbHUmua76/smuEUS6AXoMYedwp1Bo9Q4ppwF0AOj1mlETK3NO44LWUaO5IpSCDL/b1uMnv2bG+ByQsRJGmEwiNMpSCaIPbNuhlGI7bNiXcWvkhGmqDV0C7no9JZJTjqSTc1/I+jZE3fPIaV+ZspTijMCbyf2MBPF/AhPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRUMdvna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRUMdvna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6768C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775352333;
	bh=J8DU/Zawj1X8SkhaWiQ5VBmyUtiEvUjmvsz8FoFz0Zw=;
	h=To:Subject:From:Date:From;
	b=GRUMdvnaosJeEe7g6MYWbjugsA6gKVcCFJsrNaV1Aqtj4PsYL2nTVSCX8z2HEk/5b
	 /uwQrnLPAOubr2dridMteielXeBMT/+vtlw1ryDjSVGhqsZxFTWlqPL3kS4T+V9M1q
	 R1+fKbr225l3g7ZkfzpcTo4A/j0KOtgbUD678peXuX0G3q8hZUJlDF98gb3Z8J6ldE
	 IHfoNNhQXwgKKr8Pjhs/nqfGNzzIqo9SuMfUhuZk2P4nx/MR5tlCZrHfPtUtKlukcE
	 lepDCZASrpTzAdpa5IeZzuGt8ehgpVAdUtl7wlvR7VIbwlBDpKOpEpJcNOun6i6Kue
	 T+Mp86U6U9b8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DC8E63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535233369.16755.2722700689932453738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ab0786fca4a4d1e3d14e5f569a05e77aaefa1501d3c751f47a7ca166d19cd4
Date: Sun, 05 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775352333
