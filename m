Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126B017ADE0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773104094; cv=none; b=DMaxoR6sKGUqYd3ZFCxaWy70K0CZBZ8cR4sTtnnh08C3X63sUxvmWL1wgAPiDb3snKCbrpesgcO6gOAOupbAPhv6tPMq1UoUZLgwcpgsQSh0ckgbNbmzavHYRXg6DOJa/p07b/oeMIWUdWcyEqVbKIFB9E85Rz7OFelkDrTkthA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773104094; c=relaxed/simple;
	bh=itVQ8i6ADqqXD1B7cm9Aq1VSRFPtNH2n+tsMYmgLGUY=;
	h=To:Subject:From:Message-Id:Date; b=GKZSX6NRNpeMH6jqz+RQ4rjU6LriGajXhVSLcy52BeNc4exxlohVnQiu8+EvLM3C6S0RwMfnG2xYQrhkwv9Dcu6yb6QZbtSN9fcThmWfQBt35IFcQf0JiVkTIHVZu/UvBpDe0UOYpJz73cfmXJFUtJj/jNDOHGDdY5sjckazQEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpMDU72r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpMDU72r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9EC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773104093;
	bh=itVQ8i6ADqqXD1B7cm9Aq1VSRFPtNH2n+tsMYmgLGUY=;
	h=To:Subject:From:Date:From;
	b=hpMDU72rRVrCaQXicGyx2wLfP07NyLIf2dnR2SxRDgTr/EBH5zj5JeLp6MXYS68U6
	 KAEHFK1Gr/Giwdl7lL+OUk2gTU2JUadwdBMw7McuJ6KgnvgyweYDmbUzM0WrbE7VMj
	 /pwl3kuJMftO+dItix3SyTW5/LT9IowIJzLQTf/7Axb/7Ar7VkK5tkBUhhz2RC0KP0
	 dU0AHNHKhXqqxSO5vRkmlZHOTTULHvMz9zlhwW5QmOkAcI5O13fNN11KS0uCBW/wLp
	 PyV9wrTD1K9tzQOSXZiRoqxJVwN0DzVtaGrVycSOoYWIQoy60aUHNhTWZ5EkBwI8Q7
	 +iLgZ+qfFgpcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90878FCC9A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310409358.6549.17108353009683882179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c80674d84722aa22d4f1cc7e1113e6461d201c24cf5b8c32b7a27f731a4d38e
Date: Tue, 10 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773104093
