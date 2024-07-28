Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B39641A84
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722168954; cv=none; b=hdUdtc9rLxBhPPT/8LQKy/0RkSBhyGyts5greSJINWPrQPP/3NgpqVjzIbRHoEBdJKR/ZoPObHqYVhIsJ9dxiO2eN4nnR0LiaRI+tB+oYUnZcDkR/nI9tKhinXGnlSOWEMS2tJ0vV2Mv1zGV6gX6L4JVmfDdyZwSw8415UlhR/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722168954; c=relaxed/simple;
	bh=HwKlSNqvA0VgafkhxDFz2z3C0qqF0PwZ3HAjG7CcOtw=;
	h=To:Subject:From:Message-Id:Date; b=khPuAY5EQrb9d/RnN2McoFy895HWww6AobT3j6imR6R6MPdxBDNyGXmnqVaGcgEJDbkASqfmKxo5vRsEAdpOvy/UaTqQXAjRpHHrsp37PdCt3QuEdqCH8+CABJrBv7pl+79l0Icxp3begl5sriZKTUx+rHUv4MYkr1IhwSYXNZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6hNlJVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6hNlJVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2CAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722168953;
	bh=HwKlSNqvA0VgafkhxDFz2z3C0qqF0PwZ3HAjG7CcOtw=;
	h=To:Subject:From:Date:From;
	b=o6hNlJVGV1AcQwvLLmZEEhY/waxMCcz1RWXPiXhgaf0SCTKEpuwXmdbSUXYSBPn6W
	 YIBjGAoBo1LUGqil6jvpyE4QxUOCAhUO3oPS6Zi4qQI+bsSPzBGxgkWvsWQeU/6pJS
	 nc3WKNMqpgNl9Oar+Ht6x8nZGjqJNa6Srx5IqTq8NeAbGtoRdVvHZRhNy1Oxd5VvVR
	 kuRmcs7CDpWUk8xeh/n1w0n2dj6VUaDbOdM9n6sKEKmaDk+GZ6knXdptVcdUGulqYS
	 6xaBKJul0lkSAhrWd4VtTvIoDskM/ljYMXbGhGXq+i5nHGw8Z1AlQA8iAvjeuAGfNw
	 ZZ39Y3jDTKV1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE6C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216895358.19717.12526241697588005543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5af1f58240976587652fa46622d6995a9c78c7ccc73375f8b5d32cb50025463
Date: Sun, 28 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722168953
