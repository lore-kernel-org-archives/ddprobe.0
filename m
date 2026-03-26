Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C13D39E166
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774503294; cv=none; b=NT3R36ghbaXImfaTIWx2KZTttaNNC8PQE0nwycn4hCn/9dqlPIf1zKoo3fRbYZiPkWKOqbzzn4apjuj1xwOWNLYK/ioMyf5MNymYVK5ckKbHRyJl4tneE2EKyrY3PqAkW24hGEfTmfXzFHLRSOfo7IHTxOVmUo5Ryj5dMd39UXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774503294; c=relaxed/simple;
	bh=UFVBR2zsV9OSeSiH3PRlEn0hXbWZmXkFn0iulyz98JU=;
	h=To:Subject:From:Message-Id:Date; b=FfYSlzMQIX2mORaJp2A1xotSgQkzQwd8dTZc2UPdxWWV+1QrhB9QTcbwIM4AM1h5zcm5o/Ftvd+CXf7g5hHtAhZi3lQ+DY4xnxfMXpSpSQ1qOamCwpbyKlEJAwUAEFIFkSt1SM4w+Q+2z+/Y9jB+LbG8eklP2dasui7QqfKCXTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txq7+94l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txq7+94l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ACEC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774503293;
	bh=UFVBR2zsV9OSeSiH3PRlEn0hXbWZmXkFn0iulyz98JU=;
	h=To:Subject:From:Date:From;
	b=txq7+94l9+wWVyxEl+SVL2otK1ggqoPkQi7yktcwWmoigtSY6LZ/D9y1TxBg0++2X
	 T4tJCbPkQY/9Hri/F0zPKOGCRIcC3ir8aZFltjo1Qz04d9E+HBfRIPKQtefmF0ASN7
	 274TlGS6heL6T61ItwALGVvQYDvUwh4bKYGzEeeih47Pj2DrDrsiGl4k6jdYkqNvS+
	 elzW0LYZq0eCw7mfIETl5kuhRKXruMvFP+J03637pjHtzm/YntCIVa1nCwW8orCOLE
	 pqC5nJYcayOCiiV/7DrHRAtSHQwZLMT6FHwccQPV5ykgd+16HPBky8rdp+kX2SiGpw
	 chZDH/ZnMDPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF43109E552
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450329363.20811.6981674124169045293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf25fe37b1bd9fb3a190181fe4c6e2d04387bf5f66c5b57a7d221b8f4ab0a31
Date: Thu, 26 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774503293
