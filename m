Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53470BA34
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738401354; cv=none; b=HbjOEN/hXviInHHNx5KdFvmSleYCXtwKywcsARZyky5qizHG8ChU5WgKf5ogULPzSPFVeXGi9sid2s4GPDPiUBq5eoHvEdm5IRGdn/NUhrIY1Dot6/bw9WRz1jehX7Sbl+gZvKSvJcjrUUD1viJ2T5tUahbZPFBAucy5HoR+DYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738401354; c=relaxed/simple;
	bh=NoHWIFy8LlNWKknGZipUyclKhyUf4hn8bpvf9PRLgks=;
	h=To:Subject:From:Message-Id:Date; b=CoVE+4WpTnXCQcstMY+lMvyZiljdNMgwDGV7Zr1CwBl1NPQ0MNu4kigIKJsI/6+TYYmijAVoa+B74F2ckcom8RefO8sACD18PFAZ3Jd42kHOzGQBnNuzsykT62D1k/HkIfJoRMINYPoU2XqvczliXjEQ3Zsql4EUD/dl1KkFako=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa5zah7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa5zah7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13A3C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738401353;
	bh=NoHWIFy8LlNWKknGZipUyclKhyUf4hn8bpvf9PRLgks=;
	h=To:Subject:From:Date:From;
	b=pa5zah7yKTFt1TYm5uhYTGSOW8rOdLqmv8YzXfFwf1kKm8JG9u72vObMnaPA7MoYH
	 JiV/uSRlYxSyEIam7sDzANnp8ixLWoDMccCx93SfkmYtOeMQcnvoSAJAlt0zElC8dt
	 RubeqQ3aFiMia5SGeDGZ9CF3W3SX603PM5tBpw3pw9xrvWefuFD6Yd+luBgA5P4GWc
	 mT/YJACKmMnkwfrNwOXxlxS37Fge/1Wvl1RUnvL+hnjN/iaUJliEvipiXQKghd54gr
	 j5KTBaD1+YuOrf8rroxJ4YDx0rKZn+EwiwxKEjVunCxMCIv5970GR3ngMlt9SYcz0x
	 kn0LQHq36rkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF4BC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840135359.4612.12569075369778028145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64aa64b7906fd4e7a726721452569c2d8896f853635db9f5315f207fb3a86d4
Date: Sat, 01 Feb 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738401353
