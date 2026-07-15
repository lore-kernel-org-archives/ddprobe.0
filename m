Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8E42BC2D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784079514; cv=none; b=pKGYpnkGjqWEqjID2sCR9TW0e1MeeCc6YEt4Wy0m6F50/EnJ8acV+AImgdw0UwugxVVlqXZZdwYEap4gJASo8gOL9tfl03eK4kpJaPTYI0jWh5V+YkfxFKSnDNfB/SGHCATjkYvd/dAjmgGYKqLLRuoAviPFCzmf1civIFflV5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784079514; c=relaxed/simple;
	bh=UMDXi8F0gb3c52kCgvfKhT/MYK0BpF6rxTWKZ9zdMjU=;
	h=To:Subject:From:Message-Id:Date; b=hmFI1wupYkVZg71TgPr1JstITpKr5wa01P078FcWQG4Ad4akNNGW9NLrCdTi8ZAY6zurEP7NgbRCDFaJwSbLysiUmnSP76D+WpJ2G106whAs+P2SZJvYntzDtTzjwbNPRSXKO05hYIxdIH7djvzDGODcS5hPL7PMzKYAaurc5aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHnUOEgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHnUOEgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBDAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784079513;
	bh=UMDXi8F0gb3c52kCgvfKhT/MYK0BpF6rxTWKZ9zdMjU=;
	h=To:Subject:From:Date:From;
	b=vHnUOEgTu3xw5wQ+kyLvhkGAW0ZuAzJzwUIhjkzPF5z8cavLI6g7rREJRAKmB0Efo
	 t8Gi9xAchQCSPKtK6RlSwfOEuD2v1YHi8sZ7huC8vBDpnfk6s3/gC9x07cYOl3WKK8
	 wU9GMTqyXgcmHQ5DxYs5PMagEzyHh+N5UyiM/2O22GZxKHDdnMEE61AllPQj0iYO3r
	 dGQ1wUXhkUd5B7jYTlSpp5asXPvey/FBQX5V69Ha3XL4bku//DhfuQ4WfMJRRSrnoR
	 PgrLQ2hESbxCig7Q+AZImqzl/Gw4Y8IsAYUs3rmnGj7C6CCdi0AbWrqLznf+rGp3rg
	 TITosVALqqXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D7C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407951368.9440.3754012822668594603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f7052de2be1fbfad1afc5ddc4d118318d525df0f0eb7e851ff3466cc2e382
Date: Wed, 15 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784079513
