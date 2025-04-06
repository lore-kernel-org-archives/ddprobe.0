Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4970533991
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743911994; cv=none; b=EqFGkaFaxTVJSHCCi/EYmpCfsqfftIRkFGdCq942w3RIruf2YLBzXvIH7FQ9yUx3nHbgTsmaY2viPMvveWpO/48gqjVvD+qWA3loj/0A1R4DyYiwnFHjTaCCvJxn36FYajIVgdToZFlGRLO5Hobgx2ezU9x6YMcJvbBx2Mlq6K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743911994; c=relaxed/simple;
	bh=qzqBRBOW3tZNiYq2z8ISJcOume2BYDPbTlByXqeFVSA=;
	h=To:Subject:From:Message-Id:Date; b=tc9qz7MYXaHSldRIuJJ+pAwJ7TobZPEUgi50NDiGZsuw79Ck8mWPaBzvt3zfBp0xnkhldcC7hUcQ4paZA5DLYVlLEBHyWzzYbuYxoothID2kq2XW1XQJkHKFuZTx1GQbydj22dn4hCjIu1ybDF/Gnu7MFRHwI+EJoR6seyTgbl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty/4CuMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty/4CuMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7704C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743911993;
	bh=qzqBRBOW3tZNiYq2z8ISJcOume2BYDPbTlByXqeFVSA=;
	h=To:Subject:From:Date:From;
	b=Ty/4CuMJO4xlOMNacahfrtdeN9NElpFYB/3xAjTajYbqGo771are4hR9i4jK/GNEB
	 Su0omxr7Pp7E2RSs3FmZ4QIWR1BCKxjXZpx6zzONzHa7LsldNEyM1bMK/5MH/+Qj1m
	 e2Vu1K4ZVAHDZN4Nx+1Q4nxu2wGfhSO5N1eCKyMfr86yqgzbjElfiCagzwRx85Spz8
	 1IJeL2/dAyiFjQkwWZPp4vEwVH90+usMj/wt0SCjYJXgs2fWnM9qLu7QuCyMgp5lCF
	 3ozN8MlqVx5txTOUHobz3lNUJwnwyJ7OEuviIYnPpo10Zb9zypin3hnPshAYcKkfO0
	 fjSC3mT8+MpHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A8AC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391199363.14436.11115339285571420637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0700d78e98fad59f955864bb93684b2d31fc0a237a49fca75dffb9b61f9e4460
Date: Sun, 06 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743911993
