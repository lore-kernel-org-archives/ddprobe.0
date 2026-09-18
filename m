Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CB339366
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789737634; cv=none; b=ERmkpKE2ifrLV1i3EyDrDoacYDZAHSxabspoCgAEPTghLEfS+jh8uP7rK2iLKuVc8JHmKlNXQSrCG56W7onwTbQstZ6zvhjmrjOx/jk8vQSZqE023N86qm0WUSJE+Cyd9opqv4eUGmsHZqffSDTcfw9NzYZslpUwAMwLKYfK4dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789737634; c=relaxed/simple;
	bh=npxJZRMUt9N5pq0ODRgze25VMwQr3HM28ivUEaBsZmQ=;
	h=To:Subject:From:Message-Id:Date; b=BSFuhoGdXxbu3BFjgMYNrlEavRTKch8ntZs+RsqIKOEn92hZ7QtcgpqMCkF0h2rUVWRVSehgrh8A05mz0V5wd/4rca9hIIuVylxC7lJ34++V0KMPcIr2CW2sJcdhvVjhCgq8LrtrzO/CDvPIQE6lvoQDx5V2d225On6q7hG5eTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6vYoSGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6vYoSGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE917C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789737633;
	bh=npxJZRMUt9N5pq0ODRgze25VMwQr3HM28ivUEaBsZmQ=;
	h=To:Subject:From:Date:From;
	b=A6vYoSGBSCVmGPaXmvPTOFGy79ijSoLnviuDjcLgxnD8d2M4WZ0eGEmAtFP6FxfKA
	 dTcwZG7pJVO7fDFFykc6Gfs/fjQ1L1Hg32jlzkYsxZNOHTDJMj3aGffHaQN5r0w7zS
	 e3+5dgPA1JhPYg3k+jMRxWbcAM/CLo4tjFP5YGaIU3zRaMP5o8keazCw+lfaKgMOll
	 w1WiXU4z2i27tyfgMndu0tfftOfhlezokolz2V4sYPZwUBgze7vdAoT1qnxly1GLzF
	 zK0yirRC24ttMN9BMTlDwUHG5fXXSaAaBugFgRGA8Ul1LiP8CCFF+STnVaDY1WMp3M
	 fDdOvsSdb/7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB73C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973763368.11269.1152812695702118542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ed3d73ce5c667cfe61579b3c0d3e79f7476358d19f4af8e293516e6443a34f
Date: Fri, 18 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789737633
