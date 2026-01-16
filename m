Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F8233A9D1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768535034; cv=none; b=TCmsF1d+oaXNektzELXrAr/99CZ/v9zikCNby4JQeeZvA1cDhFtmB4ipIWfkPLfvtjs0PFFoygZIGHltikkqR4mlbIs4TR657NsyVseFcLU9HExV/kmNfkcmCICk9pz7iptUwDM+m1QTD89Mf+AbJEUttMxg+cO4LK32AxJhHc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768535034; c=relaxed/simple;
	bh=53tj6vCeIUPf4CWGisnL2wjUbm8mzGN5arsO7aqI+Vo=;
	h=To:Subject:From:Message-Id:Date; b=Fla8Zk1ZNebdRLZVIMMvGzZZi65+U6SupSBtRmOqaIAcOFQhiQpdA6Gw9BRYIGSNov1TKrwKD6vBCk5yHnPk6Sj38tpvSV9izb9gjmIMu5EnfHdTp2utingVS5OD8VC4RUWU5QF0Oed0PCJ2zazYuMvJHDQsYecU7+y0YTt8ncY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dial7dUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dial7dUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F90AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768535033;
	bh=53tj6vCeIUPf4CWGisnL2wjUbm8mzGN5arsO7aqI+Vo=;
	h=To:Subject:From:Date:From;
	b=Dial7dUSp2k+2EeYNMuNop6Mrhv1c0zNGkwfmdTyLIgt7gdjVhhQqJvB/mNayR62h
	 8gcsZf1KRNcSzeUUeQnNVARiT9y2NsCZxgxzal0vDaBy9mBPGL3SKUIKCAn+WPSd/e
	 tBM8iiqzlZ4VYOEwNf7ZEzZJRQIoJcJ96vMDOxkHk7WBqQ2+crih20oajRUfLFcDMw
	 kobZ1MMsmNIE4t4THSXEaqPMGsfIA5K6LauLSy49YEjraeTBu+zJD1XNKyTRcMnF7y
	 bFIngIqj3jZzfxKUvorhQRYHbDVGj+iaNDHfzOC+wh1k8tEToUJFAX5Ail62T4nNqr
	 +OHAv8kCUo6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025DD4A5F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853503358.27669.2000008337810835628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecbf8e55299ed238658e216516be8f22ee56bc08a44b709bcdf0bdb404a8a0c4
Date: Fri, 16 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768535033
