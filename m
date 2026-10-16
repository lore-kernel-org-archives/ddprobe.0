Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598543E123F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792185034; cv=none; b=lg90sunyGh78CXvxHSPiB+uOaG7E8DwIhoiCe+2OzQnjA4M99F4YCYh0eeDIWC2VbIvU1xkG3wNBlDZRZTyduTP05gsIP+rYLRXJZ8fuI++uqhi3lQjYJcXdp2ejUdeJ9e1xDOUojrgFeZwvHg+2hLN+g+9e5wqVqKUHskIoCkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792185034; c=relaxed/simple;
	bh=m0Xu24/1MZV+5sMci3kNpqy913ZZs1+4Ypdy5+r+q/Q=;
	h=To:Subject:From:Message-Id:Date; b=GFoRh0cu2KP0/RPD65joPAOfXowqVFPAOWf0VDbHnIwnBqDN8fvxR42QslcfHDJisXOTqu9Yp7bK5SFlqOkur7RKOUz7MRACsGkGjzMcVKcYajOEG5EDlS18QRistJYABFez4+Pg/Ewoogu4sy+eZ27cbI1/5RZwFAOsiMW5ayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noH3JKxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noH3JKxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BE7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792185033;
	bh=m0Xu24/1MZV+5sMci3kNpqy913ZZs1+4Ypdy5+r+q/Q=;
	h=To:Subject:From:Date:From;
	b=noH3JKxIvohVJ+jGmOHbqESD5ygFUZLyWA9xIoJpns3i5n5AQWa5XH1eFeFCoOdZL
	 UD71eIlVuANMbbgnO6UV6l9D7qvMGEiimMAlczKWWaZgOad8Jrll3ABaLEg2CXlFCn
	 WGuaDKXBkpKelTSqmtBXy56zuLrinxG2A340Sc7rQzNkWs+roj3Wlkh10LTgxdU6Io
	 nCddOCcu6bzFTMppIdyOlrMHcRdIKhMGIqSvxbH+IJ3lTe6UiPUvKHlEueu3+TTI1v
	 vFQxuVuq9RuBpFgxiTV+nAUguGOxIOLmBPDi7KF8ePsH/5Dzavz6qtcfi1Sr/UP7eF
	 Jsjc3hs3ncKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE058CCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218503370.11853.253298320639092864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c240b52146ef6dcd9684aef6cec3979b34d47fb6323ca92c6f14ef7b258ef6ec
Date: Fri, 16 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792185033
