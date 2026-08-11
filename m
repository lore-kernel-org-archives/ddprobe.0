Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B663FF1A5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786483234; cv=none; b=KEl+ahXPqpBhsod1+W/dMSsCo65XNuWFHmRMyle2ttuSmH6UOIIFEc7sdmlFRmIIJVhy6cb8ftfqW5h0xpZ78xZ4heFWBzH4PXAAjlKrJKcca5P6gr3tijtPpO2ZS1SnKpMAZqN9Nj2Hj33qvlsHui4Lan9f/9ax3isEEtziC2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786483234; c=relaxed/simple;
	bh=03m8h7MA3E+T19wNrqp6bGh4pnmSFcP+5CVZyzbud58=;
	h=To:Subject:From:Message-Id:Date; b=ELXxT4eIhFpNnIVfBKSC3478H1fSKIzihw4uAHpTSv6Vl0g6V3Rp8ZGRyKBYTLmvo70rFnwfSWA8e9p6To+PqHV72/EZQVYleBQJKM4Ix0YuhgFcQ9Ayk1nTN5h8FzAXJpBolMLiQ9OKF9T5mlu7FLpGYDukngnXlZOZKObN3ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSyBqG4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSyBqG4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1842C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786483233;
	bh=03m8h7MA3E+T19wNrqp6bGh4pnmSFcP+5CVZyzbud58=;
	h=To:Subject:From:Date:From;
	b=RSyBqG4bwHles+fb0olAB0EZ/Fc69a0uyw04nwjQzKvbwqT8I8whoBgaeqr+pNnGO
	 P+dEhvhpnPl+bFkdbZwLYrfd57yKz2ReyjoA0ro5qZlNYDzoFHg5WNc15jxHfjW6MQ
	 ANTDxeAGtt/miwvChMMKGNt5Rvg0ewbSkxEX1tYA987mQ8btFikbWiHEMkHL4JLr2z
	 umd2G38ifvIvGnqqmVhoF42R3WE78sUegttaD2XRjvzLxndGZ3xyRYZBVjCprpK92B
	 wDcxpMZoUe1Y+oKpUFqEMTxyHCdg072FU85RCXemRDpynrDEwmZLmm8tR1Asoy7Es0
	 sWAhCb43hyEOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB82BC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648323368.25623.694243847884653331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c2581f811ff660f56ea727623609ebf145afba3829b6a77cd281cdb25f1ebd
Date: Tue, 11 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786483233
