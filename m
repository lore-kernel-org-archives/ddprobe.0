Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60211357D03
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778757034; cv=none; b=UeeLn8N2rsiy8jPI4q2hn0/aDVs3lIyKUVFFnFHA+5rKnqB/HUEFOmrl6O024vNXNoQ+9+Vw+29exHkeyhpZXjJktTsSFUvE/4ovzL2uXiQLmkRyJl8DTzVn2g4zgipTBbZhqoW3A2gP/X8qJc4n/TthENi5mHgVfmrMvrmbj+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778757034; c=relaxed/simple;
	bh=VCYvQ6gb7v87S4QB3T8umBT/l2uf5+5fQgnXToAzvSs=;
	h=To:Subject:From:Message-Id:Date; b=AnyxvIjJDYuClZogVNC9k7OfH9YOWtpCjFT2pKNa/awUfsu97p6dh44z+Xraku0saLg7cCvBDUqr69GgDdPDyxvcmPH0kQVj3UbS73TNxg8AKJ1ZXgYi+SHojkzooMi1fnfZ98ci3nGsKn68Dah/E83D/wMD1mO3lZB2ok6w3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjxCMpTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjxCMpTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DD2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778757033;
	bh=VCYvQ6gb7v87S4QB3T8umBT/l2uf5+5fQgnXToAzvSs=;
	h=To:Subject:From:Date:From;
	b=ZjxCMpTVYFWrWFYjZF3WKrZNynIKCYo7eCPhm8RImTt+MGbixP23I9vPD32oZYbwU
	 raCTLEMcn1NMWZqASM4akHJ3m9/Htlk+GfZqL/I0P+IJcobcKrVi2WEc07npKO5dEY
	 aWR99s3y2LPkY+gQYpYksuADqbQRUry6BRyqGKIb0DjPH17lwd4jCgHpWSUrhgMc8B
	 nc3vybpvyCcv6QIcF01adAR0+yKfGbFvlduN+gPMQypAZhlGdnKSK5ezKkyQ19u3Vz
	 IB8h93cNat5j9rVkq5948DV146cZfxYFUveX3XSbMOM94SMCscp/f5PkZoOJmvq0dq
	 p6XXwH7r6YixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DECD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875703368.12966.11580264656579768685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fad938e84f314e70b989aa2659cfed9aab7e42872a4c7b0db2b64180dcf4a4
Date: Thu, 14 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778757033
