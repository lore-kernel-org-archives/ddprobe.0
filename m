Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BD3286A7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784000314; cv=none; b=aZNx/iQSq1klaB9NuUsxK1Rn/7mQJIuGwlx+bcDjS79KXCSIagtXpb9OO3vyr+5zUMsMtv8I2lFMwM4XlfNlf394SBXJIaGetVUd2ijIYVgUOBsr1EDzuvPL8eq1pPpnfFQN7jxuHIrmKGuhx8N+nLsc9W8pj5Jklb3yXWt9Sv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784000314; c=relaxed/simple;
	bh=P7dI7X7MePm4ZazAhgCmM1OmVmPJ+FdIOBSxTpHdXTg=;
	h=To:Subject:From:Message-Id:Date; b=XmJzImkdQZf1VR/oVoQp7jayrHwi8leyt2zM0HDLx79oap3NFPUS1r9GtP9DrEQwwIyqbbfZ+ktx50tf8y50kE+O3SJus/BRsOxPnLJY74NagCwkhNx2uvsNH5ZCXPPAWC7WmX56nvLsVnhRcNktleeiWOAV6WqTWs3WZnypmS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi3opdx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi3opdx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D83C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784000313;
	bh=P7dI7X7MePm4ZazAhgCmM1OmVmPJ+FdIOBSxTpHdXTg=;
	h=To:Subject:From:Date:From;
	b=Qi3opdx8ZGMs49QhI2b34HznJGxsSDCXCm6YUYb6dgXIq58FrCX2shA+tpo3LoWPL
	 5DuZgDXf8XcFbz8fCQHhWn+9G6DvU3HFwC5bHwEUMma/W2v4O8g7qXfBI2N6lrpAbu
	 Z7UDo6hYNLAm+e553RSRuLAkeEcgq8czFcstQRYqebD7CQH8/gzTA6Axv2gMKovFL3
	 cGyZLCsIUAQ2jOlqjYoIxuDEQETYSz9mvARwLZKFQQUUu7LGDGEItShYr87JrXPcmM
	 g02WJkXRL2Ay3T13bf1TQ84aXspT/VSCTwQRotAq4PfW6UslC3lRScAVT2XCzSs3tr
	 cuu8bfJ4nUmvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4E2C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400031368.25171.4099793796807964928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467a916b1b25e5745bb751bc50e4abb0888b717351758e7f62dc9ad9f27361f2
Date: Tue, 14 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784000313
