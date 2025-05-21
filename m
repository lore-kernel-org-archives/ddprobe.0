Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410A523371E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747816794; cv=none; b=P8fpLKeHXgJ9Hp79rTnfEB1Q2Hq7eNnWERT/bWesQTBRgpCYcDi2c0ClzwUNvo6kjALwyJivtZbBDZ6a81dJBg++X9RwAS8S9Q+NdTRslte3dW5zTomIUU+3UYfAf1zNvH20AlUvGUQ6AVeVyxjNrXx1rW1dzUAjgHSR1pHlrKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747816794; c=relaxed/simple;
	bh=7vEVf9o2vKAtHzXZgRgfwcm1i9w9PdqQ/pNwb6WvFF8=;
	h=To:Subject:From:Message-Id:Date; b=delSmTk+1klAxhvZA2h/Zf1OC8GpW7+V8lFsI9SlxRRupeRxm+b7L2Y9+hQ7og4ZDENeBh4IoHg8oG8nkrTkqZGdgZDrSTEfP7IVewVmvAEwieC3udjyLh8afeOPN8g445SSg54DqU5z984y5AQwrI23fFeeedOv8Sw6UC8Ik5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0BRPQJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0BRPQJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747816793;
	bh=7vEVf9o2vKAtHzXZgRgfwcm1i9w9PdqQ/pNwb6WvFF8=;
	h=To:Subject:From:Date:From;
	b=i0BRPQJFh+3aUFjGRjHBKCWncU1iRMxFCq+/yqywr8FNfIiONewwLoHI588/1stTy
	 NRc5v+f6xfxKBiVxE56BIXHjCClNCGaHiKwemvru8IHPWBqWh9w4vZzGTZ9qEcO4PI
	 cC6Aq7m5I9EPeNTbHvO9oaLFgE7uNROhF+ErS/r9YojDiOQ4TWilTd5J31NFgkdmXK
	 uKtpuZeac9O7mlo9Ej7jjGgSWnuJOY0U2bLg9sB3eRv1bFqMjc4sQDXSgHVAdPSE0g
	 RNZ5dhrqAWyT5J5OFNogDKiyvE+3WE4EK9oTPYD6fKDDGYByIEVH1LXxzKqpPQ2Y3f
	 gfj6gZ2WNYNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8AC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781679358.13465.17399106966701068416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1815ad5016758ed7f3bd637178670383ae59d139b4601ac1d9c588994bef3e1d
Date: Wed, 21 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747816793
