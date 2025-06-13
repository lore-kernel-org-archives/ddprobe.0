Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7468A2AD04
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749774594; cv=none; b=gAffu8+2m5NZlTB87G5WCS4HIZaa0bxPmC2+LU5v1EyypaRdvfcGhwV6z7v8wx0SDb8tY4zCW1qBiPePm32Qq0/jtgUrZH0h9xbAUL3WKuRZNcBt3G9tzJQM9JNnmOQgQ8yUx6sLxreje0GpvmSJ1kVdZBHtZzG42SoL4ZlPX6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749774594; c=relaxed/simple;
	bh=NlM1Yx7z88D5d1r77KWRd7svA8hV8h00+jYOUy5tMTE=;
	h=To:Subject:From:Message-Id:Date; b=C4mfLMS22ToL+A4w69vIpJw25D50ZRwB7L/WgWWgnzAf4E+9UG+jPT4QG8ZuAZoAmvOLtW8D+YeRF0EDSGZHUbwYDN3cmvgWxE7TSv32H7UMtgDgTq4BU9wOiKZKIRs0UMob4o+xc0bEYhicg4ZG1Mt5V+pFwJTmXPJRb2U5eR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2CXGbl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2CXGbl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D44C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749774593;
	bh=NlM1Yx7z88D5d1r77KWRd7svA8hV8h00+jYOUy5tMTE=;
	h=To:Subject:From:Date:From;
	b=A2CXGbl6oyqZC8y6BTrn7r+0xNZDArkhjKYYeZ9eII6WFk2eVn2XM9VBwSlxoJy2/
	 4XxWH3ny/Ef6mEP73v0vdJN1dT8UB8H7nIb6nkOoVl83b7jgNerz4WP1zilJuowBG6
	 s4TuhFAwWwU+1H60/bgI2VoOQyf2lac88b1OM/UarxN3yVP3o7YEeSJlfGvUyn0Q0N
	 r0qSRKVmXHZfgVvNoelPwwI5+oDmNonwKgHwNMnO7UXPm4AQsOxlIVjpshv6FYyqju
	 nO2j8PLLNDlk3aQ3ihiNvfCZ3LMafKc6Sv1v7/nFJc+83QpTS+PW19A4xCF7EXklmV
	 TT7g1M0nWJQTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B34CC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977459361.23076.2171474759811285216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421470c9dae7d3445c8ca497214dba7ac4b70497f1b978642a90ebd09a7f0f19
Date: Fri, 13 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749774593
