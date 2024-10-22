Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FE081AB6
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729626354; cv=none; b=m37GVjWP+cmZIkeMB+VvDyta52uqc5wo3ali1xzbOaCihAmvYs1jsrFEbsTYRxJ43OzNHBohvR893AHQZMA3G7B2BAzuMR2Oyj+O6e4RUpRZIKXntd+CBp/gcCX7X1FPSMAkEby61xcPxNSKsVLFCk3zEnCGAVJEGrePStNTJI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729626354; c=relaxed/simple;
	bh=yFqqaf61Iw4yo6YAM15oCPVU/pfcZH8cGRNSqN6eViY=;
	h=To:Subject:From:Message-Id:Date; b=QAf2UqkLzFvZaMdwhcjQlb6BTyWM2BGTs3VXkNCF9F6oneUQrbxuhAz2to8QMSQ/a+L4FmiZj6GTlqErGFs8fsC0z9BwSfiwoQ1rqDTHkw+8p1y4lrsqnsKXeqhpdl3zEY3AueeP1u801yxI/z8zgyEYklBrW7qc+PSgh3dXlmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh8ElN+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh8ElN+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC143C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729626353;
	bh=yFqqaf61Iw4yo6YAM15oCPVU/pfcZH8cGRNSqN6eViY=;
	h=To:Subject:From:Date:From;
	b=mh8ElN+KZdrUlk3sMBKuO2FBpnoSGDIibg7e0BEXF84p766Se3+EkY6Ho5NqWnXUZ
	 mwrduNfAb6CEHnJ3LLWZOjvtXimdzmyGqjrYVrZvALwWcZ0p9e6L5Ov9S7XPUeOTAp
	 hpS8v0tBbRHQ6lliESrnBRR+OfD2dKn4qjm5LaHUWmpoat3WdjHgIbDQiC/2dwrjv0
	 khOIA7gs//45brCrIqom3wXGlOcSkezcbk4Y0FVZvERRNJYeGt0nnPsC0cN6HtVxes
	 hxVa33H6LmaakDAw9KnZE/bOc/sDg5WJT2a06PQz/iHrgxn9xvXaMjh2P3mjlz/FGM
	 tCJ+3/TUWSZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216FCDD0DD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962635359.5804.18179904774962636667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b125c2a33ed61c315c64cf8354e9b028944c6f6f2cab3e9f240c8806fe2208ce
Date: Tue, 22 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729626353
