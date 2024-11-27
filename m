Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E31FF7A2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732726554; cv=none; b=E5D3+oOXi2F7Dt0GlXTuEWYzNl2y4sOagerlsd19q7d7tO12EU+dYplQ2gzfnalJEqao80pUxAK4b8TPrqx/5sGoiT5Hj3l4CCqb7ItZ2eyR2KXi7rh2aKTjaZre0XMmik2wT0J8kABl0/jZmCSH3FLNS7gN4yd1HzyqIS+ukMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732726554; c=relaxed/simple;
	bh=3dGyx+nGsN7DecSEEWLJMRmpb5N4dE/lX5TwfslCWyw=;
	h=To:Subject:From:Message-Id:Date; b=X+S8zzzaQrOID4mlP9wWqmQpDqHSdZusTsDxwe7c/ZN2H7RTO50EbST5kYXmWCnZV20Ua8T1modDEqAwwSKplQ2Fmc3Y12LXVSNlTa/4u/1QHCyG8FoxYlBDTPyaVXEku9hpodtCY6CuSHNiM/yjKoeFtwxY8STEdjvNHgJb6To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USmxwenk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USmxwenk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF903C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732726553;
	bh=3dGyx+nGsN7DecSEEWLJMRmpb5N4dE/lX5TwfslCWyw=;
	h=To:Subject:From:Date:From;
	b=USmxwenk6SxK7dpVN/Q4mYFCqs9ZTRtplpspqCb87d6ayLMZkxEOaFrpj2Wc4PVZW
	 u1WMOdvM2QThFxwcdKyFjSGaX07BE71iecUm3mV7PB5Sj30saYdcvbELySDwlwvYw0
	 V32yqHuTa3cqrcIWaxcsf7+rkhaqbxHNk6Z2GHW7/RS9f5fexl3k95QAznq7xrM+hP
	 f01sGHXSWN7Dd8+JOXAl5AYQvjqYt07TwEWdOpURjMIbHMCPSrVQRBot1BiE7SlNf4
	 U7vAc/JuCLaERFdhN8CqYkf0p9jv7g5g1XA/5MhXFU8jfSzahY1BY3TBcpU4xtkrCV
	 SPTgCP3yiw7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96368D6ACF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272655360.29291.1074550808405554550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f3d6e98ce9a1454f00a02bc36a03c4ccceb23d37e06beb605f2c24a516862b
Date: Wed, 27 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732726553
