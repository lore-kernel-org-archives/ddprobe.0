Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B35181BA9
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717001063; cv=none; b=WO69HbzmqNLjSQhGfv8vAvSCSZXZb1UlvjmSzqD/wvaocMH6dqwLLz2VRXOPcMcqUVP9mY2rrtQSNSAUVT4h2dRf5Wz+gJAH//ibNt7OrLeyoZn+zNy+SiBIsvOQmbSPybcSLz+ZZTfPJWh4SgJdHHU+xqje+DBiQi5K3IQy8J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717001063; c=relaxed/simple;
	bh=1ra6BvfPKnkxENSTddWfmmrWSypkGtVM/9BR2rn4Tsw=;
	h=To:Subject:From:Message-Id:Date; b=PmQ5IE/2WeXQfx8r4d0091uphf+iMX4yQTNcJMB48Cm0eFs+gLexW7aiki37qjsqrPm6nMRUi62nR8cpENZWQSU0oPOzTK56Rfsi19CZ2BuBWaE2pxyTGcxbKTEOf5JJLPEDahXHAFpaKkKxRGBz9SK4KP9obbcybXnDL2ZBY2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsShPHBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsShPHBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4124C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717001062;
	bh=1ra6BvfPKnkxENSTddWfmmrWSypkGtVM/9BR2rn4Tsw=;
	h=To:Subject:From:Date:From;
	b=IsShPHBJzzgF+aS24jqLIr1dA2ZBmcSEl8gMOOT5HeUqvHX4g2SqBAd01iAE7nmLY
	 rWjYQjFIHQw03D+5ZstRRkkITYYEpJojfeE2+IsL4U2r9JB+HFNYFUY4lxWoCCmA86
	 3NIvq+jgQtruWhaFeIClY6r8Nwkz5C7ekojznIK0XGoApsmntJuTWlMPeiiEb4By2/
	 6tF2u4Uno4nskCrPWjlW6FE7LXt/Kjrxd/uRaX3kXkGueTCkrb7VuU6GqOf/qnS8WK
	 gTOuyWCFQDQpkTsMxAPD/Xbu9ilygizuTBH/IkWq1heAESMQr4Z/5dCp3Z6MqwbKaQ
	 SNZORJEJwqU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0932C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700106277.22728.3082655738630929292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e9d2aa86448a588caed1aca467e93feaa21e79505c588c2955c68a5b463758
Date: Wed, 29 May 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717001062
