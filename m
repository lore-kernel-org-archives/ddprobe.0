Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BCC28C2BF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788333634; cv=none; b=q4B75hVeZEpJBkNN2b4u4lzQmidhE3fXSYG+ECV7VDZpGDBSQNWUHryqMcz7+UUzvhoNsEw9h8yuGWULESPd9Gzbg57mXSw1Ph2c9Lf3tl+aNZmhKaszldHFsyp3HR2YnMeCQXY2/CLu3BunInWO+/CuuNFalvMmRqc0GCFt8mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788333634; c=relaxed/simple;
	bh=UBM7/KTifJ3g/3mZbYckdJTt/HMrWQjQWGus9x/Tlx8=;
	h=To:Subject:From:Message-Id:Date; b=SOLEMJVYdLJKVpQ0RjxbYYPNfnxZL2pDo1FlbLevejQAqEOKlhRNMXsnlxVU++LCzv3cJuOQQdzM57UHLWib4n49nJGmOcKFJVI9XgzXT67uGz9QuvY+VtNaes81fG8ja77a3vxUaN4I/yj+081jzDFf01HgogcvedrALyVTRxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY7jeSPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY7jeSPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3789C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788333633;
	bh=UBM7/KTifJ3g/3mZbYckdJTt/HMrWQjQWGus9x/Tlx8=;
	h=To:Subject:From:Date:From;
	b=lY7jeSPTojut81FfPF3X1Pc4qtKdAflYJegmFNAFCp/2QCvtMC1uVlo/KOmqVHOxc
	 bdJyX/uAqRF6K7PI1d5+lJiVuIsjL0NwlxWXEaeqSTeLsWwDaO3hhXpAiQ4fE+HqpI
	 OgNmteuHEcRFyrF2WPFjCJTlOx0jTSRv+WhEesvQRuiu5avYdPQUUw1QXubzlxE8ID
	 +tQi+1qYoCBvbtnc7LhsdaMKm8euj2UGb5wdztQbkPMPM6NUDVwD+gvlR5+wz1X/L1
	 Xl8iT9eol92AWFvBPKC/B1ezmOTEpnS5Tla+INBwaZmgel9dHUu69rgj7oGkbQ++xF
	 8CqiFiKN/njVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0801C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833363368.14899.500967021020442480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd1661ced8db299487b84ef39d3109dcca2a40ee5dab03ed1309c283d148633
Date: Wed, 02 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788333633
