Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4CD1991B6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748298594; cv=none; b=YkgAaJeI9gwEE4NoFXiq2XZKaPVHBB4obLWpcbcdGtacFsLZGBaClaGNrnM32gvrKhQm0dzDH8Qr9qh9j/7jxmJpynC2p5NFGmCx6lr85b6p1tqzk3PZEWot3N64Tmu+ANtA05J3E0rI2cDnUrHBGuDgGuqe5wKcNs7JYdXxcRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748298594; c=relaxed/simple;
	bh=DIUtc/hslyrMSNP1ELtn21o1kN3suF2mNG+evxfI6rc=;
	h=To:Subject:From:Message-Id:Date; b=bY2g2g0pKOs8qB/4dTi+Yv6P9duT4Xs7fKkrwGbi7Z04zZR4fbQpKK3wCsVv7CJa1itc/P35ngo27tmcNkAdNRmTj6+AGEQn/GrNhqJWRHwrtZ+9nNt20svwQlmSKrJ0rhTNZdIsyBsKTeWMUZLdYjTvlTHK5JAyc2OqwHBosUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOXycW03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOXycW03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13AEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748298593;
	bh=DIUtc/hslyrMSNP1ELtn21o1kN3suF2mNG+evxfI6rc=;
	h=To:Subject:From:Date:From;
	b=EOXycW03NdmEMJlebHVxyQeMtLpko/Td8JQfGR1XiruD4E2KLMYCi2RG9J6e98C1q
	 CLaPO8LIXcc7xyHWN14t5P6AjZ7CGi0RQim0tXJIdJr6mxNVs42iYArObpedF05OyE
	 duiusyJ1UDm/nZcFdP9DWSdeNtQXNM0AzbUydywbnj0Bi8qTcIKaR4/hqfTShM9tLm
	 5BxGxwO/J16/KNj6k1zr5r8eVP+DzAFa+EfqfsWKw0BhMlyI7Yz5hZRbq8Ylx30sZo
	 +c4dER8DJKWnDUk8qvQxtL3GEiYjStGVH5h5GR2vnUyMAE3yptHBRGz/GyZDD8Jj6Z
	 7rM3aI0lDUcPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82DC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829859357.25876.5247596917607630709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4d2467d098dfa169c3023af59f4131f02d7fd32c0531731d42bfc8a42d3b99
Date: Mon, 26 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748298593
