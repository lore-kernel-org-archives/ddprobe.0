Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6C3EB81D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781005534; cv=none; b=NWcCWpJ6l/ztuPLdgwh64E2nRxSfq0Iqvg8uo8luJNbCNQ+eUd29bI8btTW9frwskSs8Xn74+w+EgPvTCwoqbarDvaUZSJk4oxpviBGC/l7atabc5a6+deyiQUyndp4i9TC21WvbSAC0Lz80C2w/zyBpaOChM9oDt+ft993mSwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781005534; c=relaxed/simple;
	bh=2RLpHYzmKWLNEoG1h1aFKWDhj2JZoUK7BusdW3JC53s=;
	h=To:Subject:From:Message-Id:Date; b=c/m6nI3aqZi/91OKnm7krAt3zXXGByLqrtUp1ylWyl6ZcCGXs1rKUe3RpQXH+XsWomtPzSC95fV9XrFJxD61hMORst1i5MFdxfoVytnndaL6OJn1uQPYR7h9xpVjvGB/vNb2WOWU7iOx1SLBum8b9d1OnAAL5cNQ4HeAW3GuwBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7H57JKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7H57JKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06ECC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781005533;
	bh=2RLpHYzmKWLNEoG1h1aFKWDhj2JZoUK7BusdW3JC53s=;
	h=To:Subject:From:Date:From;
	b=d7H57JKpkHt4z3TSPvyAkMHyBdjKoPZTtVf+U8TGt09IatzaFTjotdxdMqOleZRib
	 3W9Scpg754vri7TVNOBQb/Vir8y2cxPxZqfnPUScaQvNh1F+ebOjt6tUz8hpx5kB7q
	 om1TkfcjBufnBWorPouRJMS2yGUCls2jFMrVGXOXnH8T37Q/grVTUtW8VxBxJloZyC
	 T4fo9FHbFRr73LPxXjAEPa+F6QlxgC5FB+mWqq9bJvQLhoDbbtpArGShfg52F/dJ/1
	 Gm+V501HgcivWUwrU6Ev3A9GmLiAwV8TIPoS8VKxo2X9AeLE11GcA1g92lg4nlSMBZ
	 fI7AI7zbelJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1348CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100553371.29802.14896295385563766029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9f0f0d1ee3166ad72b8afc0121ce8b0d327d18206c0620e2b171626c63455c
Date: Tue, 09 Jun 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781005533
