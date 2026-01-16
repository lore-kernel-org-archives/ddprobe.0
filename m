Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127FC29C327
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768565034; cv=none; b=InvukCh1ysMHZm7/YZr2Q5rcLjXOVWv4pH+Sa2rBlROgfmJsN1e5bAGZwylc0u3H9SN+BpDpPInr5eOFws/RWJPd0T6N7U0L5hLmHE24oODX6+5QWKERPO0LQKwIvU0lwLaU+gyOYkI/2fy8ow0SByX0tf8KYpgOuWotXlMnjp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768565034; c=relaxed/simple;
	bh=ARKMRewzLGYckQS4OC2Tza3qPCPkILFkOoRo3wMva44=;
	h=To:Subject:From:Message-Id:Date; b=cEURls3Bx/u0uj1NOfg41dWaHnduZed1P76E7Zlsqkv2o8CKo1/kRkWJP2xJTyWPcpthujzJO4nTxfOmptXVJ3TvWyC2ioYFO8ZN2nJNCvCuudpjitt34HN30e0/ihdVkJP7jlRS4G8foDOOeRONSIaD1dzkGBVYnU3ZgZtJwTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etA0C6fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etA0C6fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768565033;
	bh=ARKMRewzLGYckQS4OC2Tza3qPCPkILFkOoRo3wMva44=;
	h=To:Subject:From:Date:From;
	b=etA0C6flL4K/yYgGqODTv7IB36UizqoHOeFOmwrNHHrVm4sVe+XgFMC2UZS3wGRto
	 Aa3HXfo+pao6voQvZGWrSFR+bNccSukSYNSFHOOKjlOutWLy0aqWz8/higCK9X+1d1
	 Ul/W0KYwrBCOsWoNrD4prLW5K99fqv130WacRyyBk+t0u//b/xOQi1bfYA/bcnXUqF
	 tMngA78D6Yn5EnPJIvCu9P8imX/lxLjsr2Z0gZM2e8+j0ceUjQmhcSDgGoBNylBwu0
	 DZOUyFljKU+8CkuIQRtg8k/Xg8Aj2JEBE0Yb7anRVU1thX1fDQ6Q/04pG9dve2FDxT
	 pW97RGOS1JztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B49D47CDE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856503359.26010.1762115829103711712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c7ba507cf882de33de9dc4f945397d16441af32f92bc3a5d4a5d8183faef0d
Date: Fri, 16 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768565033
