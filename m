Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AAC1C5F23
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759036194; cv=none; b=OkMEPm5LyHB78tiQijkfCFvgjAdxSxOykZHVzG4oW5xUIr+US0I6C1LC62YRlPLuzb2nQmjlxf7x8++Dkzm4Z7JbnGo0138Z2SLrva5WS+bWnALxoUd3D0+Ln1VazH58n8PTt73lyDtE8+112bpDijs76ovqCheuFSEFdAY3438=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759036194; c=relaxed/simple;
	bh=P7DVrLHwzNa2dMJCWQJaXLM5i+jmppqxvNpNRBwquWA=;
	h=To:Subject:From:Message-Id:Date; b=H84qNPqaS+FpjBGH7Tfva/ynJhSpskujosl+yfocRapmRqFxRJYcaCYk0qExNI59S5UnAGlD0Au2dND18jrkY529fWlITmyQd5KewaD7l9xOqh66oSRH2fSTnsof+al/Rco9Q65EG5bObl1+u12ubTjuLidMAK9PRZEwIIhkhSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JelbIPP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JelbIPP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA38EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759036193;
	bh=P7DVrLHwzNa2dMJCWQJaXLM5i+jmppqxvNpNRBwquWA=;
	h=To:Subject:From:Date:From;
	b=JelbIPP/agbGbKqXac1ALFR2ZcAu+iUJmdZdvlCkPQGqRlSpCHIA18Z+vttOZf31z
	 93pxNrQV1JzUL7DIhmxCdBe5kp+Y9Z2Z581CpDbv/FUAMI+XWo0NG1i54ZHWY02Qy6
	 ifSzuNCHsjtnvg4VqCEtw6Q/p6B6mevABxM9rgq1sBauRHHG7/yM3Or8HMG7f/k7uI
	 K0Xz1Y3k4WJwYx1c19FZitGxhY9P2vDaMhF20m9fq/3IDbVUChKSlEawI7Ig6ERlZ6
	 sA1/SsY3mCP1vg88R+XucQobTFOcwhu7t5aBfJLyluNwLyAjjoEK4e1En7P1ELQD+e
	 cqp5UMtEqyNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C87CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903619359.27160.8967887546755490339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0e3092d1b06bb7d02624f4a4760b1be3960ba53f0ab342ed54a11268ec683c
Date: Sun, 28 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759036193
