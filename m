Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206CD217709
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753638594; cv=none; b=Vp3d5AQ1bgdth3aiSrRPqjssPnuMY0cLz+8xXaG/5xV/ga4HFk4B6sIAurkfQD6+Hho/33v4bx//qZ/V3IqTWAqSPGSrAXAdUgXUBH7iSOAFIqsln0kiucRXKLuoxqcsgINSg14zAHxDVVgVP0XDXoDcWBKjkEcvzGorggk+g8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753638594; c=relaxed/simple;
	bh=ynhKUgFVCMOL8Pw0f+S5qiB1dTZvLtxYJEVeobbkHW4=;
	h=To:Subject:From:Message-Id:Date; b=jFx54EWq6unwlHXKSe+YTFQeRsyNmLFStdUy6pg4VligRGDS7VYHZZRL/to1kk/A1xCOFJ6MK+xQgIH/EyLtlzBncpTzmq1bDQ0qS3OPy4bj/xpTT5zJVfdnXlhXOLT9DJiH0qrZFmBf262xwW0aKPErF9QxC0XAlHBH3/Sr+84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvDOfrIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvDOfrIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A934CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753638593;
	bh=ynhKUgFVCMOL8Pw0f+S5qiB1dTZvLtxYJEVeobbkHW4=;
	h=To:Subject:From:Date:From;
	b=qvDOfrIgm+e3olQmyJUhR9AHbRp++W8739L4o/g5gSevws/H2HZfZ+5Zlz0krBXWT
	 DhxVadkCsCNPcmawKBxRrpZq6nKyEaKqGXcO4dy04srPbZoHWJZ7vWdbLm4THcLqFH
	 HdH/1JQ+dsYJ6c3nm/Sx+uVDrklkeBlO+NGe/MjmwhQZOMI/hLQrp70YezyCjfLNLA
	 HPVWaGIpel7n4USefU/DTKd2bjx8A5Aua89ZfvRF3pDttZJHzO4aN/zUT9N/aUBkhD
	 FPj98bp6Eo4u5IyUBIht3XyMfS8v6aBYDg0MIDqsGOwnt2IMmr7zHNznfqW3WRDv5E
	 V7m8aIsxqiEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363859358.30973.1692260817784269643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4dfccb4d95c153cb58c010642a256b172eb01e1ab147f154ae41554b63fa715
Date: Sun, 27 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753638593
