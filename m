Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B6320DD52
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769415834; cv=none; b=suHog+6EHAXee8y1rmNhltpLku5RxzbibhqsyDJUJdjW06gFrcJNiGG/GOL9Tf75ExGfIZRIu5uzdAi0uu5Up7iUaRPECwSAti4pRqLB0mTN7OwDkfFjCKPYarc+K+auE0EyutwXGgyiy3ASkUCG3EqTFKgQLq7Cnyny5+DOItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769415834; c=relaxed/simple;
	bh=ExXeEtJUetG+EdwgnRLlB6nxLH4+s+UXtYD4qBsrj7g=;
	h=To:Subject:From:Message-Id:Date; b=TEVha8jbZqD/9wh+QMcIRBSbju3zUNNOCBJd26lDLxSOLV9TxmPlT+RVe7D3oHd5YuscvxqDPwm06JgEtfH5B4+QK7N1DNJ7sPcOsj98y4P9UW2te2/Jq6+xtRDJWiVF52W/QCM1Iqa6hEPQ1Ggv/8kh9d1j+pKNGJXR3aoZ6ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuGReUmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuGReUmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F16C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769415833;
	bh=ExXeEtJUetG+EdwgnRLlB6nxLH4+s+UXtYD4qBsrj7g=;
	h=To:Subject:From:Date:From;
	b=tuGReUmv685vaBCH1aloxfJaf/5btjIioJTizCA076uhyY9C0VDPN0ZBnkd6Ad5Qy
	 iGcWA+l8y0HAUBHfK7MMotWf5ORzsuQ6PLUSl7J1QUGLwP9tEmKrJeigrDrtulYRRq
	 il1DPL+m1jVJUWTZLWFzC7HZzS2Mle1U90sof2w0oYVyk+EmmM6yVwvn/Ei9nwFFRj
	 Vfi9/CFbBZUL1BCGva5d5rRey4QpWFAiEX7CW75FdPkscXIYReWo+Oe/YlWGGDpJpa
	 eNNuodG7OCehb6eR8ekxth6BPGGUhjxgOsNYrmkKr60YS8BMIXulcaIx6yDcaoKC4C
	 e2jvPFV8p9WJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042AC88E5C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941583358.27118.718988901085769394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80a417b0a67b4f9638f16377479055fd5724c483dc1369cbb942a5f76cad830
Date: Mon, 26 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769415833
