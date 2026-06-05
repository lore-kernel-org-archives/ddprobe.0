Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083E40F8F4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780641274; cv=none; b=N/RTChkR7aH4JMwDFpJHNN0MieEMeYU3wEKNIMGYzhC8S8hmz9eTsROvJdr/0WZ3qnnyNK0cUcLTINubv1jOvUWqeQZV/5WjOt1lc+CnubOquL7OYpHvXqCL8TWpTu5pMEbsqqf4XRFJkfA6kko7JZ0tQaUo2PNUM5htow7HqgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780641274; c=relaxed/simple;
	bh=bgrlb7Hpq5h7xzMnJgnySWpcR/aSKn1fpGscVdnS3+Q=;
	h=To:Subject:From:Message-Id:Date; b=MvkQllo4kQsh7zI3i3Zgyjl9LAqD0fM2D8Eh04+bi1Id1Ggv9oEJPqXR50giXYjhcJV1U5Zf92MBf+0986qGLkTv4habqsV0WLNPTgMDEWUTEJK/2foUQVR7XLZFDKpC+pc2bf2gpQUzHPZ/8HQKRnzr3vvgw7oyq53+2yrMVEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWWGhfew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWWGhfew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D4FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780641273;
	bh=bgrlb7Hpq5h7xzMnJgnySWpcR/aSKn1fpGscVdnS3+Q=;
	h=To:Subject:From:Date:From;
	b=fWWGhfew8fxqo80RSdRSPDXzHD1sOBzXrDFwHeusfEIZvJPJLCmSsKLvyljqKgF2y
	 gZR62dfj6gP0yrObzAp6DI/RCLb8JudxT9HiSrBm9kbMJfT3aVC508gzoEyowh6PWv
	 uPNw5PFK4vyef67RxAbRAzWNz26MKzGOtMgomYRB2L5tsqI1MfcVO/eYZMKiJ1TC6z
	 J9Vo+jeyaartoOMW798FtIdlQgPorb9n6uCF7aXMwJnAV8KFC7gzYQyt4nTxkufsgf
	 lpcK67kNrDptC0VS6R0uPeJXdEFkZiNALWksi5aXgDMt4DCAN1VeS7LuxQ86AbgmEO
	 Cj39uaK1vuRig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD590CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064127370.23739.15209450526993138862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66c58382b59bdf22cca9d94a88d4ebc56e1ed3fe2f359dce90f8fc4eb702a0f
Date: Fri, 05 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780641273
