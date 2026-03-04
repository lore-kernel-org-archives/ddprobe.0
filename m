Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB3826CE11
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772661294; cv=none; b=UYF3zC6ld8OxdWlas54gr/E9cxsk/wMTQIA+8DPQm0eya0YSGthzu+BVQnhGvZSTCwrZhULhn1GAASX+SgUVjo4yxJ6D1BhE76tcO7m9890xGckch2PTo1i4BZFZkuxyJNP5mvBDQXHIPr/r4KHQOfvjGWiGEcJ+VZg67iOqEXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772661294; c=relaxed/simple;
	bh=G2V5fpCTHfblfub3TMlTgPaM+K7Gex41AlD3CHb203I=;
	h=To:Subject:From:Message-Id:Date; b=UUA4H6jYR5+E269n7Zxfrg+ic2C1YeiSgVUMlfoGIZWEb/CwFXwBux2ZcpL+BP/NeynNREy3DIviMu8RUH231/uY0/21rybAzUWCSfaOvL83PHsy68BtJvQgmQ/3TxIIRkHpmEA7sNA25JW8e5DzY6KqU2GDZLwj9UEP1OvsvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfATt7i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfATt7i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B28C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772661293;
	bh=G2V5fpCTHfblfub3TMlTgPaM+K7Gex41AlD3CHb203I=;
	h=To:Subject:From:Date:From;
	b=JfATt7i4HQPVvenPYTqz6b5lQGicz5KGQqjDKynYEflINmANkX/OMoTVd5Fz7J/R/
	 i+tnYBanoXQb2FB2Qenxl0Cvztqkm554ue3mx1yg2p3j3v283yABT9ZJXqsR6QGD2n
	 jwpAL+iFzO77GrPibKo+buw/OezXT1gSB8tl79C7c9HubvvdiI8CV3NNx12tlQxdTH
	 FwIsL+gd/KWlOVk4RxAj64/1T6QI/XPSBhpI2JNbZdYnl+nVmpAw4rRSlxX5Xko0Os
	 At2nLTpQJuoIoLbLYWIYSioLbXnpeXQwgUGEBDWzaFr8rGit3ZMalDpCVRLNLOjsW4
	 sc9VDYLkcmKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBFEFCE47
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266129358.32247.10090147278452959432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018e1a7091b9baad782da38e8f1ca54f90640f45b4d204387911fa25f7181059
Date: Wed, 04 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772661293
