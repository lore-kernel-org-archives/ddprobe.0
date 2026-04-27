Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA6826F46F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777304254; cv=none; b=fuj0wk8BdsNYCC694W5Uo++yZ/iSKWaWNkPP7KpOlvWfpPQDnQon6gz8MwNzrI4BgPpfFe5at9QjXNTIKVcjOWNUsisyLLHJL1sSWliz0qDFzUGQv7ZeAkR/onAgpIv9PAltH85ht8NI2xQegHfzBxWCAMTgheX8ZPyFicgHw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777304254; c=relaxed/simple;
	bh=Dj5AOXm0dZJMAEjqgYPkJ6sCuHSxZEhhsfloCm4A2h0=;
	h=To:Subject:From:Message-Id:Date; b=VK2GozH6FejjvF/ieovc21WamrVE/b3K5IR6mXu40U7BOL9ILDm1opdEIWWzWyVwVIFgPhazx4PGG8vkPnvTV71Ld6lad7b4BsCN5y7s/D/Vmkbe81fP54NDtuKIUMpIk09c3MA41uk1joOCIWq4hCyX/Ujn9zOx9eeio6j4DAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdeeEZK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdeeEZK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8476C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777304253;
	bh=Dj5AOXm0dZJMAEjqgYPkJ6sCuHSxZEhhsfloCm4A2h0=;
	h=To:Subject:From:Date:From;
	b=KdeeEZK5BPbtMOtjuCIoukRWOlukqJ6gEjq6mLAcIeCXi18x1rrUqMc/ljp28hIda
	 nBLigQVOnQ8sBM7niO9+0uHgoGQJV7Yr9FSewpD4cxUnnBpVxOU/BFnCLYuit1B/3a
	 bN3s5m7YHC+sG4rrpLCLYkiQxovNM01IT5nUMlbI/zGgflAyyc/JTX6erwYNjkyBO+
	 8XKLIF6ltthRCQFOgkkwtvHl/jja7HcXnfDivjVxca8AS+Hvo3awVL6hV0iTZynXwY
	 HQ8Rll7QNtVWZ74dG8oG5Zc401S2fc2VJEL3Jd+V+s1TznRQbH3pfmbHyYGSfGf6GJ
	 6uT6hoZNbPEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B40FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730425368.27468.364796206576593424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99946682116757fab476019a0398b301e2d7084c069b2175c04ed229135a5acf
Date: Mon, 27 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777304253
