Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F422579E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777099054; cv=none; b=sK1kSUu1DVwE4QWbUBrV9Z/rwHdu1p/9dCrNnhvgY0zOsd7w6HOlpi8qI8PsfssAgf4Eadw22kkTgUaju/ocMd0m7uX918gLhxE/lGf37YNawQdfrA+y3x97wHL6YSZSIzIlPMpGG+vha4MmDqH5CkGZsNBx1SAZoVP3dH9B1D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777099054; c=relaxed/simple;
	bh=M/Le/OG08iNuz9+tUr5GHjbYnjPiWpvH4QtJjR31EA4=;
	h=To:Subject:From:Message-Id:Date; b=PfmlJVVqgc9WnF2PCbH3wS/vXGGNlB15flGaxVvhVMV4NeQ+G1wcjxsXJNEPRTQuan0tdmJtDyB0+Is17wk9/Z6gEb6AM/fXTPHGl/vargFBwqHkqEEci5tnfjum/Ybc+232cMsw2m97vmiKkyj7ok5MeUptKCmzO3o+SDRSz3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSnz6p+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSnz6p+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C65C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777099053;
	bh=M/Le/OG08iNuz9+tUr5GHjbYnjPiWpvH4QtJjR31EA4=;
	h=To:Subject:From:Date:From;
	b=SSnz6p+/aK7OhPcn9t8dOst2i0QwEuAchdanfKDU25D0yP6xy841PWaX6vUpl3nw3
	 wii21UhPY04/4B1bl6Yes2YKiYlowpL1qW0/8LJOXvLSJEM5EjL5+JrVTTOdzTj0oJ
	 f8M3ytaHQHnpkVjnUEoxm+dFF3k3e7mrJzmAy+mE3p33BvU8zwUb1ipfj5wZJHAEnI
	 RJ9y0fRIEMQ34Ww90NEnokWlCi5Fc7oX3pAPEqQ3eZgkjShpQzptvBaVX3smgBueYM
	 QPuK9Zb22iqzGyZJD78niyN7KsDJh2cD8amB6hKgy3qZXuCKrUnUlkoye/yw+pQ/t0
	 tsC/DN9dy0YmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBEDFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709905368.20097.16396375044323104719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fde2b1ec1b5555b847180ca35062d9030f5567315bb778f725594ebaf8fa05
Date: Sat, 25 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777099053
