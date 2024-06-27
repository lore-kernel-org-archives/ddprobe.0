Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9571BF3A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719478463; cv=none; b=gnvowYqHG9M0MiaV/qkdRpbv1IhbNoW0QU+Qi7Xw9/kkp3xI9Pigf2sdO7WCJitq+R8y2AR56+PKVE6p58vy0vTZvLbgYt5IjBFChDEmKLc1YIO3IeKUApmO/vnGlYhHN5OebgDd9uBgAOJBJi8gNQjBceN3NssWZ5nDF5gAXEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719478463; c=relaxed/simple;
	bh=+yuYRka3Q+gSacbfY8wHKintIRRvBNcPVu6ge2eu5OU=;
	h=To:Subject:From:Message-Id:Date; b=VC9nnKQ6WPke6pUQNnTbo2Ho0BbLPmb9QBmFzeFVpsCASmUBcLqR46m4iGzQpJjO9EoNq4EvrTSID/wsLvV31BkpXf24gMMJYQwknuJIgqFHCAjbgctwPGJpNgiBXvCpLVzS9dm/SnjXxHEBlI1HJ7Vv9sE0Lq0I4gwQjGltOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lltEo846; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lltEo846"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19D1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719478462;
	bh=+yuYRka3Q+gSacbfY8wHKintIRRvBNcPVu6ge2eu5OU=;
	h=To:Subject:From:Date:From;
	b=lltEo846zUcAXEoxOz+viO8i8rKP2TuFdZXvOBE63XWdm8MuJ72iRmhCjsoIfIon3
	 9Dlhh594M1HxiF5fx+wysOvtMjMsEurchqRPnfZANaO3CHvXlR7sYtamfBJ3H+4Z3A
	 MSvS94P5UjBLQzLL+U6UYw4LYckUMIz2pRHCBaBGBXJm+lFXRojbPlmUDHfSZyWulL
	 zUFUpk3DnZehtHVqmpEoL1SAtgU3q+LeLVgFWdNzGw2DtMLBNhwDt25SY6nJvKHqMC
	 exFdl9YGWcmOBWZlS74h8yJSFAf+UdHsQeKaP5Yv2d9us5ViEwdcQvZDvObgHafnLP
	 ZVSDkpxZFvaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8C6C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947846283.19503.14035696843110270319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8ca867099b4c1ba55e2296a1df12ebf2c102fc74d3a67915af22f7fdc6cdc7
Date: Thu, 27 Jun 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719478462
