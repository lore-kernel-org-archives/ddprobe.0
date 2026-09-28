Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8F62D0C89
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790589034; cv=none; b=nqHB6d4Ae8t+qRRXc+l6HzuaLa1o4kxwWltVpXkq32QceJemEQlZfFdeuKIH9r+5Rk3VMcfuYx27hacp0R9H6flvZgL3M9I3eLpNrJLZ/DBSWtq5B81S1doIyKEvpNoMkewuYuMentLC/UKWXikGFj/lf7V8mKqc1afSPHXzvng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790589034; c=relaxed/simple;
	bh=fwc4J87oTsxatGURADrAlDoACbcgqanyTvfWYC0gxP8=;
	h=To:Subject:From:Message-Id:Date; b=jzCTKrvk4K6C3ouFJwubZYMGoa9Vba9CNfYB6R1Bx6sjqg8cd5xOU5yIE8Xb0G4KCi1O0duhZg0iGADPOvVdYOvZeMIpp2u+FLF1jnfPYXX45Hi8yPDS3I7d5X2QXS+W4FuN9mY5wseiaNjo0Hx0L4jMIywlsRHucsa8nPNhOfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJV8rN5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJV8rN5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC799C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790589033;
	bh=fwc4J87oTsxatGURADrAlDoACbcgqanyTvfWYC0gxP8=;
	h=To:Subject:From:Date:From;
	b=aJV8rN5f50kwI0oJGe44LjnNpz9AjYqQ/sIffGS08rgSWVAM3AsGggJm2mymXO+5W
	 //MefZUMoQa2vGAWN3cLaBUKnkdp2DM+bjTlPQGzZJT/JE7oxhBEtPEWVqwGT4m+B6
	 9Qau/e4ZItu9eNDD1epci/8Jnc8kla3wwC3oW8tnGYutFonABhbHhOFsX3fckGHSxi
	 a41YnRyXK0OPowFKgF2YCANaZPsZViL3x2GhfC5jdCAHyIvqjH3in59RifKsOdwL2c
	 gJmfVss4HVle45MJTTmGd9zLdI7dw3MrEGbZ0p9vimFozhVvszKeGauDWnHcariEPX
	 rwkSFqbHZDk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73EFCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058903373.31081.9647510913477299010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d45eb978b4546cbe2b2fa45de0955c731ca20035ecee2aa72c21f53a9744b12
Date: Mon, 28 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790589033
