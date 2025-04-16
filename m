Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56FF19D06A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744809593; cv=none; b=pViVmXYZ8v9tAzxtfIXpgYr9Jkj2t/lB21K1HaVBo+HIbWjwXzNyErup+LqaiUxFW/ZXI/lJSLqUvZpbE+cooQIrFnp1cn8NDDPuFCB8OiowpFAvTskjFLqQVBPcxQQljtaFtu8r/hKdvDcQ7HLIcHgTuJsnTKkitxMAR3Iit0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744809593; c=relaxed/simple;
	bh=BTa0a1jEfeDPZLJzGmwdwFk2gaBS82/RcPuxeSXGeg0=;
	h=To:Subject:From:Message-Id:Date; b=bv+YUaejnzWE76urwo919AUBT/F4/8sjyaT1cty36U6of5ICvOu73EhObgbIhRgYEE6fVK0Rdb00TVGULaSROQk69e1IlKjdM6UKwi1LZbIfVTSzZFDt0nXQ2aIUCfA3eStqVr/GI/CCiFNkoQTCta5uzYbNmF1fqtdNGRyE4Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kzb+KhET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kzb+KhET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5C5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744809593;
	bh=BTa0a1jEfeDPZLJzGmwdwFk2gaBS82/RcPuxeSXGeg0=;
	h=To:Subject:From:Date:From;
	b=Kzb+KhETzeB6Cq5LmOYsnW05Hl6EL84qbKECMdAxK9QowRbvqzNTGF4joDGfayJ39
	 n28h0FbgHBKkpSRE/JO5B46gSttkAMlIFVB5XXQIBTI5M4rivHQc0ywADqD6OTKhzq
	 h6M0QL6II4zrDREsDJ/VgyH1t5Wq3XwTeyCttaC+bWDdgJNhHL0t0NtXU7RU/Grg8B
	 keJgfWGAXSzAhAERbHJb2r4vdxmP+uedh2INNKcrUdjkOhQ9wrDWJM2XOlOxDu7HMn
	 zcJhJKrSEs3/7Owjljgbokkg5DR1qiktsw+bpTV899lyTWee1iIlkU/xkk/tvP6kUH
	 V0ehSiH4segdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979EDC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480959361.10054.427035602459817764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7760e50000bfd8acf53addbacec90035d913e4f95696f7db9fb06ace50c4b6
Date: Wed, 16 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744809593
