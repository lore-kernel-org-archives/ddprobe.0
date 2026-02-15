Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E02580D7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771142094; cv=none; b=AiLElLlT2RlxOq7AVbMny4CvA4gzL/idvfOnn7/5Oy7qDfTcVj3YselxJwsJj5mmsoO7i53M9GQNSmTRZzEaAOeaXOw+W5nWZ2sxAcwN3X1N4Ijuji8ZnGN+Eelnk2ZLHWenJGGM3FuNi/4Z7dooyMyzgLYoVOUSr40AOvJBjMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771142094; c=relaxed/simple;
	bh=c7rah7z7gvG+kAIcV2fbHf0eSWNMlS9SHY9Tuj2oDY4=;
	h=To:Subject:From:Message-Id:Date; b=DGTfdqYBCWztaCd/fzsjACHLEomYtwyApF4UmZqH0q2ZjKM6hY8y5ybQsJBuNWnplklilF87+DHGReA6LYUp/eYRWcncUls5glunPcvHHJlIXpXmEqDEUHoVVqJ1Q528IPBreHdDX+6uiD2rnnqBzCTlpT9lT6qrIdAaTp7Biaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5jduJl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5jduJl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1B8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771142093;
	bh=c7rah7z7gvG+kAIcV2fbHf0eSWNMlS9SHY9Tuj2oDY4=;
	h=To:Subject:From:Date:From;
	b=g5jduJl3WKnqxIKvHhlIIZqb7zZJHiYrz8KHEIFh06Yj/FlAitqFkphSWgvzzt/06
	 oJTlq+t0syxhmqawgJm+rnV01wMUAcRHUOxtBEZhw9Pj37aNlfFeiILqfLUBNhtc/i
	 UmhwT911YzNC9jaUOXTWT6Yxo/VpRGHMQfhsumGZanhXfTT3NrRsai/lU3sSrsLHL1
	 orJB47M2OaOQdPy4rYyLTAZ5i9ORltZj31IybY9/MvZLBWX/PGM6cwbjtW59ZlDeLc
	 M3WArnygUxmx/Ycle+vAIqnogSkV+C4JoVmIlh2dICFjGkXi7rCYCq/ZheCzQtXBKc
	 QktJjTJz2mF9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702AEF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114209360.24653.15143052338630993103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2381c871d18d226a2e3e765758cd684449b689d1d8129a9dae06ad7e466ca6a
Date: Sun, 15 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771142093
