Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205B18F58
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424794; cv=none; b=O8VU7OShLWQYgVd21hWK3h1QBmXkbPgYjKA0s1WftU8A2478oMQdcLkny+9hWIGvdtLfqwBMTJVErWn1403mz9p0oGbw17R1BZBkw2mLQ1Tdng8hO1DE5IJt5BjvuDu2Zx9k/ZRHp4cPqs9Xbumv9WmzW+kp50zUyATdtJeq5pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424794; c=relaxed/simple;
	bh=lC2kWhMxgcp4gZTtTiop6nb087jCpcNux4uGwyrLZX4=;
	h=To:Subject:From:Message-Id:Date; b=dQQIevW8jqbvc3HKVVy1I0KBf6wKZJ4g6b5r8HT+CM2b67vXgrFr7iskYY7n7AHyXhr/oalnn574AkyUC+AAGL4VKshurhw+IUyrxpp40qdcLxZyIS0KMaEXHwCx+Q30AOR6c2Q0Rr61gkHfTc+SAf/ZEC+d9PlUlYRT5u3Is+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuO3btap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuO3btap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B38C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752424793;
	bh=lC2kWhMxgcp4gZTtTiop6nb087jCpcNux4uGwyrLZX4=;
	h=To:Subject:From:Date:From;
	b=nuO3btapvvqWnww1cdXXTkfhYZYppuhP53iD2yMye8/psr19eEzuOW1xLU6ygxOqW
	 uj0yiifODwcJXw6DdfIF/djgKC0x9O6E5KoLMnEOFuQQGECGgdysWl/g+5nvkG9ZjU
	 wnCM4PEuphOCDCoOOuYtZvbP0rQM8rUP0mb2lZWuEVSybPawDl3rhejK+DFEr1V4mA
	 r/9dCyee8g+9EYLMoGQi6OcLOriei0varH9BieXqV79v+Q8K2VbmuUSsfWnJv13jUq
	 w9ZUeyTUK258G0uiKFBG7g7/A+qa5dfEUDDeyKdNJ3w8nDWkA/g7Lgq3rDbx7EPYRm
	 wXtHUrEqJUF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94EC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242479357.14560.3053743962640198365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f040e0418d1a18a46d3a65139e97ba68d31236f0a8443159f0983f59a1d5cf0
Date: Sun, 13 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752424793
