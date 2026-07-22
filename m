Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6010D470E9C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784761174; cv=none; b=uLZowTZsAqs6sMAt+sQZWEc3f0DYO46yLvj+l9WSnAdNl9s68iwVoohQaUiT8wjsdeE5Qy6VUOT4tBv8naEApj5UI0nMaVce3Ntu/XcTvPeKE2h+xKFmk1k8xHI3E2QMSWMMjd5SzPlyoHMD/BafHCdxx/HC7Y0vbsoZGnngXTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784761174; c=relaxed/simple;
	bh=NkvGLNiCdrVQxBd122Qxju1cfVxdrVbnKK+DABpCxK8=;
	h=To:Subject:From:Message-Id:Date; b=V4xLS971+b4EU4Ra3eRAzgF24iWSwFLT26kor/77CzmIS+2dtP4Xyoi+wlvExFbC/4GcsK9ivVfSO6fOHgxj4fyyIme4xsq0C8JsxWH2PR0GL3z2u3wndLIOK36wUTc022SSD2Vqo0PQvSidgL1tMiGNOgv1GLpisEZpsO8U/vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbkFdUvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbkFdUvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C2EC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784761173;
	bh=NkvGLNiCdrVQxBd122Qxju1cfVxdrVbnKK+DABpCxK8=;
	h=To:Subject:From:Date:From;
	b=sbkFdUvmWasJiJNI4XhnBaaT0w2asXQ8KT1tPf3sono4odYQNUaGo/gM86OaN/cZQ
	 x3YbBvFqeq3sRgBK+yCo6mYLUsERvdQOFV0ehF4NJU41ZTx+6bzoWTBKyKgKO6QTsI
	 6/4kGZt4GHKAIL5uWu4t2dsVdZ1twOwr+Z8A+ySQpCBLLiy/pMmybKgGOmReciqtwZ
	 83Yw0Sc1rVjw/oFw30HSv/suQwq5D3V5FTRwmfbb506Lpbx2bkCJtBJBRaNbMRd2zF
	 LL2a/zFjCfLUgDWKN2R9zacs4qpjxWGkXaPIrMPPta1Nkj1g34yTSKZbvro8mlqL5P
	 z6meLZGiOoVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B078EC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476117371.25510.7210891080267081589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15a892fe89d9c2b02bef226f672e25e60f79497fd75b1a272664f0e4774215d
Date: Wed, 22 Jul 2026 22:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784761173
