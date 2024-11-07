Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F462119
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730942754; cv=none; b=LoJP0W8S1Xlxik4zhlLNryW0NXUmaoG8YtfIh9FyuhiDgnRFMQhs/dtGLYc1PaNBs2v3WrZlopGuCk5VJ/nRGeSkABrxwbJ7+HuAbskTBEzxYcopvdIF7RRoztt3DJmA5lsrfXd6V4pbuT8QuZR1SOFsln+Bou5u9ln4qO14Aoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730942754; c=relaxed/simple;
	bh=THp6/oqG5KL/PdiP3DJapcXzk/GWkKbe5VOvprzVqWM=;
	h=To:Subject:From:Message-Id:Date; b=eDX5NEjSRV89LSfwHc0fV+8Ky9P02lxO54odB05JtacXLUV82dT/D86sCP4esKcSfB0ukKUwTnN945f1NXCUDVP2tlCS2qmkQX84I2Ny3USh3loCE69j0exFnmjwjfGZnEQ2qlrpMknvEVKxt6+J9CsgLiEQhwR7VFIBWAbNZ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebckpSsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebckpSsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E73C4CEC6
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730942753;
	bh=THp6/oqG5KL/PdiP3DJapcXzk/GWkKbe5VOvprzVqWM=;
	h=To:Subject:From:Date:From;
	b=ebckpSsycxEig+LEIUFhQX6UqRVH+r/3/2Cf6Nnbr5WUkpNfqOY/PKzoupZ/Ecg83
	 MF+6p1xt2uLNtbzNVfRYDbBxFKgV/oTwqVpifGcl5OSabDbgSUtO8HA+uhPuUYIsBl
	 W527EZhLsyY3PYqZjZoLQlb7UMsNI/0uUKPO7v0BgRDWEDcIlRhe9J+cxIeOiUWnke
	 pNtrHA3U6BuKeorkEIi+hmgXZFJzodyCqVumbHUGo6nfQHc8ywv24UewI9SwwIzVeX
	 Q3k4pSjJGx1aM3Asu7eSimbGAjMYanxv7yQ3cUttRTdGU30t3c6q7lGnUyLUCtxKe3
	 Tabes2u0NwhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D58D29FBC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173094275358.19871.9646040377749613817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9579ea3cc43d183850510290a5e0e91b890b9a08eb080379fd1930424cfdda1a
Date: Thu, 07 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730942753
