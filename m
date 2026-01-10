Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA09A19F40B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768008834; cv=none; b=IZDwbWuQGTCosBuhQ6GXj/KQlKxcFph1OcvyROu3Cp8aViCLLP9nl+WaRH1ahRcD90nDmIRKEtpMYA/KFGxZFfjr0/VuFGPLoSrAnwHpLNApXjfcyo8ipGb8xQ+mSwT4Z1XkQD7AgrHdeJQp5LVGpT2r55BjBKPKrfpWjndURBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768008834; c=relaxed/simple;
	bh=LwyqOa7AvwPiuzV9dl1527r5mZ+xwhtB4WvMEixdjaw=;
	h=To:Subject:From:Message-Id:Date; b=i+96N1TxSkpjX735XSP1mPAg6Y5xRaIRpYHFDnJgFylAECNqh8zbqlFEO7KHlvmSPr1QiP8umWCfNvM3H7mhS2t8+5MJIUnGQAnmrm3g82Z5k5t5ulBswlVFqMRK68pVAqxrQaIHiXLLgU41X2OeD3Zx7dlvsChR/0ykHdqOiK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDFuvDeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDFuvDeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5C2C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768008833;
	bh=LwyqOa7AvwPiuzV9dl1527r5mZ+xwhtB4WvMEixdjaw=;
	h=To:Subject:From:Date:From;
	b=dDFuvDePvK8wYIZky/WRJB7ccV8FFQZGBlJWlHo8z+B/n6cj+dzducRlxR+YW5xn/
	 EUwxT93s9OvIWDT9o6dL0qfn0EP2m/+VuaJve6WsASmwBcaQErfoPbfvuKQHm78EEz
	 oSAJZ16l0VEB56l8zF/3KYoJD/odPSjdVFPnT5fkfGaI5lWJsofln6Pqn1NUC6roZc
	 BOHX5RuaT1cKOaTJIMWdOO0q0dAOXPUYL6F5czvHZr71UhmUzHR4zHxaIGCGAYsRO/
	 C+rTodTT5HaUC8ga5xHxORvbOu8CbH7+Nf2LT0kIJT6+fLBUpic5BteSka8KfDmYyh
	 4KlCUGJe1YH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91378D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800883358.16630.6961936189247528224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380923a5085eae3cec5397a90753d11434c1006d82db11d16635ceb681a6837b
Date: Sat, 10 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768008833
