Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395A61F461A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748459394; cv=none; b=OZziqSVoUw+43lbugabSupfNEbKPZ+eHG+1UdNfaRmvGEGZxXBX7tFkejBONgkxEsUHk+VLa65w/pjHjzTiiA2n+/u2SzORC1P7Ym4npu2T/Jfn2bQgmBESkl3VvNy5m8JILPJfXoa5n2Mx94g+yRW2VK8WX8Wlfva6JKXEbDs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748459394; c=relaxed/simple;
	bh=soMJ83kG70/tU2AFcIj0gQkRtjyBXt21US4qBsAqoGc=;
	h=To:Subject:From:Message-Id:Date; b=mKbw8t9uao3aQiHTl6FZqZZoA7yr9eYW2y8a0Kn9As3Pvm3s/g2MJ0FozdIJHStvQ6eGEVb8u7Nfj/4fQj9K+XDiyOlAjsxZzB/0BY6eG2xTGshpg0SCPpjOpDt98SeNX5BDvTED68dH+eN9sgU8TCKA9KJAx7S3LGcQUR6Ita4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQxIUpAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQxIUpAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748459393;
	bh=soMJ83kG70/tU2AFcIj0gQkRtjyBXt21US4qBsAqoGc=;
	h=To:Subject:From:Date:From;
	b=QQxIUpAoDr2i/lKHdRapYHNxK53EnEL+G//uuuTzBhag4GvQczT5hU5H/hq5Ahu9g
	 u5jb6c74wGNaPLLHY6sf/Ncx4sJ73TVdfkWPRWZl11imq7CdolRiDpTSxmcQVt6PcD
	 z8vsGndrG6AR+t1wRXovCgLQSP2qu0s+WTMSVqaLOf9pFy7jhjyX9bbuadsAo74EwR
	 KFzFjKb8P+WJ4w7LYHUd7E0q0LTN4e/foYGkHImRRihk+6KGJIw6G5aRWQCZaRC8Ky
	 MMGz4uM29V03Ts7/FX1e8rvCiQ/iab9EAyP7pPRMqEjxCNFOmMU3zw0APkU55aLw+0
	 RwT+f+j/9RiBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE4C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845939357.5970.17858463886313016329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d24c9c8d23df7649cde015b01501444bd449dddc7c2e324aff93ddf19feda24
Date: Wed, 28 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748459393
