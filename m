Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27808184E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753419594; cv=none; b=Ts9StFDnDxRqb1dwgYtKbCqqjdIf9s+ijK58V1cmQtwBbPvPkOnqK9R752RCQA7V47NOtigH8JXQbng0xW2D0xkJ49Bm/OY2rvexL7lhq3WmS9DU/sZ//4jX0HK4MF/c3X5qEKHI/yL6Oo8hcC8OXsi9sHW8WDNB5b3iiWPGzD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753419594; c=relaxed/simple;
	bh=cDU52QyBIw3PUCvIsYo4ffaedHuAx+tFwrzL8WDAH+8=;
	h=To:Subject:From:Message-Id:Date; b=UTggdTiFqezWIzUi0opTrzyaFkqrYMNVxGE4olavDgdEg3reofMnTSVJP8t6ebH7rilRnCRI6qk7XC4ixAubZOE1heDBVUwaLhPZLX8gm58zuMXWT6jMFFunZwVFQeOpdw8wXpV+q9kdSvx5ETTO5mDuRzMmdcE7TP4tqg0QrYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r93KQzxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r93KQzxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2102C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753419593;
	bh=cDU52QyBIw3PUCvIsYo4ffaedHuAx+tFwrzL8WDAH+8=;
	h=To:Subject:From:Date:From;
	b=r93KQzxw00XYAKp1otfSkOR50Z08YjRZDX2mnWfUCADBzdY6TQsEv47oPsw6vpk1Z
	 pbExFEEZkSDfoReWBHSosdhr9YczUdyjqPzILErTsRERXcljIkBxqzdG76ZdA2EgNo
	 hAXi1fFXP49mK5ch3nfE/lpem8BLhbIPi408hwZV9dBk2kT7FQsOxVqnTM8yzyiFGC
	 SEqiA6HTa96zd+Q2vTKh1JOffUVtFcYLlI8Nh6qfzGvCN//vxfO9i0tE3vy6SPN72b
	 QBlQSp2lkcNeWtMIopQ+Ed6RwYnS17o5uEpN8yRZAwqDjBxJVjkfQys2jSaFFED5SO
	 LbWN9iobi2Wzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3FC83F27
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341959357.20449.10549814975493537927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec06473f28e7f05df72db71e682c4ae001b77a062c4cb63996cfed32815ab4d
Date: Fri, 25 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753419593
