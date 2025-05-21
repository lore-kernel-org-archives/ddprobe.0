Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA621ADA0
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747853994; cv=none; b=ts7THG8ta9Q1XuiGUSK8rEeq8pNn5n0lI+sh8Ejq4q0DQ67Gk3ewkK1cn762eOQEoZb/IMZXNbW6jhZBimGId3ex3gJIGpWbmgZHVBlqG2pxwlWgRmgWgieluaiyOHJuDyT7EvVgrtWlOH5oyoKAUbGzVboHyXifobmsvDOgYXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747853994; c=relaxed/simple;
	bh=SC5AFQnBiaigP4o6B/qyu2nrEwpM7iqln3QB4cpmC0w=;
	h=To:Subject:From:Message-Id:Date; b=UX+u/9mX986Mj18a9HSaJwpxPX93M5XCTbc4tAgtcfFU8upAb6N08dCcl4NSs+i+8MYhxmpDN0QgNK2scAPNw2Yq9UY3MS/s0gN8CAbbmsKxa/q6Sn5VjOFrd3yFBdrgZ712d9g9niPW2fW8BwDBBs+OzNZzPj7Xn7dKImugLe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KphMGZaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KphMGZaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9738C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747853993;
	bh=SC5AFQnBiaigP4o6B/qyu2nrEwpM7iqln3QB4cpmC0w=;
	h=To:Subject:From:Date:From;
	b=KphMGZaTNNKbcW1jfxS5pQ59nR+DuV3bhxxF+BNRDQHCdF+TGUjbULEHKvdWy8hF0
	 SrWgHFF6wxKlEzPs5iqK1oNkUUHEyfCPl6qmROFs0VgvJC7zhewAwGJxi+6iUnXvGF
	 K4epAED8t00wBJQT5rfTke+RESwqJaz/nz/yGJWvaW53oC9G7ZG4yWxXMOMpylCJ3u
	 FMGUwUyfYjSZ/vhcU3qDmIGA965xIyl9XQ6EDpPFPackpNxWsEgDBBNb/p0kMK27dc
	 KAlCAcYhK9jbPEBcgSxZMSNJSXbH5Ug4t2LebuRfgjiysVRII/mkioYU52wibp5/UA
	 gIMada/bvN12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94251C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785399357.29305.11358940673568818884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3f3e99c84e134dbd2c51ad21e14f9e4e87086d45d4dd5c78ac7d93659914d9
Date: Wed, 21 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747853993
