Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4962217993
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781468794; cv=none; b=C3okIOFcjNxq+Q+slanNgcrjakfUYQfyYRueEDTrBPpLkSql4WQCgdEUjd1kFD3kLN5mUYy8xVgn1qrLi/sBaCGSN1RhXcB/6hGRI+JBbLtdVmrA5+M3BfHigi3dQRhwaA0nVvLhoa/OpJd2RmGLtq+BGuCsoqihazU1MvMLc78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781468794; c=relaxed/simple;
	bh=I8sQto57quU36WbSLavnSKM1JHVTJwiKvQ4IlY4NQ8w=;
	h=To:Subject:From:Message-Id:Date; b=sNPmGyshK4+X6KrWKIZ9zsZBpu64XkEnBjh2tdX8+zOU8u0nqIbSDFWWzQ8puyUVDk+lgX3EIycLI/YBa4Fw1WvdPdxya1mFoYhLq1UAwkJTixY5Ieym1pcKVaXnE9C4PnEeDHcINiV9qNeZnHgRriNQkZVuWngE/0EkOCYClRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Niyw+QDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Niyw+QDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDECC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781468793;
	bh=I8sQto57quU36WbSLavnSKM1JHVTJwiKvQ4IlY4NQ8w=;
	h=To:Subject:From:Date:From;
	b=Niyw+QDrG5JS8dglr2mQqObfBFZ6dARpuKujHTomhvDaHrTSNLDwK7xivi19AS6NB
	 ubOPr2d+pmfeEs4gVc57Lr9hAZwwIIuSuyUaApUs3SlsHu176mSK5LzCLqxbEd5qeP
	 8n2dOEk2nSltqSFV/7QUoYtvifCV4qISzWv6XQE56/lO7+GrHSWvqz0zhy44/s5asZ
	 RzJe7n4qEZg6xeYbfZqcEXTHg/41wUzwGv9tU5pU7FMM1NzIM6AISAZAjbLDJDB7H0
	 eBsuUyJWwOUcajAu32kyyrCrtkIpqS3y0oxGPV36KDp0QZjpJF4FwW23H0/gnV/AQ8
	 VLZTRPZu3FwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2FBCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146879374.523.16072981165629874990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693230eafe5cc04a1fc34b6f2b2a835e7947c707e21ade2993408d11c8ae58e3
Date: Sun, 14 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781468793
