Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3582B311C21
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757495994; cv=none; b=XYViUmPecpjUe+vm+Rs5/68dDKlZhLDVjO1RC+NjNt2vqEq/5W/EuWnl54Za//rKxVRGulEmMWmoX46LSLS8cz3RP+YNtYVxahXu5K3tThDxWTNF+J4qpexw1Y9QinZpQVkar9cb5WIEHuyuKwJC5k3inaV54t4GSiPx1Sj/kHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757495994; c=relaxed/simple;
	bh=OpQ7goH9zeCKg3SaDVC/7alCg6mmJ7zY5fmDrPS/9ZU=;
	h=To:Subject:From:Message-Id:Date; b=WQmhGNFSeIAL7GweA6DJgjlu5zCEK9JAEKH/Ru40N/JQKtHUGPXIiHy4H1E+6UYDsosFVIb+3yycDSThHSFearb6wT0hJgcYK6lRNGeWIx8K7NCgWf6RykSqy22cOsR26BXYv6ECILnxblo9qzyiag+HhznbAyg0u1/f0ffz8OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6kAW9+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6kAW9+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE746C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757495993;
	bh=OpQ7goH9zeCKg3SaDVC/7alCg6mmJ7zY5fmDrPS/9ZU=;
	h=To:Subject:From:Date:From;
	b=A6kAW9+aoFPbJLcp3o5/8eDTzeOu9PotjGgW80bKZye2RDj5clkuGhhEuQ3oTmp2/
	 FZANLNCr0d+C3uJtWe8l5eE1C5mPhfQ9+j5e0kdOfhwSw9ZMgD0eFnH8HqaKpxeLtB
	 H9/58Tw91aZuE/dKmgEB0Z9oFHpTqOhKdcn9Zo2Nia0HbRQ1gDb960CjgCEU9MZLOb
	 rgQzONZOIkhQh+1ozQF/0nQDQuFzJI1MyyneeZO/HADqqRJnUuItHrapNbBIs1ULUT
	 zJdRiUaJxzw1Bojrrw4zelr0c5TA/3GN3X0LOuT/OQJzS7YgOuwtZI4Fj39qaXIW8I
	 UnA8+zkQu/9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C91CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749599361.27488.4238936526642969875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d081a4ff6df72bd65ef5527c73f276a61bafbcd5f25f6813fa4146ea31a61d
Date: Wed, 10 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757495993
