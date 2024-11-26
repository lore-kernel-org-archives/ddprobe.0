Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDDA1BE223
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732613754; cv=none; b=R+C6hCtwttP4mKUjeCeTPjP9j5MsUjOjyQdWMDUhQ08Fw7cuRG+pFSnJz31/t5dReSO8qqhiX/HemwolM5Ww46OIaDG8P2ByAsWFGM08Wsl/S+DLTP52tfWnIVQaEejLgdgU5u5C6JRYPSBEFi68Cln3gDAsyyM3bmdhD5tykFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732613754; c=relaxed/simple;
	bh=waEtD9HAOam872rRs8lHfOJf56tK8AsK1nogcnFk5PQ=;
	h=To:Subject:From:Message-Id:Date; b=OIW5fGP5sRfTsw6dj6E1jbKVgYAvG206YUVhGRgqudhGWBRb2X2D1eY8YylsdvBzd+15JPfrHaiuRmnvF2zRG0UqB35MDgZ1m1nRq1w38rhALg3vuVT/Uh8MF5YkEFpsJOZOKs8qyZJ+FBqnsjJJJRjkxaHkaDiiS+qjETMtHIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMEJZZVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMEJZZVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE5C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732613753;
	bh=waEtD9HAOam872rRs8lHfOJf56tK8AsK1nogcnFk5PQ=;
	h=To:Subject:From:Date:From;
	b=lMEJZZVlsqEq8r3OEWxhIdlR5fCDtwTmIsARS66kWCAr2lJ97VIBzG3SdgWvgLnry
	 FvLHgjmO37z0vgKeHo0J2RoFChk/i7AZOahKN2e/S1EzrTIVdZdQaF3wjGuKDfak73
	 VWtwm7kR+9kXpqJIG9j5GVWVuoSGB0aMMnQpPWeMd90Vxj+sRJ0IC2Ef2Ii5EENY2D
	 j2eyePVwneQRyawEYmJxVAaxhcRa34b0/LfTy9MuvzJ7Xq/8L3YTnjM5UYuq4fHZqQ
	 T9ZRHoUfFGQYHe1W9/R9GYHbHokr3UeZ2ZOemwQ9eDWkKzigIfHjAqmUwnHl/0NZ3r
	 7Ra+b7g4w37mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93410D3B7CC
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261375359.29669.3768675160305069173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb71dc7ee28b8056603e2f1effcc8605cc4be5dffc11e198e2b4540b7ac3aa1a
Date: Tue, 26 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732613753
