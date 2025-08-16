Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9F1E1A17
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755379794; cv=none; b=r91MbUaQhnoIXKfwB3OgdqXPL4vVZ0YM3Bv5SKAibFv58ZsiRnvlViYBctczb4Rxc5TGUFEh5RaKo/JlBRfBq5pqgZ+tOuPmYPSk+Zcw4kD71TgIRtVSoe8FHu7jCOdy3a+37kCltyeUrqCvmfwg+1VztQnARIY6hsSOJ7sxDko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755379794; c=relaxed/simple;
	bh=n8qvVxwuR4qsIvMM2skWbVJQ/5dImipLsTme9nKF1/Q=;
	h=To:Subject:From:Message-Id:Date; b=uK5gZdgamSha/0Mj+Bm6DHbdahzf5erjDh0FSjTJ38uazAHUN6Cy3UqmEag/tgcQev0QCC/67jcVKQTGRer69UjuKEgS2yi7BcEMLpMbUbMdEJIImnPC3y70vi9/DDnILFo4jBYzY1Ytj9gRVWgATzlZ94W/S13hiCNT2oItIWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYERkbSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYERkbSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB50BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755379793;
	bh=n8qvVxwuR4qsIvMM2skWbVJQ/5dImipLsTme9nKF1/Q=;
	h=To:Subject:From:Date:From;
	b=KYERkbSC5m3PiUDnFoVpB5aUeRRmxXQy6i/GPuAGHEvr5Hb/o3GQgfAmsfD4EJfOd
	 EiwNjEtMbehtYfpbC+3nwlU4ij6KO/KLK5G1/lzEKW5adbzgqNVoFI2oStp0k0i3h9
	 weFimsavxhTuGWQA3cbuBngLneMRfBE3sM32jcZTprcSFamEoxEkVNY4NGHIQNYJUK
	 ufvzPy7ZzLpbgnP3hcoyD99mveKfjl36IMI4Nv1/3Nyz2sJLgx5a7r+kvaAK2ILQV6
	 m0yDqnzkzEs23oX+WNzD7BRG6gc6C0fFkEv3KiDqIkGPufDzC40ATh0AzV+uLiIve7
	 3F/dZ59iFJZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873ACA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537979360.3588.1369237385595675137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bab001e9421c9c21767a6229c829b6e37affeec208c9e8f5bc4fed84017131
Date: Sat, 16 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755379793
