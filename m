Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2284A1D516F
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759728594; cv=none; b=cog3PqGjRHwSLyrK3g+39YmhzXaBjFT43hqNMiYS9gkRqKx4L30zPJXYdKg5XdUn2wWXLdOzHM+Opaf36QbKAkyTXdQSpRo76FKLGckr/VNNGOLd1Cg7MkZrkEOeAHjJ7GL1huFjspR4LLfnwjd3B0LzGk31PSGO92DAMMut82M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759728594; c=relaxed/simple;
	bh=voK9Hz+ps3L6bOBxPsZYKCIdWukFdVqNl52A3VHQK+E=;
	h=To:Subject:From:Message-Id:Date; b=LDocphlsJBm/l6ZiPvpHv21nOhjRBoHtLpsonLNo/BxTOxBYfrpE4elJadZM06Qsuu60kjg6scZfbwnva+AwOwXnH6VVGxMcgYjrFjhZWMXhqmokNwV14SquJJj2vzGu5CuPDXFP+39Rc3s33jvbSxA5FqDmdEEndYCB64rdR+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+x4VL+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+x4VL+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEBFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759728593;
	bh=voK9Hz+ps3L6bOBxPsZYKCIdWukFdVqNl52A3VHQK+E=;
	h=To:Subject:From:Date:From;
	b=N+x4VL+ce34QYfIs1Ss02incLoe3qOj2k4cGHOaf0rWknjzXP5SY2rHV09ujyKupe
	 YMZFr8zQNAFSW7uCgofr9xgF+F+U9WSbVnl4rJ1XnB04LGc9gaBwgQHxZWWIWMix4G
	 1D4qZDunA4c1HYvk9KORJ6WjsDUDS8eMI8HKxaOHBiEkBWwe2B5hwy2ub1MV3r19fB
	 vG72hyrQ36D6bs+Ppq/P6fdVLc5CZIS2f5Gr2PdC0ylEQI6/aJX3n+iBQpn4TdllEN
	 ilUpHYjfq+TiBJnR0tEFCbbzsVVunAdoYbJCYpC4yQZpRHFcHY0kx4kXa5mY6usMLc
	 dwzDh+Z/KEn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC34CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972859361.15601.14493530777843277865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059f784b94a4780127b8c70fbfd860152d124e1458f22de21ce9a5e2d6414b19
Date: Mon, 06 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759728593
