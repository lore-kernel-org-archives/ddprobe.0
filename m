Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306AE1BC3F
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741615734; cv=none; b=iU0xD19XpW/yfvCCeu8twtv6mWBtnlOcLNZIxNLty2Et9SIwInEhQ7+yc3ParDn50AyAK2b/7cz6VM80MEiGhlIfZvYZjPy5imWJumsEsT1VN2P8SD8Cbx7WB56PGiS4TqOsleSKwaT638fOGiadqePNqusrc7WmRvkxSe4oulc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741615734; c=relaxed/simple;
	bh=h+QY5pD06xCm3XmZoDk8C++xK0Bv5Z6EF4uP6LIej+s=;
	h=To:Subject:From:Message-Id:Date; b=Bok+ExWrA4uV/48wsBN0OcI6CVPQEumOIZyC5xZcbq94vfsQq8TZ9w7s11249BhhV2x+x8ALI76YeNBz9HEkZCco2hVKWRopftR0w5gH4upfpvMKvj/nrsjREkxLqJSgf8NfVxuZ0xcvcyXl4VgGVFjp6Psparaxd/YY7FoKXLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6dtxkC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6dtxkC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF17C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741615733;
	bh=h+QY5pD06xCm3XmZoDk8C++xK0Bv5Z6EF4uP6LIej+s=;
	h=To:Subject:From:Date:From;
	b=I6dtxkC+oKHFEfUr9C8vwR8/D+a74uX5lrXc83Ovikw3UcJL95umkF9JOXGqD20N+
	 58KyGQKJ0Hgoll+o9EbZZUvon5EDMALfJuUtluvLjMTjSqrkt0slU885sgZFa9wmMF
	 4H41M1d9ZmQEguEXuqq4NYTD0fuEP2+9mvrkHu1p9NGh6lkNu3ovpoR6xqJ7BQvKOz
	 93DeeJba6HkhKHrX0vJysh8Q/ya8JpWLwCwR58dh5/a1oDM3YRqZ8hHtCeLXGaLxdU
	 eyM0jSwVbz5ADf2z/7Od1Ak+0QSzOorSKIjumCIo7/Ol+XF4wr6A46UnlbwYw2E11x
	 gPZqkawI7Orrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFAC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161573361.10823.15443036101001904908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b911849061304827a1589efb37ee48fa4dc7d26e1e9cd99084baffb3bfc7a0
Date: Mon, 10 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741615733
