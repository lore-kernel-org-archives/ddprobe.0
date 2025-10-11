Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F3FC1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760150994; cv=none; b=uvVK5XUrzyolKpqEmcnSZoS19AajoDbEh6vskHESTlf8LN7kALmiSkrA/5SNvsGBNrZcxFUcu5lnGn1QrFuioRDdDd7y9XM2MaXPo01mNXv45GRdGkKSkgZRe7V0GezrF+fhA1qieCl2tnQC5iT3zS0vUHc7Om0RUpba6jY18TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760150994; c=relaxed/simple;
	bh=lxCA0i4i9HgRi5/zM+uD9xOrknA553G1ZrXBP4wrVTg=;
	h=To:Subject:From:Message-Id:Date; b=Lt/C7L2/RpaOqmDA9e7MrU7LZrEIGGCKqfvEIckGvIQwKxQDhRW6mCpuE0LN2SEBaa1WiPoCdHIebWBtAPl8ZEGiLgXlXL0j1dZ8o3O0frx5pMrOQBIRLZ3Dm4FoQhAfrGloWeOHeIdKGWcfC/mOXJCXgVFFsuP62eNOVRgvHhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLVJOKLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLVJOKLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3438C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760150993;
	bh=lxCA0i4i9HgRi5/zM+uD9xOrknA553G1ZrXBP4wrVTg=;
	h=To:Subject:From:Date:From;
	b=ZLVJOKLGsg6lBxTEt1hR2K+1Gi4Tf4kE+xEd/ft7sZZvUkzBiTyVpiD0iSMndBPp4
	 r2Pm8dypqyhnd2pk6iH9/1c0qd/TVnQoQSTcoy/GrAM0aNJq34i2DwdV/C2Pwxox6y
	 /wTpVEGG8DiFtIL17lK0JhSEFkYTTWfbkfEWz1IVHvaGpowGdnw4Q52sDT8Ux6NYSg
	 cmJ73nnR7BhQwQVLC1+l8A3ov7xa/ZvmrLHfFDNrnoJoptH00RsqXH6aouVPEjQiIG
	 +QfmkhkFJ+EQbfP6UZxeCT1W7R9G6D0+iLXfPc0cdxXY8zWtJLu+cP8AkMo9Ff5dOD
	 7+NSH2ZuidHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F6CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015099358.22123.14635199661626185231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000611403a67d020c974c866d114c69c30e65f190adaf7118ca3448b1305afce
Date: Sat, 11 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760150993
