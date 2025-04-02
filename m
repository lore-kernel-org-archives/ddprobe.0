Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C3F3C17
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743557394; cv=none; b=Fyk2KKYA7mmvY139OwJemiI/A1TXwXdXL1c5Fda75jtf4DgqhLO8eLMwPiqt8oGzG85CppdPpoA7lTOpG2jsumj08HfNMdRfHtDdziXuq2lWXqRfoXRbO/1fRxERXoHlb4mfSc6q43qrDaxXMyhWvKhDlpv/xJsP1wf7GezBk5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743557394; c=relaxed/simple;
	bh=E5Ok5+bPK2QI29boEmnrqbwu4ZBcxRngMcQyph6wEdw=;
	h=To:Subject:From:Message-Id:Date; b=MGKXLerVXnT5EUN1XkOlZQSP6qfK3zYJfCmnl2R6wcivGlbMDeNo5KRnmkQsp5J8zx7eiBqRXtZIbAblx9jZcRuhsyZ302tobf/PCnIbAPbSBEugS6g1CywoUgGjDS5yNezxsR5hh3ffX2nFRRm46tx+V5z5zxh9WP6QgWR9/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyHGZtVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyHGZtVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743557393;
	bh=E5Ok5+bPK2QI29boEmnrqbwu4ZBcxRngMcQyph6wEdw=;
	h=To:Subject:From:Date:From;
	b=AyHGZtVX/+Yv3QD0ZSWtGEOnDrZ6pXgh/uZgkembeaRIEmPFlgJGXk5bBMMuTkTU1
	 NQDyxWaY5gSx7oBWN7wHaeSJRjI2uCb5Ug2Jh9z5NrTSUrKdxhn/M39hyopHh6L0gA
	 XNZlHNnbCs8eI2FIejj8etTz+bGN1u6SIVZoSh8gRR3mHL6zhwnA8armAEh9+GOtvq
	 A8l+3QDCZuvbnU7lA7nCdqPikpLg0Xx4X/mtPhn0d6Iqe773CbnNLqxR4U26LZuXYc
	 flt6j4D2FHhTuP91ZmnOWPOGiGcP/bCR4OUexT/iiaWpwBVgRASrOKSHu5PqPThGN5
	 jUs2pAHRTGK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F980C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355739358.16824.13261269727828957046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de08972a55345f93d2d83414d4f218b780a807c787092f91f93d3c93f202f673
Date: Wed, 02 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743557393
