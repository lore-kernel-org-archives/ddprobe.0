Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DFA2F8EA3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785561034; cv=none; b=AGz8l5CByHSJMtMQThjouxrjIP0BwH2pjDtvZblLq8zbub4YzYLilkktiXDxV66QNDm5Putfp7+Ht8mUU/jUrtEgNt9KvoOURP7zDR08E2Z77O/sSz91zJ4G2fAqDfkrwwK+0uTPOhBLfX5hKlDUh/P93HYTvfA9YyQSF96kZoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785561034; c=relaxed/simple;
	bh=zGheje888JdCQVBey3nA7pVhXGixYI2clkKTADIVxOU=;
	h=To:Subject:From:Message-Id:Date; b=fTl5g5h0gn56HaHcmzq0M1foAQe9Io4p3k2Gc8BgLGH+i8Lc4ZYn8kzLWshisDo8xdp7QDTsfPSKYkp5HS5hEHbGi9/oKc/RRkEeMbujDhq7lZHSKpg/DZPA7AVITn7lu8kNNDAjF3xw/eZKc8GHLEgH/s/K3ZoBpkl28DicHMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLDiyhyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLDiyhyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785561033;
	bh=zGheje888JdCQVBey3nA7pVhXGixYI2clkKTADIVxOU=;
	h=To:Subject:From:Date:From;
	b=jLDiyhywUGyEXHDuxGllos8kvK3Mc/SVm9Y0FW4J2yJJnIclUArk7aQt3y//6kfi2
	 BPRfO/M91x7eYFUUyIcy5YJFKPNWIlYORnxeUIdLYJkGR4MiQLmzz3mcpMUaFGWw9q
	 n6KeFmPpruPDrE/eO4AZimj5/q4IBoQFlvbZCLVuYajMFniL59Lhpabs22b4GtPBJj
	 FYNP1YBevMwWUWRK70nSQDT9b+85W7GXOO0gQ/XHT2WQRyMBY/U1nEJMn9i4IDzUqF
	 SaJ+EW3PSDkPkUYbufsh9Nz6vmcEEJ20zHInhaZENhqljkUUbusVSD1y3ZpV58MEOY
	 UcSTlwKi7ScYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E31C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556103373.20759.11679213260296191358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60065abb888083be45f57f480c24738a27570c553c1014cba16391b29e0bc324
Date: Sat, 01 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785561033
