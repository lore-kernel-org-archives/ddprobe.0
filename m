Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746291109
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713750623; cv=none; b=EJ2c4ZWDTiW+/k+1K8PEgzSJuIDx5kWpMkM96hMFefto3nqpqpL/ULU2HEXnxC8ueeoHSszlyZoGIgR1o7QGv80WGyM3eMv1RgX5vLNX0kCm+Ynl4dESqJ8cLngq4ARNYCb+q/b33x0DtuH18UI6PjBconRImRX/1ocauLJ7qwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713750623; c=relaxed/simple;
	bh=6usG4Hzkv8KNCpAzn9VQaW7ngYDM0CF1agUC7uIE+TQ=;
	h=To:Subject:From:Message-Id:Date; b=p5eqgd6KtXcf1szzcRWJSo8xdTg680CDdkdbSBpmLqObIi7EqBiDbiPfcDtzvMjv5sCJToKdX940PzuDORlClbqiMdbgT2fFuv/VE7uTTXPmGo8lOVHZ6Pj+giqF19SWze8nAHXDPV0dLhm7smXdRScHMpRFKp96g/LEcseMkZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8pHmIkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8pHmIkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A2BC113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713750623;
	bh=6usG4Hzkv8KNCpAzn9VQaW7ngYDM0CF1agUC7uIE+TQ=;
	h=To:Subject:From:Date:From;
	b=Z8pHmIkD5KzUf/e1jXCPXQG9q1m7KMUiHIWilFZZ5wzmBGjYWYRN0MZfHMZex7ErJ
	 VJr/DW2hoNs0UVz+3QDPNVlhS799n0h/fWcjkjxxqum5ri/HquLO10v0V7q5vhSQb4
	 +rncQ514LoQf61TQWK3/TnMQOx+L+7V43L+ztiHgeNaglL/d0T6xuASCCdUVdz5qzl
	 iPbtJaRudQ+NeO31XcRrKSD6BvVBaiM79rGPAGQajyFhtQY3wz2RmhUINnTpvOLobr
	 c9ApvrhZKQipXzOOMo/fthgOt/hqtx8j88Couq1KigVpf/j3k0ZY7zziAIXoYQZLYl
	 rNqj0B65l9r9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAB6CC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375062287.4717.9603649416842032535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c2a405851632e74d47b4c1a6b159a8740dae8c686cd6f9b1dbd03408661643
Date: Mon, 22 Apr 2024 01:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713750622
