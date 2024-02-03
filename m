Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD29A5CDD0
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706958497; cv=none; b=NeQ0Wz12oJRwbfVLqPrs0VqPaStE4jCzLeK1uKg3kJGy0cyIyHakPiUqPf2N0ugXyFLTie+fOx3DjFE8ERV7CidUhaVCF2HJyO5rzN3DjZsC9oGLxomrEx733DWbBq88aHqdMNNoDMnE8pmfYQDbHEgBhjUDxWanS2f40op5VbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706958497; c=relaxed/simple;
	bh=VM8MllR5m300lOsoj5Z44A3zAeX1pyCGF+N0EK6fxuI=;
	h=To:Subject:From:Message-Id:Date; b=GYQyXdLoObX6Ue08w/0JyS3MRGnfNnG3Hg5fd5LPnEix0AI/8SkRQ/doNQvLJFpcWt/VcSb40T+lo9QhDEVZvONv6z2DuM0P9ubdFAECmcCRaRiNH+cbGx5zG234UgpmZciK/xM/fTCEYJhZ5vyxcN1OT4M7lVrPOrL5/XeBdhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGX5p7B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGX5p7B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D417C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706958496;
	bh=VM8MllR5m300lOsoj5Z44A3zAeX1pyCGF+N0EK6fxuI=;
	h=To:Subject:From:Date:From;
	b=iGX5p7B7KP8V3H/tTbHaeyYp4/zTacaxO+1tJua0yARIhl6ew5kgATs48TuReX2HP
	 eba1cpb+ps3UtyVvB0SFNb++jyI/iz0vefdA3XJRrI0NzjZ2oE5VhqjymT4nu9QeRE
	 b03j4FuYgI0nxgyusazVg2tRMJcmyWGnaom6JXFPo0ENqMlAZs24r52L1rD54fUqv8
	 bL5HTpBDg+MzMS1v2y6vfYs+otY25xpXRGV4e7xaDulQ+ZrwOzuz4cnOdl1OLjF3Qw
	 cS/MWbeTsLoUrWmgXNBf5fiNQoAALaaS4a5Iyk7byrgq/WVqzUp7EcTft3IzxT5UM5
	 +292KwBqZ0nZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624F3C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695849637.7457.7368022964312378635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf572774446d37115eb563b7a2fb98f475024c6bfeb49d8735c04630f3a75502
Date: Sat, 03 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706958496
