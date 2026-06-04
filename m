Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274773C1412
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780602874; cv=none; b=ZnkmZdeew6ZY51ETe0VT0eYgQQsRh/wj1CQeoaC8cwA+JRUJdMQVmtq5zR9hYC145pTk9FNhdwpMfXmn5JIZdmG0l44Bwq0kauow2qZDk2gFSYvkwwIlMA80T3a2+I0+YUtSa47qAOhBfM1JDrjlSq/xbE4QeEdO7J2PK4WVY+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780602874; c=relaxed/simple;
	bh=+XUySCT2frA5kMjA8pgMYgbS6u3mDhzMKm0gNOiZN4c=;
	h=To:Subject:From:Message-Id:Date; b=kGtA+zeJ/hwYH0Nu8ekLiUuIXYpXmhr6rq5VEU5hbK9PY6vTUxoWnVptqUISaMn+3rg0ZCbsirMbUMp21B+YZKDtWqvpDp8PvtvhE5ZlAhUubjyjcCIevRV3GOKMWJfVJl9Wh+BUDDoG4SEq5BkVSzwWhGrWbugpqcvvfYM7fFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDiuzYAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDiuzYAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55E1C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780602873;
	bh=+XUySCT2frA5kMjA8pgMYgbS6u3mDhzMKm0gNOiZN4c=;
	h=To:Subject:From:Date:From;
	b=JDiuzYArFvOsF8t8t+XzUlEcWBNHZhwQLOHuBjAdbps+qymyWEN38hV85wjy/jRfp
	 rTzTuQbEEbkLyWE8wPAll/pRyiELSC8Ep/n3JgGmX5mnyrP8XR7dQ/cA8ZIUY9Kdd6
	 8mynGYt9PbQv3JHU/qICcAdcIA6SHhpPMT+8vrcMsnYk/fGaOHfwYXKYFp6NJobpuS
	 TkHb8dAA4QbQ2AMhM3eWU4J+5YjezmWsyiNrQ49MTnoJ6pgCO7FNgxwLRlRNU2m5Sv
	 Grwl5McrUnSmL3t8Q9DQn7LXh4a3OUtwC3gljs8y5oVYCZ2umLJp2TEFRq1Go+BdDz
	 JuwxAxUd0JSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD67CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060287369.28466.5646096323854684431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5e6ae9c3d0d9f6356ccd062546f43a19f27b124f0aeb002b794f255a4413e5
Date: Thu, 04 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780602873
