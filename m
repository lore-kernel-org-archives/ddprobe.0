Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7653DF00E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773687894; cv=none; b=Q0T1tblUas4HKAOr8vhohb1TLT3dhdJQifKJM3m5rAuVznM0riOCr1uc2mvRumOMGuP3YcVovi9AI2pMxxrcSGd9c3t1Iqz2DqzUBzGra7Xsh2egh3h7mnt/OPc9BbuGa4BSbsgLhQEFSNh+9Dl1XGXPz2rnstprGEtwDckHE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773687894; c=relaxed/simple;
	bh=8ThDfuY0ndRfYSB4sW+UkNvZ7LcCbf3K+jT9KH0wgeg=;
	h=To:Subject:From:Message-Id:Date; b=VHhBXY2DxieCYAAXZxMHLDQZ1ZEM4pFe6xOhFFOVcxQaLSbWcUA02aMhutraaskJ9dE/HFHPog/UHAIbGDkokyTUYaK0MyAvkMg8zDi1v4fTcRYiI6JDPzt21dgMoJzFX1Oqv3DwQif4NjNreazii3sCIGxcPDnTUB6bUD9KOmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZRzSea4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZRzSea4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77BCC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773687893;
	bh=8ThDfuY0ndRfYSB4sW+UkNvZ7LcCbf3K+jT9KH0wgeg=;
	h=To:Subject:From:Date:From;
	b=kZRzSea4GTIL9zi4GU190v+CDpFiTLWHIoK8r6aGtwm2WwqQ+ye69pmbnhYQ2w1Yc
	 kHIk0oJAumotk43lO3pSzV0nXw5/K+WPPHsQJ6b7lxDXyZpTPSotIjkevLAFu0lkiS
	 XDxmwd3McLr+o2Rp6hwUZtdV5A3vKzScP3Z82gxQ6RHXvx3/Cr/RLCGK0EBiFsDf1S
	 BU2FpmCHd+hAsYhhF58dPPaQVzEC9sHaJoe/SPGdv2JWG2IxOWvyH6zu+dmNOolAQe
	 DCDCE4qGGChSAqD/5gbZNG3HyJh4Fpce35iDsl5/J7xdZSfCVZlOpBKw8wmkxEkXfB
	 I7+xYVKrvVrUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B54F53D89
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368789357.12138.15806444043209450646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d881ddab823a45297815fa7480fefdc44e25498ea868399ba885823a50ac67e4
Date: Mon, 16 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773687893
