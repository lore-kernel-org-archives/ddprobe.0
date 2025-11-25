Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A15D1ACDFD
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764039174; cv=none; b=bTqQ4CHExMYnGGydBc+c9JQkbDJn3tYV9J38KMOjw3cc6ICiwQfLvWzR50K7qfLvKH4KM0zfIp1R/5sKg8snhXjn+wJ0gCuQhMfxCU6rnxEfrJiSlmQJhsInusOwremfpwzJvVSjqKm9bNzrZd1eXxN6n/riPjsddOpriKdxZbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764039174; c=relaxed/simple;
	bh=LR1WQp/kCmKZUjba5Zi4LXQV+HsoeYWRq3J0BaWr5JA=;
	h=To:Subject:From:Message-Id:Date; b=awL/CDZXTvXZaKOZiC3sfEE6q12Wq2XmK+Xd2sPFTlwMak2x3PdK0mh/0EUO59UP8TaPBk0fsz1PZMBa3q36JYNMGS3KBgVWxXGAl5lZZs6/3Tf8EPm4yFCXIvBBX1hMxHA0DZDMigSJwKOPBbJ2R49PJULDcHsw1dH2cjxKYXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgCZuRgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgCZuRgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B034FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764039173;
	bh=LR1WQp/kCmKZUjba5Zi4LXQV+HsoeYWRq3J0BaWr5JA=;
	h=To:Subject:From:Date:From;
	b=hgCZuRgunGTeQJBXORxC3Kvcg3x7KgTh3CFrb+0Czi5gE+sQC2fXUnJSD9W3ViXxa
	 4nJQxBj0AqTP5joCX+IhXk/DDKMYJYySxUU+x7nfUv6o6YGcWDB4enJshoq3fSIwyz
	 FZVD0yQkqgtVXEqjXkpVDkRu7d4F4+bF19VT1rxOmUi8jV7NOmxPkXNvLtD2pfXUsl
	 CgB8PB1xqn47PuHlFzao2SXUzS0EIRYEOYRFftl9hSx0Pz1k69SSiUDcWwfPuEayOy
	 NDW1uD6duhd30IYx+ao/qtNKb2y2Fk81B2sDSl0vss08NZAXySriddToIaXbYPyM3j
	 rlglt+CWbH4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97947CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403917359.24354.15424206471144831896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308ba36c5fa2b0d71a96634e77a8770f6fedac6ca712adad7c7363997737e4dd
Date: Tue, 25 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764039173
