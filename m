Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD016E882
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722407154; cv=none; b=NHVPvF1QKHqdZGj+B6zLi6E1m+uu0rElIC8pa7sHcpcqSjWTOz+5TSolKwiTLs7XkguTYz0qI65g9fkZE4U+JiQpRNffH4BdLmot3OYKQsM5eo7TIB6Y+D9DVDKGchtxn70ofEEDusME9Co31Dz3kNkbAkUDj7XfVZaRfcRkUu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722407154; c=relaxed/simple;
	bh=D0Fm8aUqq91qDQzxkFX0DEjeuriTUk9myg8SzQFD6GE=;
	h=To:Subject:From:Message-Id:Date; b=t32KDCH/uvAvFiVTILsypcdbmHLrgbWB00Y8CCmT0mxaJHl9g5XvDZrHNM3jAQgcy9H+ANrXUCe31veCkh2CTAf6BB8Kv441g1J1Xl/ua7m50cbcj07VQ/K4grWE7tmEvpSiYAoKbIoJVNJj30E02McrjtI4fCKmdDut/0IyUjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leveKNX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leveKNX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD4AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722407153;
	bh=D0Fm8aUqq91qDQzxkFX0DEjeuriTUk9myg8SzQFD6GE=;
	h=To:Subject:From:Date:From;
	b=leveKNX2FRoPB1aNwUzqAXrz7pg7q6vKllZxWLLMroaQfBNoq595LXes3kiaD7+Mk
	 Yq8Q8en3ozix3jkUJPOOafC7L9gDFpNeopNN3FxRl22ohP2JonLl1hbzduwb7l1/Gy
	 lT0LEsVC+/2BqLQCLCqoRGFOuzx3e7IKdIcv/rgxt+JkEnu/lZTrXTnpwPkh20YJuo
	 hmd59j9bqPbu4IETUGJwNOq8nr8OOh6KeHQRqP55GS/hBml5IU62SRGN+Hi9X+79lk
	 DhVGtPPtigk538ObM/uSBbsKUFH5043idswnccPSe1oE6aOeaLQAEOwL5G5ncVA8BE
	 fVVk+4xxtHWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C23C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240715361.19942.1787912827888202337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772e675e71a69306037db3766776f84206994593d056fe9c4b3268823deb232d
Date: Wed, 31 Jul 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722407153
