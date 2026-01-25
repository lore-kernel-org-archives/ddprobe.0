Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C930F80D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769383434; cv=none; b=DPPlAJQdVQ+r3iMCFBhkEqwQ/PK2pSEpxavderhRCnQTVMzDE2RVxNMc2pnzGTDSI+cMdgb+lu86JAoJnXU7EJKcc5bqGEoIwfv0AU6hFmb5u6dswmC0KEJPcIDC6FbPQqmrRDzEECzlgqWnsuuWCUMPjgHsbp6lrW4V+ZC0lbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769383434; c=relaxed/simple;
	bh=IucRZrCvqRRnUsGv1isGns99gyeDty/syvC+17PvULk=;
	h=To:Subject:From:Message-Id:Date; b=Bl9YZDLY7VSbXHMxz6YisVOvWyzVw509Neo4cA8IimTKzS68a7lZKI24pNvh2qrTP5b88ixsZTn/YoVtwCdpMV0f5NcEV5KXV63orVUALROvtCVl9uhvjHjjBZMQdUtt6yuJDs5MbgyHKpgBhhuJ+Z7Z40fjUNkRyCttlLsQdho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8jCKd2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8jCKd2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4869C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769383433;
	bh=IucRZrCvqRRnUsGv1isGns99gyeDty/syvC+17PvULk=;
	h=To:Subject:From:Date:From;
	b=Q8jCKd2zoXAgvP1ozuJjx/gmukwpnJ9mQSxBoRljB9RQfe4OfBV2pro8vgcpnIg7y
	 kXgsL5rtJU9MIbWi/ZYzK9sMFjJTB56mZ9sxEO7/J0DpISIN6lfhrbpOHaQO1yzLbD
	 c9tgneeVQMVHa1/f2u/51fPI7WRZsKOkB2IQgbasGCbNblb+W3l9SvgqMxkgmyWG8m
	 RW95fcja3bDNkyR6TAhnZ/9babmcIaDJ76WrcUhr1BoOJHcalrwJ0k2TVMm6FmNVuG
	 Y3kGOZtL2Poo+yT1TqKCbi9e5GdCc/cgUoPW4b85U3TmoUq3Zdf/r3k9h/5/LVvMg9
	 xTmsslScCaE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96882E63CA8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938343358.29722.5512291418547510095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925d2fce35a4540c3014d6465dff9c6c29dc21560c48ed994b4ec4d8cb5f8c30
Date: Sun, 25 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769383433
