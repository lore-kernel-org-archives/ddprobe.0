Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3113B2AE99
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749883794; cv=none; b=mtbaw+PELYDWuCQ4BNAOAwpFnN3X40wd94Apl1PgZjPMB2z3+twakTozZFbxnsf6m6F9UqkKBJH2FlavaDtjkl089izOtLG0NLRWPT7DvYsj7mCf46ieDVyt9LeHn8roP4+vqBf2nbZ9jSOtlvSCktgt2fJbfhwRAmBWXc8F0kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749883794; c=relaxed/simple;
	bh=ChRlLZ3yDGcs1tG0JzZMxSX8Ja7ztXe4qGGJuk3vv9w=;
	h=To:Subject:From:Message-Id:Date; b=tQsODEvNUfajKNKIbYB4nauODyE0fx065rFU8lWtUtSRxmJykD8/fhyqIammrOmhl1i/w0PX5oEX7agr2qfcOWcvYjhJGFvY8kl/tWG8GqrpSM0lwh5tA2emIA2JP/G4xj4Qo/wSuemVmI1zIEYLWEmL24xe/BhhpdbqndjHt9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR4ZausX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR4ZausX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A617AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749883793;
	bh=ChRlLZ3yDGcs1tG0JzZMxSX8Ja7ztXe4qGGJuk3vv9w=;
	h=To:Subject:From:Date:From;
	b=eR4ZausXg4nwSNE73WnR7NNLGsGy+9Dz4mgYnXlzK832AJXvJHrMtpeKwctzD0hqM
	 u1JGzl5rjDABlaFUMkNqDUwRsdXCVqIrCLLxxk5pYw9NP/s9Z3QuTIpdmh954tjWRV
	 5EVART2gXt1FPEAQqclJFVhVV97arvRUkLyEVyChePeO80bZ0FtmBDfy5PyNSzGuAU
	 FXsEps9qsrm7KgdiyQ2IlXGXA6LdnxkL2MhfWLGi/OfsPfHSZuIGCJHZdJst18BMEE
	 lXQUM047Z1Ir2ZyZyr/K5KuCL1ebE+XjYr6FblCX+roLmypXMQQ0PkRWf/uq9G3hjF
	 YGIoapOIx78Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988379357.14669.8327266255027050920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45393bd432cf104ba204f6ddd2c6583c5c8f302277417e7203b0bd3274402188
Date: Sat, 14 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749883793
