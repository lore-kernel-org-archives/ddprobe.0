Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D7B37AA7D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787247634; cv=none; b=Z3aJM3USrsW+5hUAdjEn8EQ/4MtzO1m2CAD1iQyAj4zC3iKgzBwuJ6NkHs9o4qcxstkbQm1slT3LqXSTy3rbBtsj0xrSv39/Od+ZOW2F75Q6iIiDSAEG3OePkbm3ZEyuynIZvFLf/N3uOaIbokCZL285/vxxXY3S+3wH80SAfFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787247634; c=relaxed/simple;
	bh=6+s/mIEEN9vNnck+/f26X+hcHWXNla2mXGhsbKEJmFQ=;
	h=To:Subject:From:Message-Id:Date; b=F7sqA5LsYqJy+U0BvOc8C32yQsiitYaT0A5LxPR3vkiH9z3eoyNHzxBlaF+e+8kdbQDc+zHjSHE9lN/c5UbRsRU5jgqW4hb7UV4tT1ysVwljQEGrCEtGv4R0Cj0xBpButle4Id5k/FqI1i5/9U1btoeYiGmEUYJatxi8PV4gJTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCbrRbGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCbrRbGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAD8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787247633;
	bh=6+s/mIEEN9vNnck+/f26X+hcHWXNla2mXGhsbKEJmFQ=;
	h=To:Subject:From:Date:From;
	b=vCbrRbGog/0IY8O2LzWD4QLt/qJBPIOyaDd4Xj8gCOZaNcLy6WKiquylYzfIe/tdn
	 5rh9oJB9CQ3p5viPwmMJBSMINySNgB+KvrQ8u9Xcw5oo3IflbJGUxv+CVeyWMkYF30
	 4FkxnopFjc6+7/+qVj+Py49trxpSmWVpWiAer9Sr8VwEEdmSADk+ifFDWVhciluQ25
	 FFZywJwmOV/iua+z0tKbllFxiu80mrsLLP5ta1vg7+eoEf1SYj1/Z2OK6Cuhs8+i+O
	 e8BH0ovRHDTbt6zJrgcGi8neyd+qMkYGLpYeUbwvhywHcw3W0HaNmMpmPfYoHDjzNi
	 xnLuo2Gt3EGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F3C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724763368.23031.11115462758218913656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19e039cfd8b5c7c38abc900b0b33dda4e61dc8147c1e6e356ce06ee50788eb2
Date: Thu, 20 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787247633
