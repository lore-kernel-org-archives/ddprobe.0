Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C571F5842
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770252234; cv=none; b=fs3H2YgDavK7IKSXmNWLIZK8On9a7rrYoew2Bu+xYfVRasSiDmcycWvuZvkoqdWl9mlSMN6NPWpe3Z+GtIUGxXvr8EmUlZGl/qwerD+qJpCGdPqVMAUwAMO7uxqD7K1gvJL4VHL+bIr1GoNX14y7POIUPoAaU3XIjrhc6UPI5eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770252234; c=relaxed/simple;
	bh=D2frA55srqty7nJLF4LzcXwJsgyKuguVoLizqnapmws=;
	h=To:Subject:From:Message-Id:Date; b=nSRgakUAMCDBLvV5cNxudQ2/z54vLmJT0fH0/h7Q+7VPtgPhm9RLAGX8tIfjbjrpwydkJQfsBf1jvE1xiIydzBZOFEoKXLOZNPp+NTY64YpR6ImOrqnknVQi6nJcZ7bafuLHsQwxKrs6ocP3EOl+99Fv8Xje3H6DB3HSDVQtKCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULB/N3jD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULB/N3jD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3049C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770252233;
	bh=D2frA55srqty7nJLF4LzcXwJsgyKuguVoLizqnapmws=;
	h=To:Subject:From:Date:From;
	b=ULB/N3jD3ZLjwa9o0nEYgVqMmz8i0ri1UjEtO3s7MBVm0spi5Xv8W6PW8T/jHM2mQ
	 y/iaWt3OGYY0+l6eD0a1u5Rd1bwrcEr3i0B3QJ5TOvoJBcWhe6OvHzeDugtvkfWXHn
	 TH8IyIDNoOCfwqOmYNGGxpTlkZnEdRR+E7EKyR029atHAplR3MqoGt9RzWS9ANZ7Lp
	 qJajnofEPr1tEzGRwDv0AZFDcXWlAU6apZYJpvoli7UEg1yWltij5P+ZrNy5zsHLfc
	 DK6BB+WTBdNb4uFYpNyt4LUcMoRyRM9nBYgSzVk55XJLzSU+wbAlr6siaOzsaZV3fA
	 d2j6ToMVz+Wrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB97EA794F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025223368.16010.2378940301295160607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fcd74152c0e8c30aa433bb7f4fdf2ab43e95aecb72fef8ac0d154be32cb7dd
Date: Thu, 05 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770252233
