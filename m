Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CDD78283
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719093743; cv=none; b=kqb3kWguElrw3NBHxSKhz/sD1mrVRqPXBvmCcskMRRI7nWZ2IS1zCa874o/cWtkCXDKIx6V9U3CCtLnFXiOkRG6RsH5rNdR7fQGpBCtsS5G5RknTi7HCEB2LKJ10JEu6E/motMeHMAj20/2PVBd5RikOR3fLP7ecdFkCW1RR904=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719093743; c=relaxed/simple;
	bh=xZO+85xSOWLM5OkK9omsqHFqJgTA5bbw6MXm4mj1Uzs=;
	h=To:Subject:From:Message-Id:Date; b=bbea5Btpw+ETuyX1l/4SqxLTQNg8pRKD9tj1zXG3uT71Ijscr2nSNniOkoL0MuiLL8LqWmsFYyLKVQiZCq605KU+OYKAYhoGye1ySqL1tNwQ18XsTipeHpaxcQJ7oE8ftLcs5Wj2zUWn29PQ1I+c0aEl1SICmUFvPzF4vbfuuVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmF32LGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmF32LGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE69C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719093743;
	bh=xZO+85xSOWLM5OkK9omsqHFqJgTA5bbw6MXm4mj1Uzs=;
	h=To:Subject:From:Date:From;
	b=nmF32LGFJP0ssp5ZUooj4RsRHXkZzHh7Bi6QuA4nCn6m2d46+/HVunvS9a5mwVZ8f
	 e5wh8gACyKsJW4Gwg03cXqOeofqlMDianoeEZ9iLhYipN/OF49yDp/+k75gx1ravx1
	 NcHYkNdy+h6XdXM3IHHJ/KR+CdiZkF8NysgBc+G1g5MRvySvVsKq2jNwCfbneHIvXl
	 y5+43ttx67Aju+n1THc8GZPXKBI30m1DtjacIc33B3hVT15unqX83cUOoe8C+gIBbW
	 yaOdfB2yihhqbhstxB2ktG61tKs6c3e01GmdG2B3P/VLSmNVdeYXElcx/OWHP8dq/9
	 uX4IH/lPx4yXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97DDC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909374279.21953.6062262395823888680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5644b833a862d6569b0911701d1e2a83f537ad2801bb8979d5a5b3802e6f09d3
Date: Sat, 22 Jun 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719093742
