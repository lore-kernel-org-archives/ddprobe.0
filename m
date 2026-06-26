Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7292D33F5AF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508114; cv=none; b=RjSqQvET3LH8zGSc+pKGiwTrGV+Q6w5ghdGwIWngvY1qnAAx2n3NZ3G727fjlKfIq5DYbmLa2j3/pnPGv4zKGurXzSmH6np38uHeSbQ2cRrfStg2AQAaz3CkXL3S5KEQTmrZDrD4n+NVH2NYuSQE+V/NrsadcQok4NznA5FQNbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508114; c=relaxed/simple;
	bh=3XwJD80TYwMQGaNXJNlvNr9vyjBB+VeYxvktzUGJjNw=;
	h=To:Subject:From:Message-Id:Date; b=ht30OTty1qjzspOPf7Dx5yrLY2wolWjw1NsyI0MLUWgfhFhQp0Mzh7rip/c8pxAhkiGOLbuDoySHetK76LPyQvsTR/4b1kmFOUIYZAq9gLCIVDwOYo5Vs4qS7KQmSfK6Af0Ly8WGzqWhHGODS429HoPwMFk/DsiJC7FjzsqAvkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3dN/SxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3dN/SxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AF1C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782508114;
	bh=3XwJD80TYwMQGaNXJNlvNr9vyjBB+VeYxvktzUGJjNw=;
	h=To:Subject:From:Date:From;
	b=Y3dN/SxWo58LLaQOVVFKkcOMDtRshoD3NynV2ffNpKQ8Zz4nOedcWwnsbnalw3WVM
	 xX2TIGNAloLNByJPFGpstSRudsHv37d7eGLmfMnUTCSOPJKVMQ0ZThjCRcmdFVYRgm
	 RmiU12YSPAylGWPT1pDwbtgxKgZ+PJOFmOZuyUIk+TLM3ubyd4AGWwyxMxJqRBpdBO
	 t5nBf6OnMm40pWdYByYC0+Q16oJRqNQjlCjrEt84ufzqml46YibnRKrIq6XIpQiG4m
	 9OrJBlmSXI62qPQxNrJ/Yo+gPKqn47Aj2WVU4KogbhhdH4AZVqhzgHmOUJvhYsKo1K
	 b9VhLTk370n0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFE1C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250811373.23045.10941065454374659175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f16b25301e873a8aeac8d93c9326a8b0139e43571f73ad9872f33d51b9a03a
Date: Fri, 26 Jun 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782508113
