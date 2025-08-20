Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A842E03F9
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755680994; cv=none; b=uTSUT0P7e0rsmP6iQjxh8s2rsFZ8fS8Qwyqe5RgX8BkYrRc/Hqn+paex213TwmOvJ/XPA2LKAtNTzYRb0VpFJX6qqsxE2lN6KjzFaGXW5EdQhtiN+UXyKW5OtcCCBnAXiOjzdMoUgjFI83Rjcl98JcH8pfTLJycU33zHiaGrcv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755680994; c=relaxed/simple;
	bh=wg4Gm9UuPvTrjoJG2frr21owdK+UXlJVPMiR/ZyJcLI=;
	h=To:Subject:From:Message-Id:Date; b=rHVisIeBKLLXaMSqiQxOTx3tJGLu8UHSzU+A+sXgNDSXC7Le+VnBYFpiHtUjwyXwGCae/QO2Oq9gMwEDOOJz/HNldH/PWf9retktKerVEO5j1qRvZm7YfIYtYOZXtlkwVTv9tTnILxtFKM6sxOgIF8KJFg8/zbypiklPiJ8tAfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnVEauj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnVEauj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0057C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755680993;
	bh=wg4Gm9UuPvTrjoJG2frr21owdK+UXlJVPMiR/ZyJcLI=;
	h=To:Subject:From:Date:From;
	b=RnVEauj7XDXMcpHKnhh5Osl/y/3fTKZffwUgagHbvCeq8AGUCfYSPPSQs+AQSJpBO
	 UZf5VIH3ZwWuS1x07SXmAjb417l9l4psfTMP3kjwS9SESMfVqGKt21LSYRQciH2wTx
	 fD9oPFPIkCP/UyNvxCGDiG8CWNfs8nH+M4rkMxJjtM9eTZKLAhkNToJmk+xemFc5Ku
	 5gcp+/DQlj6ecfx9OvgGP5t+WLCko8At7Q6erTtzb20SsqX1g7SHpEdxNr6+ChhDpM
	 BGfRm22lVs/KUGYlVdgLqR+HO3mER4hcvaCyZp9SyYuCtHUNIizOrXedrYR5y1MVEX
	 htsKWTOKoq6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43FCA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568099357.27557.3738045156680399321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a64db53fbc6611c139a07fec187daf0e980bbc748493e9727fe3c3a30c0ac7
Date: Wed, 20 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755680993
