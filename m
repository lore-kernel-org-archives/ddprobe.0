Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34451157493
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748315394; cv=none; b=uFE6E/nt40z0uDRrAEJLUWIKEUEVoubUIavtzXeVWH8+z7Tk/vYWnLzXDYzDqxthf1tJbyBRAi95bL8QlVlR9uSf73S/NKZXWg2DhPW5FHECtSMWISr+K5MQPIKlF2y9pAGqYDNKXdmOvde0qUn6GUj6t/3UVmPNqjtSw6Ps61o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748315394; c=relaxed/simple;
	bh=bW36JCDRq2xQZuQDBf4b46bAat3BVOPwgFmPyUsivcY=;
	h=To:Subject:From:Message-Id:Date; b=KJzLphyMuyia7CZezKm+d3fxZyW7QrWdmrN9+TXFfkc1Imbhf6qkGCtp8JViyc3Wom7mjbMTvhuVNWGCx8Kn0TyVVelVx4XSXN+ptIbLgDjnI6QDNOgpxqfYyB6oXbuWjyos2QjbUBgW3IjOIFJdlSfB9ILmNgQeBHgs08DJKho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eae+t6ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eae+t6ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748315393;
	bh=bW36JCDRq2xQZuQDBf4b46bAat3BVOPwgFmPyUsivcY=;
	h=To:Subject:From:Date:From;
	b=eae+t6ZWowvCAIr8i17GSZcUqY778wLyNNhfotAHwCJqOD9Jz8GkzTPzoSFDAGYDI
	 4bsV7fxiaxeUa//T6nAamHP2DuWmqd1O/xHgry/tHxgDTkspm4mpnPGNmOchInMhLu
	 v1mxt1xiXJbrVJB+gBQTyP3G8DK2PX2qzQjWlYME7NaTiWu0q+Djf2E7LKGd+4QvZY
	 Cr+Re0snhkbw/OAdLCDdYA0QvlxAdOCb3ktO2DmisTViRmgADtP3Y9etoDKg3eU7Bu
	 3WRI+vdxeHM1qrBTRBIzZbT0/KsKR9PZS2L01UIj2Lj0To0aZ0UWUFKbGxXt0o5vAm
	 vM9EyJV0cDJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A58C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831539359.19873.17114514730950154965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ece990ed942daa3a28730ef0cc30a4b3eb5d616fcd97272ef2524e91d41d99
Date: Tue, 27 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748315393
