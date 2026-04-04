Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF4E337B99
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775327734; cv=none; b=KgcTD3d18sXzSMeax4rAPjpeW3BFs2umo/dSVYw2Nkb75AK3TmqTUvZgaxMoLDo4c22NOLzWQxR6/BEoqjkR0bcFiNu5ruBXuLNuVbQ6KCihf4jX2+BVAtHzvxLOQAD7Za47tbaEPGExTGNGjoaBgK95FMgwvVQx76geryYnLF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775327734; c=relaxed/simple;
	bh=s0ETSuInbkilzERfPRg0W5roTDUOAs9s32EsdTBr9gM=;
	h=To:Subject:From:Message-Id:Date; b=Z0XO86qKaBSKxh5WezK8O+6piRwHVfhi9AvSb3qy+v9iDYuZBvUljoGAad2qyCQZUnluDnyeebp0/o/eIfhHADAiQIo4znF6nVNpQsIvOF1UyR8pORI9L6gnVwkfqwBgaV7DnLvwTmyhw1g5D21N/OjCdDUdGRMw8kS/k3LLYAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkpM/ezQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkpM/ezQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF585C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775327733;
	bh=s0ETSuInbkilzERfPRg0W5roTDUOAs9s32EsdTBr9gM=;
	h=To:Subject:From:Date:From;
	b=CkpM/ezQG2Lz1xw0DzXTRJ85+jGi2q/XL/N6T8lpy6L/KYwXLNgYX9y8gUVIQmXdL
	 pbp+M6IK270OaemPG9b0mKFqg668HzmtwZRoVlm3Ml66u56RWmjVkH/UPJr2drT04w
	 APWmwUAsa1QeL77c4EqAeOrse0auvouQoOL25x2gBs8tP+s+KoO8iMTVrXilWWi2/F
	 CifGGDXLm1GmD6ZrVp1gHEtKbBjn6t4JbaX3Bz9nKaz1jv4wei7+9sbqp/QCp2Yaqq
	 pn1gQo8BJmhw2SFj5ATExF0cHWDc8+XLMWvvhhxbziwyS1R7ymQGuVuqT/oBKq44V5
	 eMk7OSLwSSHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC07E63FE5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532773372.16800.7154266463481467883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1764b4ca0cc67380520492b43ffb5f60546b9813fd6dcb400e199aab64641577
Date: Sat, 04 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775327733
