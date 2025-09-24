Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2E322C85
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758744594; cv=none; b=KaIZ2AXSGP8SYsZ73uZqWwvncSzadKW4lg4qktLmB+5Sdm0rpYnF10hu0Il6rMu872Tb4LdxYGi4d1z+RVnGp34xrPyS1d1Pk8gAAsdAboznNI+hMd0B1vD9bv4xhCK19Qy1k5ITYQePt5TLyKsOcl4/s6YoHxWzeoQSbNJbIvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758744594; c=relaxed/simple;
	bh=EVLSWD+Tek5StIJyVBfJGTJWnkxrA+VsiPKwRJlEPbU=;
	h=To:Subject:From:Message-Id:Date; b=M0INMmwfR+yEZkHaljWAWgvSvR+tsgmNy7PQzg3pOx8ZbbRpL6rxUiUEkPblTXcUUN5IQ05zPo77lpGgytt+oVS7/ujXfahDISXlTwaCAF3xHy+TeNmRaS4+BZdWLn1GOaLoJlULzNXPMRq1t+68aZQElDptmXiViVJQvqZPTVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCTKOplk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCTKOplk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758744593;
	bh=EVLSWD+Tek5StIJyVBfJGTJWnkxrA+VsiPKwRJlEPbU=;
	h=To:Subject:From:Date:From;
	b=CCTKOplkhPUutBpYJxEsiFSC/N3t5wv93wMNBha9AgQsaLoIlZQ1MKFrOv9e/9s9N
	 t6mv1EsVXxuqItgElqkIuVK0scJMaBVJVTAyAD3Z6z1IpZqQ6O9YneYZDc6+hHeXuR
	 0JfGfahf97rutL0uQgaKgtI6/BrktTuimvyU8+WtwbJmLPHNcAkAa8idIaXElVy9A7
	 NKmt7hMcpbV/mu+PORSBQO5RI27vqZAlPY/1rAYRvLhFXcEsDm5oeDUv01jHldytTf
	 teFRTi00jGiyCfFr5isIRvS4eJM/het28zuEiNgCT+Xxjs+4eDOI4egTD1SJrNEFkx
	 NsVJXcCwbqSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A17CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874459359.23007.9486474321800935307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f5cdccf77c03b7defffbbce4610d5bf06d6c88c0841f54c579e4f7a12eff14
Date: Wed, 24 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758744593
