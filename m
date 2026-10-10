Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAB5482D4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791604834; cv=none; b=MEMs24Nv8xfHBj8hea+i50HtAQMgpCuLH7XWK3y4atibvoYa8XfsUO6+Ktb85BdzpQPTGUWU13lOWtvQJjBbAQrV5Hci9TeB7+SyV9ylvr0RUYNMPfOTiHonAU6Pfb2bbGmnAv81JchAgHz/UXOKHlUhEs7IiYc7mNUYLrxORWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791604834; c=relaxed/simple;
	bh=678j8lggJlf6wBpKJGjfnGVW6PfPTLc+wkLsHCVkTZ0=;
	h=To:Subject:From:Message-Id:Date; b=cDlqcxniA3o8fL0eQqIOYaLcAATrxGYBf/rZplIkqqdUdIvvxKY46SiGM8FTXz3bM3vzU6bh02hkR0vxBDBtGjaJ09FzQJ4UMKnkRfZe6gFm5m219nR/f1K7Bm6C75k3hX1OHc1KGPZ/HKS4nDi3YxFx8ZoHvCPA/uZ9Ew53DI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXJ/GvAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXJ/GvAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDB7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791604833;
	bh=678j8lggJlf6wBpKJGjfnGVW6PfPTLc+wkLsHCVkTZ0=;
	h=To:Subject:From:Date:From;
	b=WXJ/GvAITmO5rcVCteMLLyx380LFh5EGv95YTZDzfImCfoySRn6EA1hm1TbVsB50w
	 BFYhM2DmNy+hC2W9MU++j6Njy9rHUNzAuLYa3MGoRODDwRU0W5PalFU0ilRcg3WsS+
	 7NsFQcZeNTXYigRiLPPBpDwKDhtPqFJ2eRNaALxVAfAbhAZLw+cri1qYQydU14urnW
	 rwvD+qTIWcrhZt4lP3ohV30prCExL8Nso0aM4uWU5qLx7606/AG6Iz++9vO1fI5w00
	 XmAoxZMmz0uOFohR2BCKnk21ozcSJC5Z/MgN+C1TaqpJb9045OWYXcZ94wyfhCjNOV
	 H1m/SE2Qut7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC77ACA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160483369.2052.16219511328174943395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061465db5ee0184a9483d0abb7ac676c6ec05c3f64dbaf2061c8c506960d4487
Date: Sat, 10 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791604833
