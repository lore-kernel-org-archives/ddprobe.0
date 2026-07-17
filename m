Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED22609DC
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784264914; cv=none; b=e2tfo+EtCRJcrBOO1eV5X49YKOEdI9kytWdg9NFWfrE4/jyl9zIvw9I/LTMKRtwuYz45Reg4o2nacJMlZ13dRwg4j1q9nnypBB8ehH45QZH3nPJI2kqz2+JYrCpaWIE75P7+fGUbuMbZKNwwCaJLRThvM2XId4QP4NiOdXHicko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784264914; c=relaxed/simple;
	bh=q/ujIJMxXir9IgQ0LTir0fV3taV6N1b5U30yxBu1HnE=;
	h=To:Subject:From:Message-Id:Date; b=qCEXYAzVCyA7v0ebyUnx0XBv/GCXSKNJqvrRAB7vYmKCm6XCxc2KiF53A/g343lN3SbPW5ZPDJuN9qweJ6tEIR+S2q9A6qW0NPQV+Tft0L+/FlRYZS2Jhij7R2TD8LfSSGD6LwGmkQkF6KDV94IcAX37PsnOFmA8OhCtQhtZQOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU9t8Wsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU9t8Wsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25A4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784264913;
	bh=q/ujIJMxXir9IgQ0LTir0fV3taV6N1b5U30yxBu1HnE=;
	h=To:Subject:From:Date:From;
	b=YU9t8Wsl2657YFB37ObDElDgkZoo9cxS6wxjMAXBuMAvV8jVEHWacSBkphaSQi6og
	 WAZXAWBoWcTeck4QSSww2BuTprq2gRzkfyxemnksi2XTxBzEwOq2gIoqefqKH1kJyt
	 W+gl+RPndDUokzG7p55tzHn0e/GdyNUR78glKZaMFca6s4JKH3gDEw7Nvmrvp8EGrF
	 xhEiXZK9U2zhdzW6TLYvDIrD3SQl8g9J0GTtD5ybxwdRmoYmYkPfvzLeQchzncI8No
	 862UoD3//1GMoT9fvcty0r5wwhuZZ5XnGAezCNyTSvoF50lLGs1R5GwK12x3XL6ufH
	 xI3CeGL0d2GRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC99EC4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426491368.24716.13520297879606715535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b25fea0c220fb407627c6538c4a615f1d611c0b42e05e6170aea8b7fe30fc99
Date: Fri, 17 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784264913
