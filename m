Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C5B441F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718650703; cv=none; b=APdtILGp4F17Qxuw+KxMPSq1JZSS4TvHB1YZwj/QWj5JdvrvXQ+Fm9MFBvNOlYxDDNyXxy0G7Pj52jDXKv1XLtQUWt/niSfNFTfhsohIDfV3e2bgqDb/V1KRQuEEAqZrVn7ibku4YR9EOR1wwyfPLb9Hf8jF2kS0ZMTU1seZA0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718650703; c=relaxed/simple;
	bh=cg9Qnq5OX7ayLEr6nR6NaVQ3oTrHpsO8h7u4iEyFTKI=;
	h=To:Subject:From:Message-Id:Date; b=ELfgIn5ZGwZGqMwTiyoywxK5V6D7QUx/FKbEClkQeJjN9j075JqflrBe9H2V2PqP2H8KHc2ptqpu/eRC4Odq7iqVUX2oPhVrzfYVwYEiJ2x1oL0ASw/V+GBS/Oafr9UL+dVz4rdTo72Wy31NnwlsxirByHiQwem1D4ocYMSfeYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5JO0g7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5JO0g7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D831AC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718650702;
	bh=cg9Qnq5OX7ayLEr6nR6NaVQ3oTrHpsO8h7u4iEyFTKI=;
	h=To:Subject:From:Date:From;
	b=q5JO0g7HDYkCS49SJj5gxF17jdBvohvQ1CEjgRxqhd4+0F3YlyGqHi3s2W05y/jDc
	 giddu1Gb+BCe5pOohiJCzGOZ1ad3MMd3djCkO0A+b9r5jmHmgtqT9fYY0amImyGyQW
	 oqFfBnlxcfoBPdVDPJYiUpUnQ3NiqcV5qY1N54nZgQB/qG5Ro4hmk1KhvRaVua+N+v
	 5tKPiIva6WrNAOPHjrVaO26Zm6GPgdouhfgpYvcGE5343gAquhUO5IeiSpW1jObqEK
	 TWc+Rhg+M06XirlR9uk/4UaEhefT+GS9kgG+Wvl79Xddg7qt8BFarROLfl/WanT8Ax
	 JHIbOINmZiWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73DDC2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865070280.23269.1023776365108911444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2a55727a54ef59cceacc045ab44c1868f8d86e4673c27449c0e07c67053376
Date: Mon, 17 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718650702
