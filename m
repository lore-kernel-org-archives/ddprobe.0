Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4413B15359A
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714666343; cv=none; b=myYKPdcZIHNuZkskWfk8vTlQmFrqYo6mVWnWYRaTqYYVo1Nqzp5Orke9goI4/6fhnD3mXaEAGyowovGGm5uTPHSRLF1oQVllqqXJScw3S0N+MuOAKgWcrsNEzcSYjhfO259q2DOGtGiSZIL/47Q6NDw3R/Z8DDfWKaUGZw43BDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714666343; c=relaxed/simple;
	bh=LshOgGWCS56cvOUDiW5ASnBmhYGYKFMPoAqGX5o6JJk=;
	h=To:Subject:From:Message-Id:Date; b=MQngAvGP4qDytSPBkPsZevgh9CCplpykp+GeYeUYUffEtFkbFh0tFSJki/JUYrSYt1B6WXbHqqY4cXSF3NCkbJ0d9LTlceUCojSI4aQeYHi5cEy4cJR9Yu5SAC2g02XEGMR2xEk1vS4TWPJ3pgp/dsiBuc6tvd7fSxnEUGWYNmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkwNQCaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkwNQCaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC46EC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714666342;
	bh=LshOgGWCS56cvOUDiW5ASnBmhYGYKFMPoAqGX5o6JJk=;
	h=To:Subject:From:Date:From;
	b=GkwNQCaGUtvjTRhk9gJ3mbE5WWice+VQxXxfw0BLiM1KWTg6Hnx2rkXRfd+nTnJl0
	 wo9+dZnPxjlysDEjuCp+5/fgjbJYGC7bzrtZWYaXKjtq8d0u6vLirYqB8XEJ9Zj72q
	 2bPcgHC+xZHRKmzYtSDCAZIKMPNtkr4fFjUgxjDCGrrVgik0Dro5CY6QCkYgQ0cAWE
	 fpsLDzKhO8pnj/vUqxilXrTLTt4ROuVEuecUIHdqUybQu+Y24hAbTdKmxMg8A4K33c
	 tHCoC8sU9b+AeCE02M/G6Gogffl6dgFXvNTwcxycK1dw9eXsmhWjJKJ87mUiLApbPO
	 ywL03cfwbhQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1C0C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466634275.31726.15516666904652675115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbbaa34285f24aa12c7a40c0342a6073d1d4db1e8ecd18659f2ace77dac6b7a
Date: Thu, 02 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714666342
