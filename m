Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3003938FB9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750914594; cv=none; b=USOvHWdSVGg/RvL760fS2S2LRx/hqHthpRjKPGbxWeSkEPraOM1e5G8wmBZeX6SdhPzG4JCgl0VBWs8fQo8l7NgCvxnmm45jZsC516ANlmyVKiUtk7+r+rebNxQcMgXhpQmaxdpPNHO+8rpmxXbBeyFDzyy1t5s7Rgc5rKZbkbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750914594; c=relaxed/simple;
	bh=NS3PcR6RySumhYSjpFqRPLRSW6I8Z0LGLoe+SkAfOZ8=;
	h=To:Subject:From:Message-Id:Date; b=Pytsvw1Gs1BLlArOGgTVBRS8IrPpRzQy3Z7j5DCt/9HiSa2ExgFwtx/rsF/cM3tks+wPRHHJ2vXVoEvHe0Ms5NziUyQfkkjjv9N4rE1ha2RsI+Z8ADM5TeChS+kmP4HK8ANFDQZbPOMI6tJUmuXJWCQBpZwByHsCEHONP8jRMLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn2pgYYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn2pgYYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA62FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750914593;
	bh=NS3PcR6RySumhYSjpFqRPLRSW6I8Z0LGLoe+SkAfOZ8=;
	h=To:Subject:From:Date:From;
	b=Qn2pgYYA7NnfjOXtbaXwaRKzSCRmCnjhbnE+FqhYDQ0m4D8Hoadv1H1EtP0kD52fz
	 Sqk4pPwMSmVPCzs9u4v1J7uZhcpc9v6hSnyr7A/RfujZWai7qeNlHU0L4TadvofHyr
	 B7zZYyU0om1hUiG50VLIBMcEzb6YXOz20DGtm1v+wGQB824e9G5Q3W+rEiL46Glgc/
	 sr1yJwsp+e4UIVA/5Lt85kk56QrnFNqfLclGGTdxNjhx1PDLC0VOOAZENcgVtz/Z+C
	 mRDNo54ow5ks282WQl85Xju3DgIxiwJlvJ5NUzTv/w570UO49KWLSG0fUwu78m+LPS
	 mIHOqJy19J8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8B2C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091459363.6574.12946886017995868949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350d503b705608ba8ea4809423d4aa54454bb33b787f89b10845427f485c23e0
Date: Thu, 26 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750914593
