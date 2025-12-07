Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1627FB1F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765149174; cv=none; b=pU1FrwfRkc0xog4Xk7MlkCdWWh8rq++Mmc0pWcGKP55+0qd8T5JikwKb+3a2d/+QGw8CQY7yvbtRKFlf3U/yA8tKvefJ2vyqd4kQO3PXd74AWMeXcFq+HQsOwir+pFyxLlCohDmhJXhmZM0flZxonscc3Y9TVPX5OjAhufBZtoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765149174; c=relaxed/simple;
	bh=1D8NslOSclezcaY3uQDH3HyXVNXIa/W1v1RpHAxsTgY=;
	h=To:Subject:From:Message-Id:Date; b=r4nlSFpWYart8yWabaFeh35eMYK9WLzcFJWVSS6ixRW080ctGNtEXA/83+YI9dVAWk9ZkSMUzJu7btZRUjhDfBBWEZsEHslGmDGDgs+g+WT9v1fCF+oafLi7ZDMYMaxUuQ6ksYvCIwsBhuoDApTSTjYXeA0SMct21NiwIXX+y9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc468rbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc468rbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A927DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765149173;
	bh=1D8NslOSclezcaY3uQDH3HyXVNXIa/W1v1RpHAxsTgY=;
	h=To:Subject:From:Date:From;
	b=Gc468rboFr04pULOWKnRFykX+l1elpXyMLqXGSyeVgxTwJhAiCeCGtTgk00trE44v
	 6cfadjnFDE/aZQoG/mKQiuhCb/EoY/19Qk50Rqgt3CAR0PL3a3hvdTgcsXNekpOdyh
	 36HmtGYKfLtOtynQ2VdWLcR61XNYjDYW3u3PPnFjZQNGzZhhNa8Xtziu05kvRbI4fV
	 IFhtUByZrJVgBN5iScYfCHKRezuT3pVJ9vTKi/kYAlqORp3Bej7cWD0LGxCiv7isqn
	 WPgnhpFXWc9xdeThUj7INL2whbXPzY584Js79GA+z2xcxHezlfg0k9u8G6avJpy6PY
	 2LJ9UBtmyoGlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96305D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514917358.23528.5796926489851518182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0e4425013da7cec3a1338b22c42c41b89a0604a76432d2879d8758be1bbf9e
Date: Sun, 07 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765149173
