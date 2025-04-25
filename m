Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A6D257AF8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745623794; cv=none; b=rAUJjVfkyV7EaWZnY1hIeZrv0Spo1Cogkmj+N2xYQBYdbbAfH/L445NGLCV8gNPcjyBE8k9O7p3J0YRO47V0tKmlTcvdD2MIXZjirvDySJyX9grtZCTYp3nJU35wKP3lCTWCgjMVtjtbglc6LgUrAttlU22kdcbcwozxuw1gCh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745623794; c=relaxed/simple;
	bh=jlVgHdbklDSN0uvhdjxlkHhTPPq51ZYCF8ljgll6h5A=;
	h=To:Subject:From:Message-Id:Date; b=LIo9nu7v+VJxGm5gWQreTTjC3zTtMN7V6kHfphpnU2m9cTJZMy8xQ7kR7OC/UeMLBoN5sXVQjCWkOgFGnQhTdzeslfb0xt3x9MLTm2FBY2RXnN4bmY9i5Rbc0sKnx/Kv2q56wE84upyxKK5DplGt4+2uCDO5q/Ro13veObDk2Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thNQcCW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thNQcCW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745623793;
	bh=jlVgHdbklDSN0uvhdjxlkHhTPPq51ZYCF8ljgll6h5A=;
	h=To:Subject:From:Date:From;
	b=thNQcCW0t76t1dBdOsqxvOVvX+KhssIhFMoOwsJ1sRltx1Z4jk/dmIbTXZ0+GrQJS
	 iNfODmNCIehL1gZOoojhF6ni1JYBHdOFYHwH444Ni8szqnpq6fEqoZviTr8XDNtNZM
	 3qCgEwanFxm0pFskImeCCMly/kawchg9C/eFGmIzUXK/upEkPuHGtnq0REbkAWilks
	 EyLJv/+1tZGJ+uS/ysXnfDyRrKLT4s8LtEG4WY+1f0IsZkiWZyg658kcNk4CBjvVnB
	 EvhD9ZPvcR+s1ifWpcBIr5QWU2lT5ksKJi1Vf3P6IKjwtScK/wLXxtSsvnAkzIiLRo
	 QimyD11Bg8Eqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562379357.5130.15514418091623238347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44acce095aac94aba4879901e1a554e1e3c763c6261fd9024304f58e1718e0e
Date: Fri, 25 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745623793
