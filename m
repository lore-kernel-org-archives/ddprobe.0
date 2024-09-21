Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BAC3C24
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726935954; cv=none; b=Okz3Q1s9E1pkBhaDU4rgkluXH5uMdBpeVG4W5qkMvMGk6a7IewlqJYGlF+ZaDGu89vVGWJ699F0DY/cSt7C6LVb2IJPmmtaRCgcfithhrM4XVMKFXNh0qFzKH85NVtZ0bGOAeO91B4Sopuqs+JvSEl8nLMIjXQsrnGa15FWNJRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726935954; c=relaxed/simple;
	bh=U1MHasowqad/sQ4HILCIzxSTzGK23+IDMgSCdxYyjdY=;
	h=To:Subject:From:Message-Id:Date; b=coqFnlRNjtr2QMnxpzaxdmmb7q/R+LTQIvsycEfIq1CtInlt0v/OG1iTtT6oar17zLlgTxfd8YoiDBLlR4BjdfqKnKOed4qQOIY9EtEnYXsOpJ/1FAAv4BktgswldXMjTet3d20RhEV2+Fo5u4DmmIpojyYvIjXLxcl96VwsScA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2c8NHXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2c8NHXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2297C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726935953;
	bh=U1MHasowqad/sQ4HILCIzxSTzGK23+IDMgSCdxYyjdY=;
	h=To:Subject:From:Date:From;
	b=A2c8NHXXVvYjgW4q5HcNrq+CG8zPNhpHUz9zO2tU1Gkue3+f001YKfnIaruGTfVjD
	 HMfG4OnDHtUuVkwPdlQZV87xrXwiurto4MBP1p12V7bZKHQNlTaGekgIeLCnXxFgN4
	 Qw08qfR7B3EnRtgyciSzPwdIUASIw6lDS7N3CwoOOl2ZqdgCijTfLU8uIrPzy7V5jo
	 NHGXxZ2sWFuTcitSRyes6dGYTt6BmcS7qdeT+DrjNYS9kN7neIVe+CCelMhF07RQ9y
	 3GO5e72FXd3qJjd3xNJ3nldxgAqkRHdf4oAiQvjApoxUxvOPpBI2VOK21IGOvKn65i
	 hjjL1UbiFPMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2ECF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693595358.18884.16278040210464323529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74be6de5686945e08cb85643d68a23bb2c22f2e34ebc1d832738390d3dc0261c
Date: Sat, 21 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726935953
