Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CC0313539
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781738794; cv=none; b=dZGgqD9IvBmZ8DMVurBtBddJa8PE2+WUgd3QBwkPg/IchRcX2htnGZSWKWoad4GDL12YpKn6Q3yWI9ZVLwC1k5tjpuDI4So8SZZzvydqy6yxLLGRXyielmW3sxE/rKjxBi0gdGgZRB4LfOlHNilXmmunOsMU4w296VXK3mHdM0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781738794; c=relaxed/simple;
	bh=yFsiOjIsAS6Z7fIKIz64VdmQDo4T+MEwLUPIp1laly0=;
	h=To:Subject:From:Message-Id:Date; b=ClLtvVGllN+fTePgj7Y9bxmmqx4C7oujM3PGrP1rCQPJmFFKo5cDak9+TEv6Pb2quMaxZCU6aIsQ+UsaMXp6uK7yLc8G8uxqes2cDWYjM55mcj+XTapicLQdErtk9lHPt4k7HiVWbSrhw6ArmhVvMy1F50fMUPEC0c7bxZwbqmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCVIbGPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCVIbGPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB336C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781738793;
	bh=yFsiOjIsAS6Z7fIKIz64VdmQDo4T+MEwLUPIp1laly0=;
	h=To:Subject:From:Date:From;
	b=KCVIbGPPJV1KfOSB7Swau8Q04ake8w7idUUvulvhbPGLveymS70D/4unzfxwLOBiR
	 L9MAaiH8LpzQmElhtMBb7wQ3D4BlH2YftfuwGKbuNdsRmSFduvsmyG9za/8KRiHpGk
	 o28ctZVM8Y0au0hsecIt511m5lZHpUWSYsjDjuYob0BzCKTVBQkJYKeVv+jg+RG+Oa
	 sHNAXGpMjFs6JEDVLlt2zddMTvmocNIrhRj5tSXHPCu30mf1QKMTgmXphN/jI+qZ+g
	 K9K6zLUTjt6HVpLH2pubXEU9FANNxJ0tIG2WJ6O6FL0Mlf3mXThNuAHx9qrbMfApvt
	 spBBgJSini0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD651CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173879370.10188.15705512807615422911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442ddf39f862f6686d0f000122181c4292c4b1bf4aef7597fa90ef28b25058e0
Date: Wed, 17 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781738793
