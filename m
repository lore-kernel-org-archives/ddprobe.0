Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421D632ABE8
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762855794; cv=none; b=FFvzhNy4hU7h+oOsf4RUDx/nBXUZj/rdeGF61vF8BxpSia/Vgm2+k4SB23WNu9E9g/iFjYZoVXe5r974erUkpHRSIB+rJzkD2mjKfEgliG3V7wA8GWnn8Mmoo/66BVeYAczLjr4KIbfKeMpPFS7HUbHSAEKZj7j6jflKxQHsEgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762855794; c=relaxed/simple;
	bh=zUkR2uOlKcC6SWdhUHDONe+HlWfo210pYByXIVOoMAA=;
	h=To:Subject:From:Message-Id:Date; b=tAmzQWx4aNWmeOoDkAT5Tx5CNHifAvHT/ZPB2MOIbHGU/BkGjQT0Z+sweXom1R1Vm1QD0Cth/WpZSJETBqi04gqYX3CkBT0iqq6OSKHISrw4ePn6RXERg9QhgQPWF1GJCvKfu2v2a7MHaxLJah44eQXOnVYIZZWifxAjzr02gRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovS8sC0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovS8sC0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE44EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762855793;
	bh=zUkR2uOlKcC6SWdhUHDONe+HlWfo210pYByXIVOoMAA=;
	h=To:Subject:From:Date:From;
	b=ovS8sC0sSAzrJmluc/m2CUQagdrj6/g7fuTfGitwC4mnthwxQFiBbyVlIKmVTo/Qj
	 ne4ZDXfK+FbiR5nuYWh7mrM7ATKKUImjkE//9I9nP2S+Dps2brK5XFVyWNwYg/IzSu
	 hoUc/g6ESJHa0JhkWTeUINQIPDVgUxaFQDCQf5VMecBfF4EfnSiJ6TnhQMDcwJqbHk
	 dKYU4hCc1KdTX3nzPnq46KRXHqJ/xtx6e2Pu4eqTy56CNxmF4o2xLRsfCi+xV9peHv
	 Y+Pb9rEkQCg73ZuFGF+jBT2uxUHnqmB1XQ9riMQeEJZziqDc+vhk3aXk07N37FmkbV
	 jUpACc+uOk5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C27CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285579364.29337.17427584968644691036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4a7c3fb21a1bff2cd9f3bf990cf96733017f437eb5b1fef5967f5b70e2bf76
Date: Tue, 11 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762855793
