Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C00B43BDAC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784734774; cv=none; b=NBAA+ao63f83QGaRTUmp/yzaJRNXzFPopYo24xR/QBKwq1uvNlOCZ20MJKkOCZFMZQ4srDdPJD/6/zclKL1iFDVHyqQ8nUUnCm5qWgq7YuJQRRx2eJkVQLQW56O6J8zgjuUkwongvQNbWfWmyWp1qyjBdaGYnFv0Ku6cffAF6xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784734774; c=relaxed/simple;
	bh=vrGUMwm0ptpOyl6wnEeKSHLg7lfTzG1BHYdFnYfVsgc=;
	h=To:Subject:From:Message-Id:Date; b=lEiExvYfgVOWb6qtnRKSK6IF1BhYHhBPd2pEoZnq7m/ifsh5k3l2Ujf0OBzY6sQmwQadMaTTiV9KcuAbJoj2XWSoc25rJgWrhArjD5jhCU0gkDAtrxYWruXE3Hoieo3LButPbLr1hBJs+1w86pKzLatl712gP9H8T3ycvOdyNjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVzWr3Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVzWr3Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D578CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784734773;
	bh=vrGUMwm0ptpOyl6wnEeKSHLg7lfTzG1BHYdFnYfVsgc=;
	h=To:Subject:From:Date:From;
	b=kVzWr3PcHv2P000y4/Jokz/qXh354EkNI6RH4lS+U/KglTzBmdHDdK5b/S0tAQrcQ
	 kwQeZX6+LecXzWmcfum3oqqAQQ3lkXmuGmPx4ZOyUJXVb4Nte+mqSyz074KbXmNrjW
	 doqNfWFwRCPgU+BsaFKUAyigSTgfiVZbdB56VFaqHXPt+qNL0PNN03Eqfm+vzyruqa
	 nznGwAFJSpNZYje6ZBQ/f1mH2HohtcvPGKKvel0yXfwHKb4li3io7id/bYqHjD3bwm
	 w47QiBddLEw0Nf967jpih0/x3LkzkG1IV0AMy16jd19oozImByMGLae5jq3P/8y7GB
	 F6/7A+37k22IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E05C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473477374.19643.6566112421289135976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692b703e8637be57d8deb4fa36f780e8ea8a1ac800da46939e1900532f3e3e8c
Date: Wed, 22 Jul 2026 15:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784734773
