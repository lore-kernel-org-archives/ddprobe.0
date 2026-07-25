Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AB17A305
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784954434; cv=none; b=KKwRVOKvnR6BcayODLwmSk+zXcYXcAjWdR1NEb0caIMD0WWRlZaJqb+1olR6w8D6vitNqKbh4yN8NJrZPOeLoZ+YKEWCEmVZkV2aSK0177ew88yMcw/6/64qHAW11JYEbI4T+XGBSghHVBJzJ07OQHQsneAIKvkIGHPWob9Lj9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784954434; c=relaxed/simple;
	bh=H7NIPNMlhTmEwHj4+suwQb2noj36NnBZ3GhMRUd3p64=;
	h=To:Subject:From:Message-Id:Date; b=d7+9Oq1fmFJ2nXHonhFlvOasxfsE9wHcubIQRrOWaJLkBSoRl0hAbFzZu5OCkymtay67Pz8jvMKIJ64u2ZDQ1cH4VngG3fhyJM0GKJsGMC2iNP9I89CXdk4vckGpwQb/tbZCmSZZ7X24z+7ynIBluJc4PPu3gJ827VE4bPUtgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beOeL2Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beOeL2Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2DDC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784954433;
	bh=H7NIPNMlhTmEwHj4+suwQb2noj36NnBZ3GhMRUd3p64=;
	h=To:Subject:From:Date:From;
	b=beOeL2IsingbCsb/5b9OH7792D7kE/BYuVHZF6PJoiZLwAek0TETke1XCq74MQJ03
	 mGCJ+PmrBfdH1Cvxdx7cLqO1Wp8dQKYkdQfF7HukhnUcuasxsm87Fayr/wTX3yGGUj
	 8y40tvmNFXNDBTb7z4vohSID3pX7LWmQ8/hPDPiHPRclhemzhNcE8RF8luI4OUcaet
	 K3IW50vX3MxKl+HlvVRszM4mDuLTQU+UtSX2GFzIS/gl4oz30bsiz3gWyTJD7EbWsp
	 RLAzXBYGE1iPgcKEhILAKOgDw0OK0qLkKSDCdNEgixbWeY/lIolcdhaKrCYZXokCU9
	 tY/b+GSdcIC4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26D7C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495443370.12021.6251942636034987930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045068362fdd011491d4798a4707cac537d57b81a2f85b4d626a4f6bb0ea0909
Date: Sat, 25 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784954433
