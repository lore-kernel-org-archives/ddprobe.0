Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454B82472B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783246714; cv=none; b=URcdA67iQybP8KyHkWAW5a/kfbgKeX8xcmO1ghHj20r4M9Z2AP0/mXPsPYmPmYv4FXSeTSEO9Apyyrj3Fu7HBfxImkL92AWx8ct1oyFHdTRRyvjyJ3OBuV90sAITggzlUb8sJQNBNC8dnVN3/Dsi4uVYj9849Vr69TrrAgc0kPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783246714; c=relaxed/simple;
	bh=DbRoCcDVXeEQn/w6RcNqVc/PHXnoUqu0601WI7OzYOk=;
	h=To:Subject:From:Message-Id:Date; b=X8K8Y4XgM+soRIBLpCx9tCvufYUJ9ybWzSr1FT1WeqOk5TOfx1BgdttpTnqdbXn4YeIQXBWaFnVSLhM8jcs8KbnwrniajpqIb+JiO/+vsmKQc3X6XmtxdJRuomgOFrVUExenweM6GBx1XnLGgL2CA9gCFojwwabxBH3I8X6xVik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSSyqIHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSSyqIHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCED2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783246713;
	bh=DbRoCcDVXeEQn/w6RcNqVc/PHXnoUqu0601WI7OzYOk=;
	h=To:Subject:From:Date:From;
	b=nSSyqIHJLCDZUxEIrXruHFYoe7jWeyVSehiitWmlTLGiKQsua0sSMzLAI2s0A6UMl
	 c37DwexgyD63fTh/YI5LEEWfkIyl770S99vDpFomtq3mkrl6xizRunXJz26FxiKfSj
	 RfdYcwca3iyzjcvGp/or75LdGPGo8+huOkCdGKSeRxSOszr2arxYdyQeFwMbQEL+75
	 rGUhg+HhqtO30+tgUcXtR8rZSLrE2Ne05PaDnujPVIbsonWNTzRIVHM4qFk3okdiPS
	 3VIoVdxDRm0d7fyGBHmype46EYy65kEMaJGcviqbTCPvvVrSZ6E2nBlb2XXjSQ5g9u
	 dbIxvA40RvmdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324671368.5811.16105527212776920518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3948c0fec2f4101259ed6a46cf748c882764ae72d2aff04eef4de0f79f5f33ce
Date: Sun, 05 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783246713
