Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C01F64D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742877594; cv=none; b=hRnoM+Q5g0WSdrYQfFChBT2O9oKEi94XyNQwrMT8iBp37ArOt/0+KddZ7DEv60E4Z0AoWcRNsNs9qaqoWdk+E0ujmmw9RLb6Fn1qfy0qrOhH6rwJkLdNCBT5imx9BN9Vsbxi15huQZyBmHbpdbOnSdUxVJPJ/hN8c7oFx6psnlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742877594; c=relaxed/simple;
	bh=0efzK5I9OQKCVVYEXR0/vw2bmkwfGVEoDJU4EemfMJg=;
	h=To:Subject:From:Message-Id:Date; b=i7E1fpalrUuOvQtmsoQjgOFN/WfzN8MIh3eL+InqpnoccLHXY1yZMo/eLWgtRDjfDmE8Nz7pJoPeLVYji4PDnprId5e7mSsrt22BmkVjYlnLWpz3IpXzxQ5a3OeKt4WtaEJ14BOsUnSwxLjHopSYfAH7QZKvjaN7wCtb1K34QxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy7DJQbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy7DJQbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B56C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742877593;
	bh=0efzK5I9OQKCVVYEXR0/vw2bmkwfGVEoDJU4EemfMJg=;
	h=To:Subject:From:Date:From;
	b=jy7DJQbdFGaIdc+rS5NDF4AwYsDPLkj+Q/dZoAaZsfCQ7gzYYUqn4bsZNbHeWWgrM
	 5DbacJJqER06C364FasZkr+YJTnEjZGlHCBrnNDiNVwg1kx1RROprlv0IxDfLDp+qa
	 RG5lO19IzcVAB444sVapJdgkVCNIQ1K8hPVf29qwWifuOoVqO5+s2uv2D7984MbjGI
	 bChjIeMNAKK+rMx6RK+hTJAZVsYf4DkoMVy5RTSbhPbP0TE2rMbKwRXPOvRkORR5GQ
	 zIP2Z/pVzlB2jILTZ51F0T7fYr8DWHCFFjV3ce01PqrFBA9bovef/qEd8n6gXgL1j5
	 rT4h0QVKV36sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98DC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287759367.9124.5731803653331134696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8b587b752f33dcfd2e710f3a5d02b9360bb180106adba5921c4fa1391656b4
Date: Tue, 25 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742877593
