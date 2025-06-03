Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298C93D69
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748911794; cv=none; b=M4wc3YAJnuxxmlEOtC7err0PwRtHxVelRwWUgvBpKZ3ABr3oBa/rcxPtAk6uKzuYQYYtXqqNUJdakYUZtjb1F9OTRF8N7dOVF/6qmY0mX2WRIn8QpjuMGJLKqRdTxXieI1901APbOdyNfqfBw2pQWdkX47K4A1z0vCP1zwOFXBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748911794; c=relaxed/simple;
	bh=NBZ2RGkzTUZwiN4sQsK7hEwXNT0oXSUDWVndkeaiOIs=;
	h=To:Subject:From:Message-Id:Date; b=ZVCQ7TJ2J3G76BzPvobSgnpJ7Z/j33qwiLh4YbWFWRc81mPYvznwM69e/Ae+HVTwyEgg1txmswc1CjK7kZEvQQekosDcnkDZaEX+dwmVHPiL8kbS3ChUANASONOuq1bc4awnFc4AnSNiXE2UMqgMfq81ArEa8lGLUHA2fgqMzq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwRky+wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwRky+wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3819C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748911793;
	bh=NBZ2RGkzTUZwiN4sQsK7hEwXNT0oXSUDWVndkeaiOIs=;
	h=To:Subject:From:Date:From;
	b=TwRky+wQqWt6EM2duZWXofjQr28NxDM30a0uYQY3cwZlXSQqsjmZDVPUk6qffRQJB
	 5qdMInO6XfTeQcso316TZnpcnBh0hOBs/KlRLZFPG0setA8EynBgoflDBRFiuVqMQf
	 XJT8Jo1Sr1BWcAYQ8E3w5PUbP8bSSlVEKxLrhuIOp8MI800jAOQ1cXy2PdxA/aoiXx
	 wsmXAjXswvgFisM4qKRc8G/UbIgM98ARWHyLot0DLITiJA38FSptvQcjIovS8Ne2ri
	 Igzk+1vvidaS9oFUG7YV7EiDrRDHgc4N4tfH8XAMHkZHzub2BFMciuXwigO8NyjMoh
	 h+RLAiFQ1+JIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F105C5B549
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891179357.2683.2845675668185239361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273a4bcd30cd8e2533d5f77e52fa69270430271e0a97fe17de8515ff2d83c1d3
Date: Tue, 03 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748911793
