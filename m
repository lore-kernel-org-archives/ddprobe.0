Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F082175A98
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781412994; cv=none; b=H+qwpRcUtkTBSAsvYTPOLD8el4Rg1Eac0iEIzFvPEZIK4Vv+LQBjU8BgwlTZ/pcKbkGngMHZcDH0cd0nR2avvLZzeAv55DJJbYXVy6+aKyQP28z/ClKfqeMZ/fimFG2W/Vak+GImUZbR14GP9JehUmSh3n3QK5lLIvHo4lifPgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781412994; c=relaxed/simple;
	bh=T/EC31BkeEE3G19zC53lQ4MxSQme8IPCxD9Zb9ogBqU=;
	h=To:Subject:From:Message-Id:Date; b=aa2sbOk8Nw57Nn1ETcqqBb69Qyc8qo0k8/f8YKtCro6G6vFUY/DGcjSNpJwgYP6Ak/T3r5ASSJigwjn33Kly7wrHwF24tbQHlfdp4TyQfzutrqlWw5itOQ20X+Gqv4uFwpPL8jrdgg4WdD4v+ZETikrCkIpkezH+9VdXleI4dGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ8GJDWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ8GJDWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80C3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781412993;
	bh=T/EC31BkeEE3G19zC53lQ4MxSQme8IPCxD9Zb9ogBqU=;
	h=To:Subject:From:Date:From;
	b=fZ8GJDWnJ2Jzixsm2EXPjdcMuXMxpG0a8KDZwXsy8kZ2mtrhjpai7zzVf+atLH2GL
	 p8wSYK0GevJLrHR1MVj6SDXzT3ngc7d9VPmkvYu/qAcIUCTKX6Bpt9bdguGKv14uHK
	 ocKYOBISs1Sn6nsIJ4Od2QhVIS87aDPEEnX9OQ6xVfPuE1yQfBo7E3zZ618iFF2me5
	 2la+rIU0YPnKX9daEyXVdYhHdHEHu2C7ZBViXxffywqGMeLHi9ydVuqCDSlu5s/EJz
	 vKyhT7LVRmaqDOCCQAcP5f/yrW66TynkXpPkSXk4At17gCEpfY1YX+DbltXoNgFo0M
	 /uXNO6DjSOglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD020CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141299369.2080.12279917110205898186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f6df52b38e002484cdf50844b84c7fac6512584408353e6d252f2e1eb4f309
Date: Sun, 14 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781412993
