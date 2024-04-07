Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BE512E48
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712498897; cv=none; b=uL+kAfulOgc8IEGHCr1PXtPvdqBR4wKScC4bdOH2U2q8ZSkF5Dv7ohuYvxXVF6PpmHzt01AwvlBwHv1Rb4ym2GPH05iHUk1RPWKmWCrMGosWSIETcIYFhDtCD28TjusQe1WAAu97tPSY+NZljfVNtFlN1dpKXF6KRUcpN/F8Onk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712498897; c=relaxed/simple;
	bh=QrR8ASeOylFDBSWFypB3WFt5QuuCLuKfpigXnAUuGd0=;
	h=To:Subject:From:Message-Id:Date; b=mXn+HS61grtmAcY6bgwghhTHEyr0ZezCQmoUXCcNrW0YF8oaGRbIX1CeX6AbWp2P4gv0f8BY2BICebv4Q3Ug5fxqtaAOnQeH5PbVrMD84K4k1duLKGA1kGntCR6txG1EhXGMHIZcMQTZinlI3S9nmunYYBrXbdDpMyascUtD0lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC2UAh97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC2UAh97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E644C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712498896;
	bh=QrR8ASeOylFDBSWFypB3WFt5QuuCLuKfpigXnAUuGd0=;
	h=To:Subject:From:Date:From;
	b=GC2UAh97wfwd3HNa0j+KtkK5TcOdUzwdIb9kNpA7aEjmtNuiHyubUqTRCb+uh1ruZ
	 yPuhTymbEHX4VfVx0RTizf9hFMtxi/mAzBrbNQ2rbId1iDu+rYM++reaf1SaNMFT7y
	 bC+9jD0Fg3k+kbs13T7uieCluQpOZ7sI0ZdWs5g7VfWZj21VL5Gg6fbnT6L+AM7rof
	 2rxWfxG0iy5W+KAk5oZCqrJhqFlPA6kRff4Z8tlx1O/W3cllUP55/EnjFAaV8wqBDp
	 VZH1CcXebTT2I5OQvYF7jlxGQ8Xn9NmuhuuWdWYgwvdffqVauqwlN+uladwNhkjTF7
	 +ycYxyf2sBBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D86BCD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171249889637.8720.14231460103721576521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1892f8a04ed4c9f55ee36029e6ddd982f28539568d51e37efc854c640dd87887
Date: Sun, 07 Apr 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712498896
