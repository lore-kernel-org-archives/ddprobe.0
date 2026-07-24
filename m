Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374AE41A51B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784896834; cv=none; b=csQuSP3Hl87J0scnTNZ4dcQBNNwzN4ijXZUyG2uOHf57bJHDL2IxDgxCHa2uh+Og4GFyXWvGD817oaxXPLTISukPz5K3fuOiaWgTH4PUiPQHywyvjA09xXHGwg+49qHcQoUs9TzFVO2+y5tzHmq4EMlw99RX/wgefqjHKHOH5a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784896834; c=relaxed/simple;
	bh=xnxiNWeKiJ4vM0YGNmi8HR38MemUdm3tXr9Zv3/WEQA=;
	h=To:Subject:From:Message-Id:Date; b=OSSTplKLAYgnqv96kfp8MZ+pHCMip/1ElC/eDJ93Xo2ftmRhhD8r7EA/8mpYY2SYybJDf+WKr1QZ380jDGjc+faL5D0fHWCXgymMJR5A3e0ZQsSG5YDhlNFYpnCaES0yQ6SLWEg4++/yylWpkTxJPSIA3eEAAN7RRPd/isSgGmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZvbUW96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZvbUW96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB63C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784896833;
	bh=xnxiNWeKiJ4vM0YGNmi8HR38MemUdm3tXr9Zv3/WEQA=;
	h=To:Subject:From:Date:From;
	b=CZvbUW96ekKgiWpAQGrAtNh8P2SRYhskaGKTHoydnNLMs8DnRu/7HvvmCjZ851s9w
	 4q8o1H/R0RsfNN2Wj6wL48ipo28l3uTm6EIcUzRCsGbmn/1wf1qRca9Km12hU+/s7U
	 EJ/sOppotI/K/B8bT8u4bQGdqAQFtkCCmIYxfLRvXNmyar1V/ggG+GKVFfgN607x3s
	 QDUIc0ThUt+8NTQamXrses5Yq0xVbes2a3rEezo4sZoXrdwM1JVkVLE8/On9LAvGFz
	 hEquBiLoo84CAFNmhrMxywqUsdJ/gB7tBpjYO6sCBTKHOleNz/4pB1eYHaxGGOivR2
	 97NAs9sq3oBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AA6C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489683368.13166.17698825092990903061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcefbb41725190b090d6157468cdd94fbaa6a4c8477c835c9b71bd1fdedb5f37
Date: Fri, 24 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784896833
