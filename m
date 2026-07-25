Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EB34315A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785021634; cv=none; b=nuS9GZlXM1glDGXjeaTWQpFDCNl8U8uit2EzjuTHAlRmkex1I701VQgCY2/0qi+9GJdpX6olTxOAXnyZ4DG0u4aXb0/q7jHrERrc32Nl2AAZUnOp6uuIpYhbHyd4IAoJo9ZCvxgz0+7Al2Fq5EOH52UnBlMP9DYpwI+YBzYAuwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785021634; c=relaxed/simple;
	bh=Fsufbm3q1DajPn04+OSjYY5A++RFBr75liqTY+IArkE=;
	h=To:Subject:From:Message-Id:Date; b=n2RcFzLC6cmIGKRxpQYcov82cE+nMAa0rzeK9YbtcuZvNYuwQDwdxzMbfHSrHPspXKvnNPAKOmooTnzVG1iV1RSjjuGoxGk1nImTfJAqmt/Lc/MFk/Y+V7CJRFP8DSBFFmo74C6+qhc8MhFsvFRMpzgeKkENJxvXh+U/tJkkr50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYaus/s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYaus/s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1019C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785021633;
	bh=Fsufbm3q1DajPn04+OSjYY5A++RFBr75liqTY+IArkE=;
	h=To:Subject:From:Date:From;
	b=HYaus/s1vw2fJkrc8dGk9+uDfP5VsB6elbQZSSdh//deWIZ6gcFdFXDD1mTQMb+id
	 YsElN7Zdobr2rLSGtWy+aQQ0QwerCL2Xo0QB1fkLDWcyzOqtUMoOCuVXwPYgTEea3W
	 HThK0epLZcSZMGjVjeAaxvc3sJeN5qLSXURNDw2I3gXZQ9RzHMpSRXEMFUdDK0QyF9
	 /Ji240vsYWG8a+HKOZD3oWMXn/RsR0hBDoxlmeZbNcl+Zp25lKbpEn3herzXuxuTfl
	 iXEDNW8QXLkePD0YM/hWSlfUPwkpJM2q8VYHEM05oHHjpIpV5UVYqZ0Tkxp3ld4/9n
	 euWRuOkkfdvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE15EC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502163368.15740.12199470014263439134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8983cd3f3e0d710bc7a2434cf14c105fe87da1ed61aa15b378cd4d05d1f3831b
Date: Sat, 25 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785021633
