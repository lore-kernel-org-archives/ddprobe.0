Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A90381EB3
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787595634; cv=none; b=SyKDo4a7cdjDRBcjeL4cH2bRcqzVPg21AeYKZQAJnnbEhh0tVGGJSUmLoeOKTS0/ZV7D7S7hcYhWjtSrS/u7a+RYODWZs1U1rY7ZPelxY+uiyiryaglm44yLZ0ecSz7i+r0z4CkoqeoRV6lc3DJTyCnc3abNZwz4NvCWy0fU79o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787595634; c=relaxed/simple;
	bh=QvqhwO0LaNgZ5IlLBZX0M8iEShApupZ1Q+e+WGDwKRs=;
	h=To:Subject:From:Message-Id:Date; b=NvE8Hf4DqKI3mk/ZDXOu7kWVRMuNLIQHtklQou64hMcL1FaU/3/9iqaVWsZ2hpYkLAjUR1g+xLq7hfqdBSNi0DcjANmeNjZS+VWRNY+mFZptV2EwJ7TWhhpSLta40ax0YuO5n+x6k4cdvliuqVqDLVZrV1qIVz3zCzprfU0w/Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMnJz6pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMnJz6pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA439C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787595633;
	bh=QvqhwO0LaNgZ5IlLBZX0M8iEShApupZ1Q+e+WGDwKRs=;
	h=To:Subject:From:Date:From;
	b=EMnJz6pKuHzi/+kXvSq4QhRoiEMEu4N6rcO4bFrJCuRib8KoUuX08PuGAWDwfo/tv
	 hEJmCAvTsorxmJibrL0iZNlgap5HPHKajMJD71/dOBx1r9sdck3GSPYEvxSLikFE0K
	 k6GouTZ80KxOP0EOzDhRNdfOUG2sIfY3fMKSew2yrZ7N56Pjta9QQ+3WYDiV2I25SX
	 KQ6xC+BAxjB9rgveHDJyApNqfH+ITGFa8QTV1z2OxCdxREsqOCAtdEmIrZP89w08/K
	 N0BezL9yPlySDmYH2/gp4cEaUBFE1p0+T5LCtMfOL0IVTdknuWO96wqaToHrzoPUtE
	 wBtt3XKBebx1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21FC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759563369.21235.10618044403599676980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e90d1a896ff24c6825863835c6995e0c4a34e1385055317c73de0e712ebbc8
Date: Mon, 24 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787595633
