Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E43E2D052
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753525194; cv=none; b=CDdYy/qr335n2FwRf2ZocxC6oMTnZk+NOGmv4qR8ncHYFso65sC+04m603UBThAfk6Sbq7/l8PM9/rTPgOnxLrrdvXEn39vb7AvUVRw1+Pf0+UUH/3ES2PhpvGeUE/Ca6Rtp3dsL4SOEzU7MhkI+/Rwi/PAoMrsZDobX1uUMOEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753525194; c=relaxed/simple;
	bh=chKJriPNyR3//j4czn3po8fZLKDAqv//AiywokN8Z2Q=;
	h=To:Subject:From:Message-Id:Date; b=j74EHuvM2UrY8wYRbmHrQCby6C3Qp+bK/CIQebpAgsCkVZjEMgt4PhXWRBm0GfBiQ2ycPXKkf90b+UZ3mGW3ar+Vrd1UHJubCrFj9iRqOITLKbK1QoRbooZwrkMQlsn3ZAX4NhzwKDLGyGiJtbPeYGLKRnryw4SBCRYhHtHajso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT9gAPmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT9gAPmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753525193;
	bh=chKJriPNyR3//j4czn3po8fZLKDAqv//AiywokN8Z2Q=;
	h=To:Subject:From:Date:From;
	b=mT9gAPmUlY6h/o4F5Tqgqv/0ZhKsdifKioZbhgNTqE6x6N/LgXt78KRI3dxPmx/PE
	 dfsCxB8MlwB14w/ADFTD4WxdGKCkHpA+SQN5wwrpkgLgBq4capUkehgZWva5JebKL8
	 /bUA/bXnZ2vdCDdj8JuhKwYG9+oqeyKblppn58tq8hGkFfoHrM5MQ7qE1RMS5mSu+t
	 xd8X+POOYX+DPX7W99wyxDMySYbvfi7C8uqH+9pLz2rF1ypcV/+rmxdQu6DpGVAs1m
	 KMN35IQaB0/y4HSIJFUxWZkOeWEsjgPLq8OHRrouAgnnv2c5uormz+VKCjnERfBISQ
	 6HhUNbLoZx+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94686C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352519358.17624.7377489543071835324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87a2588313c953915c6944aab00cb498e798072ca842c68808ded62c26f283f
Date: Sat, 26 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753525193
