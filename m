Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BF03218B
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715754743; cv=none; b=pezAwAg+Ag8EdSs7iXlfg9r4FcykLF2bO1WlDkgdns+3LiRSpYF42KlQLncPWqu9DXJCywDrsWr52jRGWglfG9COIFV3UhbgmhGwkg/wE0zdcq+cOC4O6CpWCYsG3yerdTTuzaOB/j1pAygHD3iphhkjNHBZ9+JUoWdPHSSAzRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715754743; c=relaxed/simple;
	bh=h5UtQtwIfHhy2sE2bbYoFMSRpo17sJ8k9dFlTHvENtg=;
	h=To:Subject:From:Message-Id:Date; b=W7M+d9GsNdWn865NVazwGlel1JQV9I87bO809GwuvnNPlgkntX/PD1h/a6Pc5aFMPfqEryKxWtkivAIJ8Rtj1ehFjx0VpqQpnpPW+SLY3Y4f31zdC/rsmxuhmn43+832Php6v+w8b7h4+t07MJ+VMDGZwcD6JpClQwDs/etskV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALDi76WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALDi76WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C56C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715754742;
	bh=h5UtQtwIfHhy2sE2bbYoFMSRpo17sJ8k9dFlTHvENtg=;
	h=To:Subject:From:Date:From;
	b=ALDi76WXORMylxAaH7908CGKRl5yJGnH8zjxHo7xG48VPNtJqKQo2Qa7wypF+mlqA
	 Hx8jxerME001wqxa7op1gdhAIiDjmeLAV2muhdbJrBAf67nkIIOc9QGnGU3J4nJCLo
	 ZdQJ1C48VTqGrvAczHi6KDOvEgOf8dIdzj7p2mRtAnFcj/8U2ZUx0EUlWDLiFGU3ox
	 KPID8HVRT1lG6zjvUdjP6CWmW4WLHyriuV8pWvzfF5pQtgDGOyQaRWnHRk/0JwjreQ
	 E8QL28UredMgGj69NbeuPsDk4n/3nIewnVQ536SS1eOozUN7QZAjFFRFsHTuVvRHI/
	 vb69UhiMhs67g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25F5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575474278.28909.2166073137795003154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2302fa90be981340801e4f0dbae0d431246f5c3151c932b39fc7ce1d12ce7231
Date: Wed, 15 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715754742
