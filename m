Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBE3C30
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753057794; cv=none; b=fG6S7lyD3wbslJ6eC2vuW3l/45ipe5F+upSQLlpqUDLlmWsdL8pfmYju0rGohhBBtNKF0FE5w7swcOJsY9Ee8LtEUPOYXmxnmN1J4kUylcbPPe74A/5IBArSZZ6aU1W8HgjFklEnJr0Deftg2ixHRUQIp2m1SoJva8pwepivLsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753057794; c=relaxed/simple;
	bh=nvRYw/pFkYrbIbua/xEQTIqIyh033A3XzO7KrvZVDoc=;
	h=To:Subject:From:Message-Id:Date; b=NA8kVcBQ66O+sRy0xpSqJv0/uXdFLBieVkICs0U+P4QusUMOCgqtXnqu781pHV0qkABi58JeDmmSQFZQ8Ca2ClocyJhGkQ8TKfMvZ6ixIr4SDyrqkKfzxFk3nvTCgyGQ/T6VrKP6bSMfjLxrr7gIEKG0ezvKEfk43TAn3RiauvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZshIK7G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZshIK7G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26F3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753057793;
	bh=nvRYw/pFkYrbIbua/xEQTIqIyh033A3XzO7KrvZVDoc=;
	h=To:Subject:From:Date:From;
	b=ZshIK7G0sxg0Go0H49mLPjga0VcawZ5iercb7tioiSK7UGiFlX8mkzrxp5MhHCnhY
	 SfbKz4MwrTbquL2AEhYjZLIJfqpPob0ri7ZPoQzqotHgDzp0FvjLDNLIZ2uQJ2vp76
	 IaOZ5DgCN/JeFAdyRSJTgbk6sfyph0QXkfae3yJglZAxZ/pkY3qWvX2MHjo8lOOjns
	 mfts0+P9AHDk3TTkAnBJbbBqNDAEMfkdAfvz0kiyAcxGy4hx6+OKMi5WQzWMS52bK+
	 HpPOmiKrzDt5Mp6e+FyhaOBiVfCzo1Mkq0hHYHWgnTN/+DuRbspphFb3HTj/hiPgPY
	 mPzALsE4euYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800CC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305779358.5352.7165875223191182288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73440141d41b30f4fd2f83b6263f413215bdf63afaf969459396a7bf889ca1cf
Date: Mon, 21 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753057793
