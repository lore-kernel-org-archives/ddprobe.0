Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DE42EB5A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751054395; cv=none; b=kpK35ov6NDappm77pnEXCLjdLByp7anQmXT5WV1CJt8mJTQkeNhy+IADKDpGxwTs+DYPVdLCE9QFr32srTQnLAFMY6Gkkd0TMVyKLoTMRuEp8UDTy6GIRg7x/TWYhH3YHnWZfgy+zIDP9PEEyASSHDfoiF/rjD7Ez3WiaKX83/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751054395; c=relaxed/simple;
	bh=mVjTvgM2OPV0SgJcW0bf4TgckAs1AWYLcfySjI5D1+0=;
	h=To:Subject:From:Message-Id:Date; b=TLzhIm6zCdipDmpCKqp1GRJ8Pq67tVkpAR7qPZlv9Vwbw/OO6qvMtDY1P+w+SlWSFijWnzxGGvsaDHTBzyldhRF/8QknB6UlKgLGVaba0z9TiNe79gN+CRbsPdaJnFnU8mY1PtF9XCMio3fPGzAs1rTakIl9SAJ8cysYtreqW+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDVrwS4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDVrwS4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FC5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751054393;
	bh=mVjTvgM2OPV0SgJcW0bf4TgckAs1AWYLcfySjI5D1+0=;
	h=To:Subject:From:Date:From;
	b=JDVrwS4ec0d5QAbbX7VmLgadhSGx+AKQsGD9WKV+h0IGEVV5yWDmlzZa2ElwvLp6c
	 Y/SBb8TO3ttiKk6y0qtPFVeSwzSA59tksgcBzhT2WkWrg1QrjskzddsGR3B2jF9QcU
	 s3MGNq/RfgusAcmBbmcI3oQuZmK3b/V9SWFq+pro3YkZGnmE2HTZlUouKmiHDq9c0w
	 scP6QDgSRS3Uz4a5APUXUiDddTmr5F2ElwOQdBw4vktceeGtuwfRA/wuiKqSmygUfb
	 PllM6Ia0gEMwSrl7RMf3CXDHNi59jhWmpNJTUJxKoOtO7N/IhfVEJUuKDL3Kiy5lrL
	 MlNTcVddUEdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D47DC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105439363.27828.9887869451714921213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09ead862fcef1b79d35ec1c2d61a3f5d4f029a21f0557923da9417d727e7d23
Date: Fri, 27 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751054393
