Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2799C2AE8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752209994; cv=none; b=pYuuBnY1kGIP/ebS2GB/WlyaBHSs8Y9YlgsFKzZDaYIW9IaD8YRFbJETy92C1hYRwZoG6CuW0Z6HOthMS8P6nEMWcP8enosr4VY3/VYGzeS/BLVXGw6fu+Ta9Um5f8r29I2zlyEYPTXpcd+o8LUDr+PYn8fldi0zcVmAG6QTnkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752209994; c=relaxed/simple;
	bh=IieEMWq3TC7PyZ2TU1s0FPLiWZsewtQ9kWoIB8eh6UM=;
	h=To:Subject:From:Message-Id:Date; b=SjBY4qXQwCVcChT9x2x86pHN7q9jlXFuyh4jEKZJrJhbvf9xMmNBRgmWCjOd1+nWj9HTaKskC6bGjvDh4aEIt+6WyPYSG3r2TQYjMe+8pUmCIAMvgJtGfFv0jRZhcCeRqz0CFfz0Aqf+2224lSUKSJcxTTLOj2FRn+/cWgoWXRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRWcZjzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRWcZjzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC69C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752209993;
	bh=IieEMWq3TC7PyZ2TU1s0FPLiWZsewtQ9kWoIB8eh6UM=;
	h=To:Subject:From:Date:From;
	b=iRWcZjztknO+UTOJYwidK4w245aCvTSQePeZB2gOiL3lcoQE2U+EFvC4t4dA4KSSm
	 MYcHKV6wlWUZAo2TjJJ1NwdE2RfGpHd5JWIIddEIadjVr11uqFR+i5F+bbU3XXrOZG
	 TL/RxAnLzIVSBHM5h6712zP+6LSzN79eY4YNWOzKjORVBMePovAF5TwR1AEdwvvgeZ
	 CpRbBzEuFn7nHC0/G0JA9CcAYJotaBkG4LN1VtwNxPRxPsm+LipQjDhFOmNByJvG7o
	 i9TlEieEUUyp3KpK6tSvLyy+TxyjhOkbmExJh49r0XO5NlVuyYkJUbff8BOmfA3zn8
	 BRShMr7XGhGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CDC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220999357.24195.13683673409228331148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e39253bc449b716f8736eca662bdfff0164ee6e7e41f7ccbaf0f18c2c87a7b
Date: Fri, 11 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752209993
