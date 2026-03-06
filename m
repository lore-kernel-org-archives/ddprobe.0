Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168AA288B1
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772760894; cv=none; b=mjpLzv64kO87j3fHS9ytp05Tfg9869/i5SatQjZ7MixaSgNVjY17zUoocbDYL5+rpwdJelYfkpuLHLUu4vkHJWKO5QoKvp36rjghEYVpij9MQIqXhiEV/pZVoXkSBos4/2qqBzc1BuCd+dHBTcBfUm+ZqKEKktCsTiRLrhdTguk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772760894; c=relaxed/simple;
	bh=5Iu0tswhnFXAr+6Vgxi9u/5Jyuw7E46nZpS/gz845OU=;
	h=To:Subject:From:Message-Id:Date; b=feJ4jPKvPFPtz+Y9FFmFOGr9VY8qPiZkWGUkOxTg8U4ghZyUUni45vlO2tNWpV45UeLRcLNCFQZIQUHR3wmdyXCpuj35DmK3IHbCLepUrL4F4qdGoXT5TI3BA7wtHlzSTr5/yUuagzJZzwuxeqbB8kfI7/4LZPZk7Bb3olqNriM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efMW4U7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efMW4U7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772760893;
	bh=5Iu0tswhnFXAr+6Vgxi9u/5Jyuw7E46nZpS/gz845OU=;
	h=To:Subject:From:Date:From;
	b=efMW4U7NmYakKRTVlmBAj9S/ToYM84WLyZzGhZ1NBEJDq2CPeVvpMFl9LJDU5vNvu
	 r9S9TyTtZ0tIQs8U00dqX9Yx4Iu3Y2pxY3umVG0/LQRohVeXOtuoUwEbdaa0PRgV+R
	 p05dIGVn7u7d1yCUonA5Mlh+wG5tUQEwSlM3MGNCmiGiEroqQUCrDVMjOec/tbf/LO
	 /Y1zraFYiuzEoi2tf+KhGiuem2OyvZ5muhmZ6FPxGHwZo5so+Dz6Sdv7pMxXIdOfV2
	 3bqpzRpWKYtAb5iDtjiJSG14tB1PolemeQEVXEwB0b2p70iO2R9DGpuSytT2YCy1St
	 3IeSh4VHkiH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A5F513EB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276089358.24047.14895331202415798796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed76156a753d70c1c9cf50b0b2bc12fffa260ed2baaec9cd21c9e2e92ade6436
Date: Fri, 06 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772760893
