Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C5543C076
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777385254; cv=none; b=a6Byu6FJrzLTPwcGgZ6eGFR/uNVK4mpQdOaxRJW5QmJb2QtNUfClTXbGu0jrk2f5YS8slboXEliC/GP1+OzPLdRtb/MQ/X+MMuG4zhkJTuDfqPwCjkThbHlEkA1e14mEcbLby59Esv42ty8c99j+giNatgD6UY/dbvXjr0/Zky8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777385254; c=relaxed/simple;
	bh=ZVdzNvGTPuXcl1j9g01v6ejmRs+60V0aCXuy9Geo/bU=;
	h=To:Subject:From:Message-Id:Date; b=KRNez9KUM5V7dU0sUoMnXP02HjcE0KcuVHHs/J8ctjX2vyp/yJ+OGqdpdLJZWRm118cJz0CsOLX/7e/KXnL8gI+HOgiRmdGl3GTXXsDs9St+Im2q1qmBww9Aw4plOSNQ3SAl3koxVRWspY6IHeVLfeJO1EVEqGttq8mGu4hTqBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tytx9Okt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tytx9Okt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D7AC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777385253;
	bh=ZVdzNvGTPuXcl1j9g01v6ejmRs+60V0aCXuy9Geo/bU=;
	h=To:Subject:From:Date:From;
	b=Tytx9Okt0CDiqu9Vt/5BXlTdAPaAFAHQRuUyLuC86bEPNFmvq93JDzcNl8L1THglN
	 kwK+gIYPN5Dn64zeZkvmR8T66lYz1pzzc5F/OCZlGDCf8vmmxPX4LahnOdu9+l2XeS
	 FcInIjd5tCmxmMRLadvdgiyH+4D18v9wDaY4A/ogKpFy37h4EbpJv7HrsEFuWF/1GU
	 1ewEbZFZDBelv6ssh6icF/94DSb7If4HZwJ8afxCV8scHtKmNBY/2mvXv6deGtpAlf
	 hT64hGmJqCwI1J8Od3ZVasPfMpqcBVD3WFTxk76IXIZV9tWoFscPQa5ajVZjTiDYu5
	 uOVDEWg7l7e8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B03FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738525368.4843.10757927583927733248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2e5a9533c378d07d991a142659babe2b33f395c60997720d7fac14ce48b8db
Date: Tue, 28 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777385253
