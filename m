Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216C4345CD9
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771518294; cv=none; b=BR57N49tc5MzjlfLkKDVVec7EY8uU0IvVdaus9Ip+6rc1Q+34eS/GlzBEF06DV+EtrJtATIegt/VG+9lPfbcOW7Lz42on2x6ZNnOSMk0lvtsGi8E1pzEAbkareVbls5FWc9NMaccngXCE781HKtPfTlxCDwx0DXrL9lsj0ny/7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771518294; c=relaxed/simple;
	bh=F7o8aF439b/vWYH2B6Cw9uOEvSqi65puFDRwsfAoi98=;
	h=To:Subject:From:Message-Id:Date; b=CfCUb0/WHa7YMsgnzE8ShofAmlJt4zy0KaXQzJ3aZiE6vypQN48WGx8EThCAjnbjg2b7ts6Y35s2z3Nlzuqv4UwVSQ0wkLfBoW8hYA4tcMtftxR3pMrQWunmwYw14sv7BXzohMrVOXzFl1OiQGvgTh0srmvqIweR1yfvglcEPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKyXoaG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKyXoaG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B779FC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771518293;
	bh=F7o8aF439b/vWYH2B6Cw9uOEvSqi65puFDRwsfAoi98=;
	h=To:Subject:From:Date:From;
	b=UKyXoaG/lrwNeRMM//safEhSF4m8ROPsiTri3Q+T/VL0Fsegye2ZlN564tZAwVR+J
	 92qdndTvKOZD3G6QfNq3b2JJbLLwf5rv0xPe3FNdSOS0S8DcqXKRGiuNFDzu0WAJOS
	 LXnns7lJLr3OAb2aTKKha9eMw7cA2q1dP9xYMvieapRddB8PK7RRXPnHIl/KwiAUI7
	 ZObI5U2J5hbi/pICCkswae7Tmp5cHWkZmHiKDJrk118t1LpI+Zsu7mKHhX9nvHQhFh
	 tWqSoTZUTVVO6qSnU7FlX/X3xyhCz7cbrye65nw4CvEJyCYo9wlTY3R3I1pFtRIR7v
	 fm/ZKT4OMD7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D323E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151829363.6744.12895346358932203842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7995e65f534657f7cd791191cf6a096f865d7cd1110b3be42806fdd2f112408c
Date: Thu, 19 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771518293
