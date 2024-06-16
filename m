Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538C0535A4
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718568503; cv=none; b=lN5w9zcruXd3tgmCkQmoM9WuoZyzrD6OG0RZ9FK539v+TGtwvLzuKm2TbFcOaT2roNMRvARFl2F6nQOvwnjFrjq6Kfud55F5KjM5vhqz9nZi4UmIuaiB8y4Ri5tOVFVqoVhKrLj1y74HoCDqVMO+7AddZJG5qJP9mVkehlupd1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718568503; c=relaxed/simple;
	bh=dg3f4/1HVli2q/Wnf7aXcWCvASTi4l5PXM/sn/1zN+8=;
	h=To:Subject:From:Message-Id:Date; b=OC+KXKe9kNjVpI84lv0H5rIVjasHjLsnP82qscwsBoEJYyZcRcgTlph7VeEb0CGTu7XZ/fJlhqvwHJshwLCGtcBr4i/qEK5tFeSMCPyR9ZwAHNT7XNfzH4zgjIAQf/DypNMV0vET2FGhJIW46Zwjxr3R1nRyWrLWFnlmCHwn0ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAIxK7OS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAIxK7OS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3769C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718568502;
	bh=dg3f4/1HVli2q/Wnf7aXcWCvASTi4l5PXM/sn/1zN+8=;
	h=To:Subject:From:Date:From;
	b=QAIxK7OSqhG4XY6c3i+KFXI3FCPPYgIFPTupJFzOy6KVbH64PN8vFGjJa4QCSbaAv
	 TnZolI4yirWI5nZO+j6FOeYuL24e5DQOoNpk8E+0Pv/XyXQRM3tLadDG0+xR/3/Ex2
	 hsMXhbJIBfiKQFcaYYIck1yPeq/63poc7yOWgfz/lA7jU0dMQKdsUwjyTJwzpvFZ3O
	 xp+Cj9Sqolp28ZBSVLqT28a8/cKe4sh25QYxigTFgyIfMCQv6whL8r6Nq3CwCnx8Mk
	 OoRPju3u/elplicu+x1HF9hz9yev0setU7C+c80kMjyAjMEJWzC2S0tU1kszHLT8r9
	 +6wQMalCSIzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A59C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856850278.31959.6529985941940507469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca4e6d6e6877a0cafb6eedd47982a2a5e1cc89d728371713657bfac7af8b037
Date: Sun, 16 Jun 2024 20:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718568502
