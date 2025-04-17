Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A81935948
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744896595; cv=none; b=PZIFfKLLBoJ8X8sBtGQohRqDm/bpGn8YyaJ4dzaHKZBYQVWXUPVqbnNWv2pZwC4PD62sI/LiGgMTHzr77Q67vwtMCuacbpfQ2HiNq6e3knTMoQS6IJp62dZae22fA7JteRhp20w1Btovla2MAsK2eElxmLWyEbG5E7zTi9APhwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744896595; c=relaxed/simple;
	bh=ygip8omvWYVZ0yan8RahpBSXBX+VvHHKLmm0B+/LEYw=;
	h=To:Subject:From:Message-Id:Date; b=JOX3TiAR4O5/bUbhyoPhYk9zBuHLZDNOISsfgoFgUBZPwiPqeW0S+hLJP2WTs/bkdjTHeIp/3I044nEINpnBv9zUQIn6xFuTjYgCxbcAFX8XpWdiakOppwfSN48zdDgPsrrbgc4fJzkxtcXk6Q+UELaPKZ4q/27kYDn7ivL9bPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObCe/ohi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObCe/ohi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE0DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744896593;
	bh=ygip8omvWYVZ0yan8RahpBSXBX+VvHHKLmm0B+/LEYw=;
	h=To:Subject:From:Date:From;
	b=ObCe/ohiBiJl0a6/Sqgk6Ni6OoHR5syj/IlkoNv7IY4zukpcznOd37x4Pwsi1hGBD
	 xzAVmjfivlTmfJmSvs+xlgncV44RVDnDOGbDz0b6i5Gn5DWdJkgP63QfYMOxSfsvCz
	 Z6aeMxRl/EB0uTJ2SNEWmqIyAnYI5RJb7hz3q3b8Kug1gu/oxHD1mIhfa/HzX6vsfp
	 W88E4zCgAKB/A1EIMnmFUxZV+qGL7LVMGd8mE8U6N57xtbvxXBuH1G4ZBPuCvhliEJ
	 xpCYXYOc0ysbuEHcIutuL5y9tGexfYkxl2DRbrRo7NrB6maM3khEwv8aFF4kHjxzb/
	 epNDMBmR6/DHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F286C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489659361.25189.4577018693367318844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fa58ed870fc9d8c88aa0ff0cade1523f95c94c6c82e4168098078c68e22397
Date: Thu, 17 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744896593
