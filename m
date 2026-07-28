Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9F0380FC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785256834; cv=none; b=t6eUEL6HkcQNnY3FElXXS8/Q+CgaDZqvXt4eAei8T27/9cYcMuYngfvHrEWerb5i64LdamBakehFXdG0SD2TWYFaU6b70vDthTHN7z0WRwS7mTSnF/wZJ7PfuUvH1Q9iPychLoSjlBQ7iZUL5Qx2W/tNav3mnlSAxmmGc6/jNEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785256834; c=relaxed/simple;
	bh=unVVXt3xbKhLT/r1M/37FrDRitW7hDI+qCxhKBAh/nQ=;
	h=To:Subject:From:Message-Id:Date; b=TASyAu9A8mAhN4qkjRHrje0m2qVTgfPVrj8foHwA3Grz42objGut7BKKaCdYi9Tn6lKrtwGwn/64pGY8uvjGYASW3of9irkrwadRBVGCRENtpJOc9+fZ7Ukxsm8RlYizkdk9RVRKQ5eRWIWt4KlujXEQFI5TwMffCug0zKOub/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK1WK7h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK1WK7h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD50FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785256833;
	bh=unVVXt3xbKhLT/r1M/37FrDRitW7hDI+qCxhKBAh/nQ=;
	h=To:Subject:From:Date:From;
	b=PK1WK7h0HEsFQK302wRHeFPSQFzR0XxtP3ckyapHWueFRztgroufs4fKfeVbS6O94
	 mwPLUVcMCA4D8kWF5zuEx4H318QIY1BaDvlQIiCScIvCASgYyDPJ56JIw21nR20Ky7
	 jyqyuN1hxDSCBBMhlHSWSOp5fEABbuSvPhTh/7nqS/DYIizzQ3ls96t41gIzxv7RMd
	 4OFdGegykDlh39CwUcr0pua9jyKB1+GNCtKLhiz/EgoihIzBaonqxi9ettfiYGDNQc
	 ISvKRyZEuA5+Fs2RcxBRgrgmn/wi3oBk5+PgzQa6FEh+uW4gDFfnrDJ84/UhXSBjHk
	 H75D6j0IImdlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A2C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525683368.27152.15365482173513931801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873016372352c4400e10401a38b7940c28dbc4afece92c4c831a033b3edeac81
Date: Tue, 28 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785256833
