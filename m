Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DE92C843
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705598297; cv=none; b=gwCNxoTSYmM+SgqxbjuLXZwB3FSZPY5hi3MPBmF3fXN45Mt0z3vvxC1DHrhUcaFZVh2J9JTN7TxPq7hJJJE6iA1Nma+9zInfrUbf7bzN9muKh0CrI/BtTrjSto7pFVZQDG8q4vRgu53htD3ZnXLmkVGPJeju9ZrHZDUiWZWlhkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705598297; c=relaxed/simple;
	bh=2CweP0yDrZULqDYWmOFaCKRB/aCFGQH8wqIFmbwT3Hw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=iOQCqnyGtIfa5l6YRcWOx8UCC9UXrc+6jiG586XsaELidZVGHV/lwfhyL2wNquB5CrbJepw5D5L2gYZWroepkhRhEMNZ3wZ8zAYC8sEqT27rsZvO2+gP6VDDA8RzC9iAvVo95UsoZFlaGzmLFTdLQ21QYb7/O1cIpgxusiP15SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBZ+8VN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBZ+8VN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B93C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705598296;
	bh=2CweP0yDrZULqDYWmOFaCKRB/aCFGQH8wqIFmbwT3Hw=;
	h=To:Subject:From:Date:From;
	b=ZBZ+8VN5b/lOky6vRJ/e4CvkqvtEAd/OjhI8v90mdxxTWxrQ1XLM9aHiwnJJDwEY6
	 Px/4w72/Wx0W7AB3fg08pWfG9m2jWdgq0d6jt+vLdmi4hfxkdtYv76RnfpcLhohzRe
	 YFDznxLdhMcVB/CEUWYhCA482FG+q2JBOYi9Z6GtX0Ky4N24W72VDNDl7AoKy0udaZ
	 YcGlTvgd2xsVLylAid29tguMw0GBHDlCR3jtFDhNn/i04z88hKMpHJmyu4eNkSotRW
	 iLHFcBZ+9aVHROTxLlVZPqWGXeZTjr/b72343M1SooW8VedmpHapls4lIxqsk/Gtiq
	 fVF94zn4XQCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0E4C47DB3
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559829637.11407.2005241606169989987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3989b530e51184df042694bb190f02903087f493c7dd00df8e6c6794cd0327a
Date: Thu, 18 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705598296
