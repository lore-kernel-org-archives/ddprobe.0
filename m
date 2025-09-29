Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D4E14286
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759111794; cv=none; b=Vgc7+MLVSDZj3RXOcAEtLTRX0ib9ipj7qbaF0w2yZsJz6NB/3Us22OhTJmhbFrADUsf71uakim7c9Ll6C9mWuJ3aHlUhnMCoC5gXxhcwSyX1h1FTAK8pHIMZhqwLsxNZV2LutDvFxi1HcTI3X0jrx5nSayLIBjlEVxU76SkCnBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759111794; c=relaxed/simple;
	bh=8aFHEDPmX+etVrBMZL9UDrZB77yW+0R0oiRyFO42NMc=;
	h=To:Subject:From:Message-Id:Date; b=anSSZglmTss/4Vsze/xVffaoSdgzUa+ikfpgKwa1z1gKqaTiwBhw9qDX5B/li96lSi7m54cKyqT3bfDM2B4b89kzRZbkeoaa2FM6NtYasN/xgU+4toZo4l4+f4dehlms0nuIJrfBtpLvX0lJaZzVaaWdkm9ykFkXLHzHTQ8ywNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDX7XrEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDX7XrEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A8C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759111793;
	bh=8aFHEDPmX+etVrBMZL9UDrZB77yW+0R0oiRyFO42NMc=;
	h=To:Subject:From:Date:From;
	b=UDX7XrEq/e40GZb9Demj04yQHiZ5idU5hql6h3jueYh8a1deZq4b4+IyvwlcODxV8
	 2FB8Cfx2lsI4wRPVW1UDpjTQYRkkLGvfkkChx8Qjg5DLOqKlOk4SZY49PXYfl6jAZc
	 K1KZPmuBhHbzJF3Rif9XQWnV07qkGFcRIOyJ59Iqod8lP5Cpz3Twds9CbCEtuiRY/4
	 nmrnnAo5QKPEsVKcY5hreaLGlqi/jKU7SJD9jUHJ4+g8HvbvFcFQwydKajHWEybaaq
	 DYAY1tIv8J6O+6oolAmRBM9NenQJKHTn9retj2ghNbR3dPgLRbUXu003ZRnsXToteS
	 XMC04Vgp4LaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D20CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911179358.18176.5882318419249911594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abe3e80e94bfe6b7fc108150b7fc47db450db9befe1e46b4626db7902cb6171
Date: Mon, 29 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759111793
