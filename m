Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5177925F7A2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743024594; cv=none; b=r9jAvZUhDcixOiivrr833sVKbg0oYky9/nSKebD6mFbpmAlQ7Ic7VR795XrwGuwNhiyIfjbqmVK+mbe6eUDyqHvR1taimwgebcqQH+NC1NZj7Y9G3SHBM32stWr9O45Fbc9FB9zM359jlWRKHOPCqN6ST/xFtdIrB2zvRyNaFxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743024594; c=relaxed/simple;
	bh=vSA8wHFrT7A3R1ljYEKMxLoouN9862sEfyAC/19XbNs=;
	h=To:Subject:From:Message-Id:Date; b=vF51DqTXzXIIb5Uv7jI6QiqNuUFrgjKjQcUuvFHd3UFYBQinjVc6ntI1UyDjp+fhsn94jXjYiKJxeATpP7Svd08YNKsXJnDvxgsN2mZor7NEiU4ohsyqdBtGZhMWCzFN4RkNOFcf7fAw1uwL7h0qSg3NxgToQ1h13FOog+9MDWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gclEVrVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gclEVrVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15D4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743024593;
	bh=vSA8wHFrT7A3R1ljYEKMxLoouN9862sEfyAC/19XbNs=;
	h=To:Subject:From:Date:From;
	b=gclEVrVOA+h7gH1aquXzyzqoJBXUvJTSpsk2XUGKSFp32JVgQEw645XoOX4YRlBDN
	 YJtNqiEkcOHtT2QWAKtioiDz69aANiOxs5KiwxTvnGCoMny1N5Lxocy3nqIomN3Sjo
	 ku0wHXF4eKIn/mjldMD4QosGig5K1gEDMbIlMM5+vRBdqEttUtooZ5Cjgp/seED2ct
	 ThIt1ghbqF+hd8Vby6CdVgDK7hSZnaeKIKbRfeY/UONCcl2nQv9r0XdSaXkA/AnP/f
	 JKj1Ras6KKJBTpDOncf8jSRvjGALmJX/jS5ygXymbYqNbWlr0SxLy78MBCE0eQLoEn
	 GS+hJw9zmI0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7478C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302459366.25392.9249780047166609570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b05560c83990f449ceb07d2953a5764423c576fc7dd6e138ce5c9749b299d7
Date: Wed, 26 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743024593
