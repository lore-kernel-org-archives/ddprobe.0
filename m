Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413F710E3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753593594; cv=none; b=dHR0J2GiMrZqTJE4+5mCT5peOY9YPvyoBLkpRnf8+BW5/jxrJxV7iainoWuZCYBz48bZ4x6b6BRFFsUHzJTL6vTjEayjh8up8TOSsA5MfzlMesz986qyptwhUBTX/Ks9R5aRO8/AQBmUo1bOAX/Zjt7bVI9HDb7sl9L1Jc44gu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753593594; c=relaxed/simple;
	bh=y1N3hduIMlR89C9QzpnjdpD1kpeni96VgX9UDXwF+F0=;
	h=To:Subject:From:Message-Id:Date; b=uFoqC2J4OpcrNwESwGzmY8zmuGn4JjjKl3+Ba/igOg9SADdJCoK0CnITs6/chtsu0h83jFj70wBCr6KqR/P1vTdkNrOTNsPIdcYcVgzVDztmLkt8tZrfctyBfQA58CXRZBp2ddCD/7VGLYUMAvjjl0crVJQQwXuEF32Z3cv4r8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyapAeRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyapAeRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753593593;
	bh=y1N3hduIMlR89C9QzpnjdpD1kpeni96VgX9UDXwF+F0=;
	h=To:Subject:From:Date:From;
	b=hyapAeRcINnpD/S0LcMu8T2BieBenmSPqA31gMl4sNto5Vz6JhwuvNJYDwHwJ0m7n
	 a9wzTbMUbW5Ul3CMERWZPicNxXi3m4UyBlUZB81pw3qfoADxCTHKh+W9ni2vfBH5aY
	 76tdJtzPVUNPSew3fYjnxs4dNvGxobl8dae/Cbu/fvXxgYfEZHMpOMohJ3h6u88vSI
	 pk+g0Hm4XM4kS6PhHI+xdS2QycYt96P65G8CKqyCGtVgdb0MOfVtAIx8ku/tIQU1i3
	 AyiIet4uXxHb/uS0uLlXI1heik5+2qDqOK/x16jkxRGbiKOcuwf0WML+BRv7M9gTOh
	 v2bV29DBzq06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A1C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359359357.4599.17874686987927977516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73014df8a58e055e0239c5060c6f77a4710ac5edd73465cb6ce7b372a151c398
Date: Sun, 27 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753593593
