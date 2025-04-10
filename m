Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394701AA1FF
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744278595; cv=none; b=KjVpIIx5h0apBr3uKc3ZpqnINl4lTOIzWk6tZu+TBm7xquyG9ueyAVhrwduJhx6nkuKVspXCFTWFyRSL3FkN32d5kG10Uc6GMZEi1MxJTJAjyOOx4wn4OAk18P/PHdWG+La02N/B5+thEanBuPmiGemWgqZPJFBW+GbAU6L5PJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744278595; c=relaxed/simple;
	bh=P2jsSkFrY94zDSjJMPKD761L7gzkUXDJYa4fDk6evq0=;
	h=To:Subject:From:Message-Id:Date; b=h7BTYIBqEKxD/BDDZqfF34UaifSDRLNl371aHSHdkIWgmQ1DJDcsojDtrBGDn16vIrUg744E4BZsMBgma8Re8bylR2CASrXNnHWKo4ZHkHOg/tpgZG+9vm5X4xsjpGxkzkbM15dq7u3XsNxqOGTSLvsQ5GX+vUv8C8w8KcCb094=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNhpGVni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNhpGVni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFF3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744278594;
	bh=P2jsSkFrY94zDSjJMPKD761L7gzkUXDJYa4fDk6evq0=;
	h=To:Subject:From:Date:From;
	b=aNhpGVniR5HlvzBtDeBF8pMx9NJaAO0XcjXKtgydDDFluKoe6nSCytRmugqX3orAf
	 3nJzjVIAC8ypJIuBSt9qbDL/jkC/pzS50eL3TwK40yh3FDdqAgOfrRd9+sBpIPDAEI
	 FMuVzaXASvY67/vPUl0C8yuiZC4Go9i+EIBcfcHAXVGvnPmic9HbLzJTvNX7SS5fKl
	 /h8+9X/jbn8k/0DU9D+/Tvj8M22GEO18uclh6+QDJGSiEyhxWWEbno1FLNXBy7Z3nL
	 LykEOhQJJG23bi2yX832fFddjDoB0PdX0oa8Q603+37ts2ZqffSZPM54S7dVJsXUVk
	 tJd78pcv6bmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A3C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427859360.27459.11990804689198894794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a50352895d0abdf856d0a009e76fc3e81cecc8063b7417933a232f720e8ea35
Date: Thu, 10 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744278593
