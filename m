Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E92D780C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769399034; cv=none; b=jvJzupFjkOEYUf1Vt98QiUzQQMPVm8DQv3oz64pSysg5aYG+v9kftcWb9Aooebm4f2PlEwpbnQUEpwulAzZH59Xtj7nBfFWCNO4zyxN7kqDDUdxLoAStQvAdCJwdgoY7sq628nelL8zkVm5M8miPIbM/dTFFBeJNv01CEJzhnuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769399034; c=relaxed/simple;
	bh=ckx9q4nvuKVwXz/Ft466zrXV+WGpSsIiyMx0cTmLLpw=;
	h=To:Subject:From:Message-Id:Date; b=GMm9sMyoZcmzD9b3Wj7QadU009ab82TkjPWcRp6PhEMpEZTCumt1IvAQOqR+jBE2z7G+4EtZRbvM/egLeWM6olbh0JOuS5MUqr65kxcWRYToau0Fi+TSovQ8YYZSvsqu++GUHp/F76uYWlhp72B0xlPHfJx16qY+GwApU0XRnAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hivZik4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hivZik4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C2FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769399033;
	bh=ckx9q4nvuKVwXz/Ft466zrXV+WGpSsIiyMx0cTmLLpw=;
	h=To:Subject:From:Date:From;
	b=hivZik4VmGehEgmhQRwp6xeSv1PLLtPvIkOQTc/JEG3sgjbPzTXXaRQ6jDzEIJMid
	 edN/nroMh8Y4obJTYlOXXocSw5h8+SQwUhuD5Yq8bwFaEcLkQik42hRnroq+muvkZe
	 WnuW+Q27bIlXq7VJKL9dVBVKB9Brrb2x0hHN/K4vQTHxLfWaCdbUpJsp8qd5lGXkdF
	 ASvzUIDN0pdgoSN2GBt+7KdgMlqXFqa4PckhbijZKWFAUUsUmn/CBb5sxGjthNX/E3
	 dcaO3KjFDhqtoFipU2FhSd4T2DQmzfMpgQMsRcdXstw7fBpE6+3bkmZO5NydeeeukZ
	 jWf9C3+ScDK0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240AC88E46
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939903357.4529.16733881740203685751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d701a13f43c38f063a621b11f219fdca8a04c63f8ad176b5063082cc0830e5e2
Date: Mon, 26 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769399033
