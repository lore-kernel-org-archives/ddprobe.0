Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1BC4A21
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747447794; cv=none; b=UZtsO6PwJrBQb2QK1v9ZZMT1Gnb0XvA5iH09JK+mTwYZrubnrxtJeToX/OaMdgM3RGfN2ZMfbylNMshtV1jREj33xFlZlT8KJg9hJBtJM1YBhVeIZLn9EsSChXN7FjmT0xrc29ErKMMH1/Qfr6aocwtlEIG3YAP7iCVWyqeOR98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747447794; c=relaxed/simple;
	bh=bmGDxuaZ7h8bjxBaFKEwAUUzhbaxO5Ib3QB3ryfwygI=;
	h=To:Subject:From:Message-Id:Date; b=o/+aDE2cED8MNw/CUkKu5lrUn2XSpZNTuZWMCi634RpA+HpFK72c/jgmzaYBfK3HPRggdg06MQI+r3iGjO7Tp3ncghxh//AFDHRqkeFQwf/PHHFe2O6iounFDQ5uHvxG5YotY+gqag7rDNppl8zHaatQf6IL7oxF9H+laty4SVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpipdGXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpipdGXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747447793;
	bh=bmGDxuaZ7h8bjxBaFKEwAUUzhbaxO5Ib3QB3ryfwygI=;
	h=To:Subject:From:Date:From;
	b=TpipdGXgGfZmelCPLAbOASZivmnKB8KnjpjyBL4BFJL2TVpr9SY/IS9ixKqOzgV0D
	 3z3E1GhWg/isR+h9F6WGesiZQOYcNk69fHSW71+QYqKF3B1rtcJA8lytcwNGwFYkTQ
	 xy7Jn4syZk2Drs/pRpySvnsiOqrLTyhqxYBjpiSaFLcWN7yB8Jxmv38H/WT6kJczx3
	 d4xqYSCNe7SYkLv+3O3RCJvG373OIRJdddDKlPPHOWzMxbGy0LT2ffXRkophHfyRAE
	 MvMJXEebgq6WeIEbLZPSdWoVGJ867n6HO7oJVujQwpw+87rKJ8hE0jOFO/mj+gvaCe
	 chjVH8+lZEI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EBC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744779357.24039.2513700972092356990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042145cab51e4a76cdce79ca10f32010b628294be8d731dcd6ee31a85a88e57d
Date: Sat, 17 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747447793
