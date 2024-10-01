Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607CA2207A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727769954; cv=none; b=ttfBnNRqLv38GQv7B84O/BJF6iru6liOPY0+T67F3AmoD4dx8fTxiNfd+HFWEnsJ0TT9TQ/y+WVBjUcBsyhr+u8SYL9P3yUFNdEMfLJJIppluizqqOgWkJL5ZBxHt2p6HKAqYV8xaQaZcr1H0SoF6kxVTofaVmbkXdoGsEXKrbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727769954; c=relaxed/simple;
	bh=HuxKnYEW1G1N2fIJ38iwYlkVknZwzqYxC1As7duthWM=;
	h=To:Subject:From:Message-Id:Date; b=feWy3a/HEdZT/JXD9u3n3egXDP92uM1J7OrMFLRHCu7Srk9irzEzt+wennHMp8ULtxqFdSYuwX6rr5BC3Qa0wN3HlHXxeHetTFb/yp2ZyHthq68ES008VObaYUBOwjrp47xp3Nxq0juNZQl4P/a8YCD2C0vnBjAcDUMfZqUX0dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUap8bGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUap8bGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74C1C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727769953;
	bh=HuxKnYEW1G1N2fIJ38iwYlkVknZwzqYxC1As7duthWM=;
	h=To:Subject:From:Date:From;
	b=VUap8bGRuTQwH4hCEwdyJRlvGhJMJvtkIFBCR8zKy9F8Bpl9t4Gpx2/Jq0ea+EjqZ
	 Bef+JXLd25BG7YhHezBU+CPCiGyR5k0HQ1aYh5Oqc/WMkwh2FzOgLKo17dSmw/Ds/f
	 E8Y9nRyVvDRvh2V/+YQKptTv1JrtOECGBWti9yrwFQE4kLg1r7QiOpMDk7TPk67Omj
	 PHyD8u5gM3cZVqm88prIBVBcDVz8XbcDEfgt6ZK8Vll8QFLj6o0O6e96V2uMp8nXOr
	 5Wjaacf+ztvays//BYbjd18k2evJm/QqOks9xRbOx7/reJDr9Cy5P5fhOEwSL9uhVG
	 AW6w/RKJ4drOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DEACE7CE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776995367.3912.7830663107829704460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb2bf489417c51f18e54846fce6a1b48b4418b1fad48ac65995bb698b779a4b
Date: Tue, 01 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727769953
