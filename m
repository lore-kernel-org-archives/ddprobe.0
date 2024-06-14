Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBA6450FA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718336303; cv=none; b=idSJrVcxg+Z+rKBhSDia189Vz6OM3IjPWN8I2E8XWA/y55Qm38RSXiJ8SSD4V2Tt0Nktwunnp1xQO5Ou9fYXL8W2+oMaVl1KYXNyWCcvXSh0dtW1Aq6tO7ObErRjs92DhWXR2i4UmL69fv/mEd1qnK98mjEqyVi9xyDWvDIwQGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718336303; c=relaxed/simple;
	bh=qZRzbvzA+L5jULY+X2V/htn1D4Ae3HL8y70hOsB3Db4=;
	h=To:Subject:From:Message-Id:Date; b=N2u8QNH+Thme+/PiaH9sl4Rc2BCbhELsM7PuIh4bxagcgS2rQwHRo4XYrUunDHWnjSMZ2Ld+gIZnMHIG4LjVT51QMb0MbFEIjZV78hOQbk5u7tiJTDYmVAJUh4c5fSBh4sg3RlY918/GoKzgsBBD4uxDbV/FAAwR4twI7LLHxMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFyZguHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFyZguHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D752FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718336302;
	bh=qZRzbvzA+L5jULY+X2V/htn1D4Ae3HL8y70hOsB3Db4=;
	h=To:Subject:From:Date:From;
	b=VFyZguHmN7IakMQLq0FnTzOE2+IUjMAhhrY+DHURmD7HZRbcy9IbpLXlLfj484ly2
	 GoyeqQnFfoRDhgAwxzRHxNFxxPXhmolmtQja7wdWksBKMHYGHHRZtdO8oer+ck+du2
	 4Pr51Bef8JOVH2yrCjTA31romNmBPkzmcdRrqZpH1A+vy1BsxHx/B0jSpsmv0snjGg
	 8odfcO11zagD2GpQzDzdN2GWfBNSjhJABnpJMND0JlA1A6PHDOb8vUktwJuLocBHWV
	 NwOWYZ1INS6BSZrLe00a9IOshD1yOdcHgL1W4cRVrafQ9law32Y6iVedEY0Uty3jgp
	 WsyZz26z8+CHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0475C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833630276.7684.42950394513215786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eab3ec41fff5e86d98e2e3c52f68b60302a2ecbbbcfe0ea5ce79c37cf69f1bb
Date: Fri, 14 Jun 2024 03:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718336302
