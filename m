Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380F1175A9F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778117254; cv=none; b=apBS8Lv1dTys4I64dp/QcPQwwArhPydc9WXAFbD5nwPhsh32+lf5vObHCWNqoEm2rVDvTGqCbs+Mn95cw7UUyFiXUQ/B4EpXQ/4I+0MLG7tasanLoqIRvm011CLw0lRh6JmFfxuD4h2YkUQ5tjC4NxWPt1szY9ZP0OsxiGhDvWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778117254; c=relaxed/simple;
	bh=f+S1XluuM7pV1O/ljHk0lQqsTfV/AtXSHLazMV2balU=;
	h=To:Subject:From:Message-Id:Date; b=u48orpD4s+itAcj8KUiO2MABajzhqk4Xz4E8T0EDG6odav7L26HX66NzEfWFApAmojko8evduE5+fqPHFZMvk0Nlj7cE+V9q3ZZdMVOipr+dFIIKDEkKRlJ1HEnhW9nIcQ/oNw8muKV2C82P6LWbULM/Q0PBzFGk9kF1/Rk1Q1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu0m3qUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu0m3qUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42A9C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778117253;
	bh=f+S1XluuM7pV1O/ljHk0lQqsTfV/AtXSHLazMV2balU=;
	h=To:Subject:From:Date:From;
	b=Mu0m3qUm17IiD/qVMAbY/hTDUm3gPKnDLHXKz+NhkuFM1Nvubv/zUBp9kzgsofIZB
	 OB0LqWt0mmnZd9sEnhTJPg6/DRq8C/En3cwHZYdWzW4an16RK7psnATe/wRcxWEV6o
	 UPFBXsiVBKu0rnK+05OabbtyCCklH4xYQNQTLMkJIjBYx5TqVWJ/4Nql6GH5CdUIdg
	 p5hmSCBG6Az3IPB4oPq5YLJZ26PawAhpqMw3dXoqR62+XN6O0/AwLJ/eQJgX9mri9J
	 hAmZRELTLN6fnbTV5v4GhtSKhuaGNW9Qymg5Sc1vzMlpuqd+Qh/BhbbxFgtG3TSMer
	 4xIY9wg3Xsyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BDFCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811725368.17395.10656602174010859092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e0481b4f741b03e7b79016f83413e04fa66a5aec73ea8cfa0fec5d222578d0
Date: Thu, 07 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778117253
