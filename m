Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A30317712
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757590194; cv=none; b=cEkxUMoGKFUQ0F7tmnBiIJlLiuwfOuoSJ9EuAd44MKdB4K6NtFue/K3Vbsz6fCbUcFPH7/HyqNt0jc3qmWZg5CxNz0HU2OCsnPrJRHRAM8l3Br+uGF6yafWPyJ0SHtkmUas1mDdtp04QdoqiAEMEPriAiP5VwXz1+C0qoNPC6O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757590194; c=relaxed/simple;
	bh=vSPGf52RoPl5HU0K6hkhqXMwVTntOjX2easp6nJLHyw=;
	h=To:Subject:From:Message-Id:Date; b=GaxmBbkorLhxo5qrdUM+zN/v90eyziHUzCqw2bn1kjwPobP1KkgwkSQvZwKmzDb5j5zKaz9g8pmMFauBFcNHg7UTw7LE0ex8MYmOY5skj2gR6/UhiihP6P1S6BmmzJFppiFU4h1FIcQ6STszF5BkiKVhqx0DeBhitJzStHohjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB3AynK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB3AynK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C07BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757590193;
	bh=vSPGf52RoPl5HU0K6hkhqXMwVTntOjX2easp6nJLHyw=;
	h=To:Subject:From:Date:From;
	b=BB3AynK/7vhk7zsX4Pi7WSfoiamMXwuptD2vP1lQlziTd4nuFC5Ar5OCLTLzBmgQR
	 QSJU01RVpS638D7JBqxq4qx/YQv6MGSAw6YfiauF0xcj0DGSSO3My+IBttqA+aiF6q
	 tx6kcXJZN1h4+6aQuhhD3dXpXNE3qgICRcaahHycpM8Fnp0MOoiTDvnZVcVewoOGrB
	 LkxU1S2Lch3Gh+vvWG3ct/zA5bor4vwI8+qf+E15UbSWKTr1dbSTR3RqvYyYlZVSwP
	 d9vKbGgPPQu8QZAaep7EfjxrZ2lOVD0WqEowxFpW1VfQV/PAVN3b+HyAmuejtXhxGn
	 PnoIoHHdq8jLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD88CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759019358.28671.17367870632786102108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a48d2b99beff225a652f5a2c8b2db94dc1f8514e2435e51cbbc847ff846973
Date: Thu, 11 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757590193
