Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBFD28DA6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705591097; cv=none; b=WI1LYvfxcbVTnIG2f47PJZ0SGdbD/mnPWUtQsKnuaS4Gb1ftRL0h3AZeeGqUWdZzqtJoX63NCB2e+7P5IFLPYspTkKEzTz5Hj/zJ98rvzHG892pVvehp73pAu918GN1EFDx8TQMyA0ToBfzH5SNLIvZq4FkP11NvFFhSIyYcrfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705591097; c=relaxed/simple;
	bh=c7yfXkeZCpdYQ8hhf/OanxQ9J/jTMcIbFhs+DHIuS5s=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=sR4TXfpfyIGV/oZJ/jgDRvp9/ZZ90D0ZwiOhNLbNJCjEV9Mbq+zRon62PztGNkVHCDzHjrO9FUfggWeh/eTtAOvaNtOkbK5LcDlV+6f9RgdeZUjW4vXbz8camvswoKtRlBWOvPX6sCO6V40H5mQfySBTO6UAR7JApsfy8DIZ42o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbLRvaqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbLRvaqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7839EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705591096;
	bh=c7yfXkeZCpdYQ8hhf/OanxQ9J/jTMcIbFhs+DHIuS5s=;
	h=To:Subject:From:Date:From;
	b=cbLRvaqjneqloBbf2FAi09xmsgf6NUmu9r/V4lXtwHtW05Fy8JXBxlWgpfDJFjpln
	 y+DQxy3Fh4Nv0VqBK1os8iG8BcNPO00ihlNDJCTxgKONnDZ2gygFf7yeQ6zg72LZW1
	 Ki1bBIHsXbtJK1au0z5AXwDxe/1uBTTtb6gtCCllJzFiQSDHyKIfgodlNmqFZyu1SG
	 gWzfzBYo0WYDBo3+4Fk06RzOC1uXBsBUQjOQDNJeEv0pCzwiJNN1ee5TvgClRUz1eW
	 3B3SSWp36AU5AozWGF6sFXophTtAZQ/scRXy03uUTcyA2pjf/CetcCsh3KOLtIDzpd
	 s+PVuhdJWAkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F577C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559109638.8730.16851681487700372525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e608f505ec22bdbb30d6943bc0d972b93c65b462f5eeae0b63567bc34ac6d856
Date: Thu, 18 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705591096
