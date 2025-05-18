Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329A3BE49
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747571394; cv=none; b=QDeyYC8KQb8Zd1UiPoOxzWKoe4jOC0DzBJPbliF9tauUkxb4MFCEDOlBIqKZL6jsEL2XMhJUv3zIdAe6er3De3D8uzn9St89WXycZ3u/uIzWcIkVsGM50XJdPRwKFt5EPv+0nxvnbbl2dcoptau1bv1GNq3y76gQEwHJFjViiYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747571394; c=relaxed/simple;
	bh=cg9Nd+Y9shSM7HewAJ2XoCe+Jsj7W7JXn87rNT3MRrg=;
	h=To:Subject:From:Message-Id:Date; b=Jb0p1mKVaQRur9+Eqs6sIAxczvECsW7yOOlTM4P75QXAaMXTF2/OC2ynRAMrpfZtEF4sB3ZDlKNRr76FTx4YF1yS9JwjrprBF25qHzvsD7tbqs4Pl7e5j7z0AklSo1Cr9SJCVC6gFkdZGLbVy6gLwzJ4tE5ru0EBUUpQ3lGBQGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/7ieaPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/7ieaPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747571393;
	bh=cg9Nd+Y9shSM7HewAJ2XoCe+Jsj7W7JXn87rNT3MRrg=;
	h=To:Subject:From:Date:From;
	b=R/7ieaPJzaZgfnopopiuJvI2K4bKCicPC4OM2PYSqHqq4oDltjZy9ba3qK2TU3+ig
	 sdv5m0ffE/NvwhmaZQAp8llj7mJadwoPHmJVAqPzs+5KRGH06kpIiOhFzL7BlPvUHu
	 PbH8RcchrqLeNptkt7+1AtTIaIgoTWN27DYZhYdb4oNKr2AWm7Q0JYwOEPI843O7BS
	 i+LJvHXrgpP8qxmuTVsCcazWqc5cEeGSFiz7EEuvk6yE8l1o1aeAcNKc4q4u4DfdbO
	 pYX8dWjld9YXYKDbZHTUUjJlIXMHiIMVSTIH1g+1bmv5YAxZjnE8xIRZoTEm0pRJE/
	 kYEZoW49Vjxyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89AC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757139357.16750.18138169011337288984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c08406496ae19bf1428291720c5f7f78e6beba6fe473ace0f266b3b48d623e
Date: Sun, 18 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747571393
