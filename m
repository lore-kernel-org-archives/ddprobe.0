Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269922749ED
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760083794; cv=none; b=CyoJ47fx+KfYLWFF5nWhXPHym7wOAXyTCDzpBtTTv/lCFkXn+23EvbyalLOAIPnfvPeOqgQbeGZ6GeQ7s4tah7lgc096kHEbvyUtDGuyiPhEav91k4MAmnrBuOR/3uNHgKtMd0XQmQt9dF2CNTJEKFtbdw62U5rykPUgyBmd5W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760083794; c=relaxed/simple;
	bh=yDxnwJhn5iA10ji8/U3LBWP/jlzKKk6JCkzBS4Kx++4=;
	h=To:Subject:From:Message-Id:Date; b=tKAu1raGZId1PI2K4IIfCT2P5XIHSaVHOaJXMx7nk7P2HKqC2z6EOQBfLoAOpGRscaiNi9ZGeCYPhODxs0kQ/Vz2CUkirZ+kITALArIFpveWHBFrphADQxmRVlTOhxxLCkfgdZiqMAsejI2137ZWnYTa12WgKE/NvuAuyIy8cV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBINmG6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBINmG6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760083793;
	bh=yDxnwJhn5iA10ji8/U3LBWP/jlzKKk6JCkzBS4Kx++4=;
	h=To:Subject:From:Date:From;
	b=rBINmG6MMh/mPRFIMvvXAEF4BVckIP9Jc5xf3Oa9R357HrZvb4uF0WZl1nRRzFigm
	 p0t1Lj1MDVJycb2wyBHik/vpAAlULPCvyo6evP7HP6PrkO3N1AnYxwhA+qi8iCgJom
	 rVL41eu93Xmv9fVXpH+uFs4WfmWPsEN+2PzAB/htOUspuSTYbKN/LxAuze15XIRw4/
	 Lmp+1XxWeTfh7x/C7ZLOj270wUnGMjIq3hGmd/Q2Dmw5sdaej5KsXTYETpNjsCR1zf
	 pxIPQV5+/WEdhxtAVC+Eujqd6zx4Iqwy0BCV7X/CsXHuNCWzdIeYHyC8IaBvucJT3y
	 dNZG8dzY6kqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90209CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008379358.21936.16092407848410961719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fa47fd2e9ec1a7555e60c168660b604290d43b0577458e87f3689030f0f558
Date: Fri, 10 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760083793
