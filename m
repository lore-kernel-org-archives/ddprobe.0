Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1C3BED7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790495435; cv=none; b=KRQkV9zGz6kjxnjWrsT7rb848WZB7z93WY1TvsVZHMnIGD36rS1V4xNOuXySSITl3I2ARZMyiDlbH3fDRkgFUzWRKM61KT5nTGgDlATbOfIWo7XKjJnZVcV8ntA7Tgc7bZ+HzdAhVn84ndaD40GQBA2TIr01ZtrRJJUz/NHWcuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790495435; c=relaxed/simple;
	bh=e5GePnw+0qBpRfInq2dGFdp+RXGewUEpyhCobruuUqw=;
	h=To:Subject:From:Message-Id:Date; b=nwzgTzWGXNZlW8RQWY1PcQ+t7CqoT2YIL7BdBAnF+0L+vR+VA40cRx8m2a1X8eb9SY1Pvm/ckcp4GnPlQepz03VreIlme9AzvhK3ofsPCHE2DRFyUbEY8V8AYxoAotmra9HKG6pjjpFS3aoHInohZZP7od06S3S7LY0Nt5d3DGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzMgbAVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzMgbAVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0928C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790495433;
	bh=e5GePnw+0qBpRfInq2dGFdp+RXGewUEpyhCobruuUqw=;
	h=To:Subject:From:Date:From;
	b=AzMgbAVMtk/oM0ztOGRWUymbasAJvu+nUjOtJZOmJrsVISqpjHvajR7FFfeGyOLHN
	 3eU2m9urLK5dDMDvZkrSDGdpiVwe9FmrlzrTActRMyF5NZxkoJ2Q8asVN2XF58JElH
	 ZuGrfpI8Hgu+qRaGc2jiNvpxAgWYIMvMEXTK+ptKyyljrrgCi39HzVPNNB6F4VOXe4
	 P3SvtqGRGXPmFO8zrTdeaoaVuGbQ3QauGcQR3i+ILFJGxCGn5XewKQUgvzjVUQUsvx
	 wv9NoDKaxYIdynBr+1VMWsi/alpvyuLCqHzjJjm2YpiXP4Xzyt0Rw50J1LLF/WXrJ1
	 BQnYlTKW+Aevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4E6C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049543369.25505.14959267298122576843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c93b7d2b4ad847380652d115a9dff2a612d4878c87f6d8ee2622f88a1e2ac15
Date: Sun, 27 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790495433
