Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5355029346F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789933834; cv=none; b=LgWmY/2SBfgMGAEFqpZeyc80WCCWFl3EwKEBQ6wEUWgd/U/dibSN+DeUW/enfTBWiUjJ7BcvP5PkPAFTDBmUyJK1hzOdsq8dmswS83Mfv2jCoEJ2moD25POBFksZG4zRZM7OwVFl5XCsbJyiX5TO0zXlMNi8fQ++WnEVyMX4zOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789933834; c=relaxed/simple;
	bh=3Z5UsTydQ+sZ2eDEIxsrXL9CCgWmm9BXk/79+my2YV0=;
	h=To:Subject:From:Message-Id:Date; b=RJ33la2gtBPIGLAyYlMq9Q3tSTJ4K2ZqsIjCXnYE9dG5SQ6JrNYcDjMad0a7tI/iuPKXAvOibyxGtcU9apP/9qxKvxpRPoBsq60MJNIHfBArpgmHPK11P2NWCKQZhjHYQRM6c42+7ts/WYGsvBOrSzFzDdMuhvgtszeE9FsDADc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnxhX66C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnxhX66C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B4CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789933833;
	bh=3Z5UsTydQ+sZ2eDEIxsrXL9CCgWmm9BXk/79+my2YV0=;
	h=To:Subject:From:Date:From;
	b=hnxhX66CcbNxDHUBo/IZEqWT6AkHymqHMh4cwnVRAvGzFicIHysoN9k1URA4fFCLE
	 yrwkGDu58jVLznVuNO7t/Omm9bvfn+paSaY7YFzFuxkVOnX0UymZNMjoNLKqdSWunS
	 x378PwauEij1g6df618WLqv5UeglVcx7PCDz28oq9IpJosYoVykqGk1k5M+YPCbi2L
	 e/1dII+IO4c1fyjWkYFxdJ5HIODrl0Y3EMnWO9+vYPfuZEhCACPSPuQa2TdwlcXlCj
	 9WoN666yMxYBBk2eSdoXDOW665WbokAI1zo7jVWPkKCw+h7BkUC5X70Ia5JxTetihv
	 SbSC6U/8bUDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD62C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993383368.16039.390003470455423893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6818963f8f7cb87851ff1b19d309c44754177ae23cca835077dc99e1e0802e24
Date: Sun, 20 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789933833
