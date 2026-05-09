Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878912F8E8F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778336254; cv=none; b=NRuuxFSXoR5oUbKab6nAuTJNlBj+XdnGX6w+zQcA6zVCYke22YzmykFuBIZlOBtiDh6CxuSVPImco+CgA845epTBybpn/QHdf9ZNHqwj9w3r14QyN2PmCkWmFBhDOkiYuuULEsZlS5mlzfl+fX1/z1w28lJCrshDB1vWYLGtXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778336254; c=relaxed/simple;
	bh=BuCUQiy919MMCAFguRc68t0YuKNHrpyhT0DjXgUEgQ8=;
	h=To:Subject:From:Message-Id:Date; b=I3tnU1z4hzkB9+shuSLQarAkIpalAT0y94xSvm2JHep3xxrIzr9ak3gxX/IYh/0at8M003MhYrUfESzivp//NLc83gFd7rcqQ/4/hj361NlyLX0qWh2wmFJKLeltvfaV1rXEZ5ZjO2EyrsTcffiyQKAKsCGdFqBvHTcrhDQ/hQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDqktCQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDqktCQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BD68C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778336254;
	bh=BuCUQiy919MMCAFguRc68t0YuKNHrpyhT0DjXgUEgQ8=;
	h=To:Subject:From:Date:From;
	b=YDqktCQOj98Xp/6b6YTZTQBVXakaCZ2jxgBeFE78YerqDwl4HFTZX+TUDOFkslUiw
	 RT5NPY6ea3I3qVG6Pp/AcnfrAxHmI+2e6TIxlci1ExczSd203U8uK4Tb/GY4h3NgiP
	 aWJtHw992gy1yNb7k3ucU/PDBeUHuTpLcMnkBx2FDn/Vv0E/9F+oKT5X8gCqiB1oLp
	 xVo+u3O+h3mbHbEIMQBwHmn08uVurNrOfL/rgtG86zHrGv3qBZvmW2U+TAYDnwX+DW
	 a98Q+ts1CKNbL6WycZ4XZfJ2ScjpH5/9SnfTSPVabMNE9v1Cy+hgbf9DDLd6H+xX+4
	 tpxtDSnggZclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6979CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833625384.16063.5755344734020384067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d332842142a33accf2a8ba2e147f3d93dd3e249fa7ccbac7f58131bafe3dee
Date: Sat, 09 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778336253
