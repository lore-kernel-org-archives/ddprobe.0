Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428C79D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751254794; cv=none; b=kXwKMQIGLkSQGYM99wjMfYYZwd7h/wJYxE4SOS1vh1XImUxciQGQSai5n1Abi4Afl8hXXZgM7JumPtGHtxoMcOW82JWmgx/WkpOhFX1efNVRuHto0jC27mNkup3ua66FlYJod+UTCxt1h9AsZ4IX5s54BERnhlrY5ebP/ey+xUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751254794; c=relaxed/simple;
	bh=LdRalTg9J5g827lEAeWg38rpf8vPrYKWLU4wEAHLIm4=;
	h=To:Subject:From:Message-Id:Date; b=Z/Xe+ciNiorr57kbLyOEDriqylgVtiuopT7SVuIfWfVI/4n3sLOWxkLRjplH9A2zrmqlzlJdoTZC0zBLlZWvNRcZ+Srr0ui2eUupsCuAgkPVgDh9RI7+TSU5Wj6yU3CtXpDQhALlC8aZY0ecFsBAN8NYwRVUDD+wXI3vh9A3IiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inUL3WWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inUL3WWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751254793;
	bh=LdRalTg9J5g827lEAeWg38rpf8vPrYKWLU4wEAHLIm4=;
	h=To:Subject:From:Date:From;
	b=inUL3WWrUnzHRkqBOym8fJudSw4wOmJs6IPb7yB3UxijIJNtDpGRyavV5SL1tDs1M
	 xyg9bGysgD54hM6caCBsMjrqSlyNXM7YJabGT1kPf9e545B+lQ4/d2chX/GpqIulP6
	 PwPbWkGV39OpZ8ccjYw6Yk2Xm5GrUae+mis/tZT1aN9ditgvJCgZ6PojLnQnbGK1rM
	 dHlRvLDwhiFXvOQCi3VINTVSCmWj1wv1MRqHVde/Jyn+0ZB+uXuTuTK8knIFM4KDLy
	 BN59haS8AvYMZW0wd3BdBi94aZwn5/xOoKxnVB+5Z/GMLk+H51uVL1swHM3OlZxu+y
	 ef+nuheTKPQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125479357.18817.17988881347903090461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd78da26b065a13f65fd206dfc7ac9a590c0c5b85542a3c1c3c71eed6e73d00f
Date: Mon, 30 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751254793
